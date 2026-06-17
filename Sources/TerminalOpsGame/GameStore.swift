import Foundation
import SwiftUI

@MainActor
final class GameStore: ObservableObject {
    @Published var phase: GamePhase = .language
    @Published var profile: PlayerProfile = .empty
    @Published var missions: [Mission] = GameData.missions
    @Published var achievements: [Achievement] = GameData.achievements
    @Published var terminalLines: [TerminalLine] = []
    @Published var currentInput: String = ""
    @Published var lastSafeLabCommand: String = ""
    @Published var matrixRainEnabled: Bool = true
    @Published var activeDesktopApp: DesktopApp = .mail
    @Published var currentMissionID: String = ""
    @Published var selectedMailID: String? = nil
    @Published var receivedMissionMailIDs: [String] = []
    @Published var readMailIDs: [String] = []
    @Published var archivedMailIDs: [String] = []
    @Published var downloadedMailAttachmentIDs: [String] = []
    @Published var openedMailLinkIDs: [String] = []
    @Published var documentArchive: [String] = []
    @Published var downloadedFiles: [String] = []
    @Published var installedApps: [String] = []
    @Published var runningApps: [String] = []
    @Published var terminalWindows: Int = 1
    @Published var virtualMobileRunning: Bool = false
    @Published var missionStartedAt: Date? = nil
    @Published var wrongCommandCount: Int = 0
    @Published var virusPenalty: Int = 0
    @Published var desktopPopups: [String] = []
    @Published var lastMissionReport: MissionScoreReport? = nil
    @Published var virtualKeyboardVisible: Bool = false
    @Published var virtualDockHidden: Bool = false

    private let profileService = ICloudProfileService()
    private var iCloudObserver: NSObjectProtocol?
    private var isApplyingCloudSnapshot = false
    private let profileKey = "terminalOps.profile.v1"
    private let missionsKey = "terminalOps.missions.v20"
    private let achievementsKey = "terminalOps.achievements.v20"
    private let mailEngineKey = "terminalOps.mailEngine.v25"

    var language: AppLanguage { profile.language }

    func bootstrap() async {
        loadLocalState()
        let snapshot = profileService.startSync()
        profile.iCloudStatus = snapshot.statusText

        if profile.alias == "PLAYER-LOCAL" {
            let suffix = String(profile.id.prefix(4)).uppercased()
            profile.alias = snapshot.isAvailable ? "ICLOUD-\(suffix)" : "LOCAL-\(suffix)"
        }

        setupICloudObserverIfNeeded()
        let didPullCloud = mergeICloudProgressIfBetter(source: "startup")
        if didPullCloud == false {
            pushCurrentStateToICloud()
        }
        saveLocalOnly()
    }

    func chooseLanguage(_ language: AppLanguage) {
        profile.language = language
        withAnimation(.easeInOut(duration: 0.18)) {
            phase = .side
        }
        saveLocalState()
    }

    func isSideUnlocked(_ side: PlayerSide) -> Bool {
        profile.level >= side.unlockLevel
    }

    func chooseSide(_ side: PlayerSide) {
        guard isSideUnlocked(side) else {
            return
        }
        profile.side = side
        withAnimation(.easeInOut(duration: 0.18)) {
            phase = .intro
        }
        saveLocalState()
    }

    func finishIntro() {
        phase = .desktop
        terminalLines.removeAll()
        startPlayableCampaignFromSelectedSide()
        append("TERMINAL OPS // \(profile.mode.rawValue.uppercased())", .system)
        append("PLAYER: \(profile.alias) | SIDE: \(profile.side?.displayName ?? "none") | iCloud: \(profile.iCloudStatus)", .system)
        append(language.text(.safeLab), .warning)
        if let side = profile.side, side == .redTeam || side == .blackTeam {
            append(language == .cs
                   ? "ROLE GUARD: tahle strana běží pouze jako CTF/sandbox. Cybercrime scénáře jsou fiktivní a zamčené na lab cíle."
                   : "ROLE GUARD: this side runs only as CTF/sandbox. Cybercrime scenarios are fictional and locked to lab targets.", .warning)
        }
        append("v2.4 MACBOOK PRO SIM — landscape only, vysouvací/skrývací virtuální klávesnice, Touch Bar, iMouse/touchpad, dock auto-hide, Finder/Mail/Terminal/Safari/Nastavení.", .warning)
        append(language.text(.terminalReady), .success)
        append("START: klikni na Mail nebo piš příkazy v Terminalu. Klávesnici ovládáš přes spodní handle nebo příkazy keyboard show / keyboard hide. Story Lines: Apple menu → Uspat.", .success)
    }



    func openDesktopApp(_ app: DesktopApp) {
        activeDesktopApp = app
        if app == .mail {
            openCurrentMissionMail()
        }
        if app == .terminal && terminalLines.isEmpty {
            append("TERMINAL OPS // VIRTUAL LAB", .system)
            append("Napiš mission pro aktuální úkol, nebo help pro výpis příkazů.", .success)
        }
        if app == .storyLines {
            append("GUI OPEN → Story Lines přes Apple → Uspat. Zamčené linie jsou nečitelné do splnění levelu.", .system)
        }
    }

    func currentMissionMailItem() -> VirtualMailItem? {
        guard let mission = currentMission() else { return nil }
        deliverMissionMail(mission.id, reason: "current mission")
        return missionMailItem(for: mission)
    }

    private func missionMailItem(for mission: Mission) -> VirtualMailItem {
        let mailID = "mail-\(mission.id)"
        let command = mission.allowedCommands.first { !$0.lowercased().hasPrefix("complete ") } ?? "mission"
        let archived = archivedMailIDs.contains(mailID) || documentArchive.contains("mail/\(mission.id).eml")
        return VirtualMailItem(
            id: mailID,
            missionID: mission.id,
            sender: mailSender(for: mission),
            subject: "[\(storyLineName(for: mission))] \(chapterTitle(for: mission)) — \(mission.title(language))",
            body: renderMailBody(for: mission, firstCommand: command),
            attachmentHint: mailAttachments(for: mission).map { $0.fileName }.joined(separator: ", "),
            isRead: readMailIDs.contains(mailID) || selectedMailID == mailID,
            isArchived: archived
        )
    }

    func mailInboxItems() -> [VirtualMailItem] {
        if let mission = currentMission() { deliverMissionMail(mission.id, reason: "inbox refresh") }
        let visibleIDs = receivedMissionMailIDs
        let delivered = missions
            .filter { visibleIDs.contains($0.id) }
            .sorted { missionOrderIndex($0.id) < missionOrderIndex($1.id) }
            .map { missionMailItem(for: $0) }
        return delivered
    }

    func unreadMailCount() -> Int {
        mailInboxItems().filter { !$0.isRead }.count
    }

    func openCurrentMissionMail() {
        guard let mission = currentMission() else { return }
        deliverMissionMail(mission.id, reason: "open current")
        let mailID = "mail-\(mission.id)"
        selectedMailID = mailID
        markMailRead(mailID)
        if missionStartedAt == nil {
            missionStartedAt = Date()
            wrongCommandCount = 0
            virusPenalty = 0
            desktopPopups.removeAll()
            lastMissionReport = nil
        }
    }

    func openMissionMail(id: String) {
        let cleaned = id.replacingOccurrences(of: "mail-", with: "")
        guard let mission = missions.first(where: { $0.id == cleaned || "mail-\($0.id)" == id }) else {
            append("MAIL: zpráva nenalezena: \(id)", .warning)
            return
        }
        guard receivedMissionMailIDs.contains(mission.id) else {
            append("MAIL LOCKED: tenhle úkol ještě nebyl doručen. Dokonči předchozí mail/misi.", .warning)
            return
        }
        currentMissionID = mission.id
        selectedMailID = "mail-\(mission.id)"
        markMailRead("mail-\(mission.id)")
        activeDesktopApp = .mail
        append("MAIL OPENED → \(missionMailItem(for: mission).subject)", .success)
        append(renderMailBody(for: mission, firstCommand: mission.allowedCommands.first ?? "mission"), .output)
    }

    func archiveCurrentMailToDocuments() {
        guard let mail = currentMissionMailItem() else { return }
        let path = "mail/\(mail.missionID).eml"
        if !documentArchive.contains(path) { documentArchive.append(path) }
        if !archivedMailIDs.contains(mail.id) { archivedMailIDs.append(mail.id) }
        append("MAIL ARCHIVED → Documents/\(path)", .success)
        saveLocalState()
    }

    private func markMailRead(_ mailID: String) {
        if !readMailIDs.contains(mailID) { readMailIDs.append(mailID) }
        saveLocalState()
    }

    // MARK: - Virtual Mail / Mission Delivery Engine

    private func deliverMissionMail(_ missionID: String, reason: String) {
        guard receivedMissionMailIDs.contains(missionID) == false else { return }
        receivedMissionMailIDs.append(missionID)
        selectedMailID = selectedMailID ?? "mail-\(missionID)"
        desktopPopups.append("MAIL: Nový úkol doručen → \(missionID)")
        saveLocalState()
    }

    private func missionOrderIndex(_ id: String) -> Int {
        GameData.missions.firstIndex(where: { $0.id == id }) ?? Int.max
    }

    private func missionNumber(_ mission: Mission) -> Int {
        let digits = mission.id.split(separator: "-").last.flatMap { Int($0) } ?? 0
        return digits
    }

    private func chapterNumber(for mission: Mission) -> Int {
        min(8, max(1, (missionNumber(mission) / 5) + 1))
    }

    private func chapterTitle(for mission: Mission) -> String {
        let n = chapterNumber(for: mission)
        let blue = ["Škola hard mode", "OmniCore Day 1", "Data Loss", "Cenzurní engine", "Veřejný zájem", "Incident Response", "Real Mac Defender", "Poslední linie"]
        let red = ["Homelab", "Unix/Linux Ops", "OSINT cesta", "Proof-only lab", "GovSim průšvih", "Právní debriefing", "CT obrana", "Historické případy"]
        let generic = ["Základy", "Nástroje", "Analýza", "Důkaz", "Riziko", "Reakce", "Audit", "Finále"]
        if mission.id.hasPrefix("blue-story-") { return blue[n - 1] }
        if mission.id.hasPrefix("red-story-") { return red[n - 1] }
        return generic[n - 1]
    }

    private func storyLineName(for mission: Mission) -> String {
        if mission.id.hasPrefix("blue-story-") { return "Blue Team cybersec" }
        if mission.id.hasPrefix("red-story-") { return "Red Team cybercrime sandbox" }
        if mission.id.hasPrefix("grey-story-") { return "Grey Team" }
        if mission.id.hasPrefix("white-story-") { return "White Team" }
        if mission.id.hasPrefix("black-story-") { return "Black Team sandbox" }
        return mission.category.rawValue
    }

    private func mailSender(for mission: Mission) -> String {
        if mission.id.hasPrefix("blue-story-") { return "mission-control@omnicore.lab" }
        if mission.id.hasPrefix("red-story-") { return "mentor@homelab.local" }
        if mission.id.hasPrefix("grey-story-") { return "audit-bridge@simnet.training" }
        if mission.id.hasPrefix("white-story-") { return "ethics-office@simnet.training" }
        if mission.id.hasPrefix("black-story-") { return "shadow-sandbox@simnet.training" }
        return "mission-control@lab.local"
    }

    private func mailAttachments(for mission: Mission) -> [VirtualMailAttachment] {
        let base = mission.id
        var items = [
            VirtualMailAttachment(id: "att-\(base)-brief", fileName: "mission_brief_\(base).md", virtualURL: "simnet://mail/\(base)/brief", targetPath: "Downloads/Mail/\(base)/mission_brief.md", kind: "brief"),
            VirtualMailAttachment(id: "att-\(base)-notes", fileName: "training_notes_\(base).txt", virtualURL: "simnet://mail/\(base)/notes", targetPath: "Downloads/Mail/\(base)/training_notes.txt", kind: "notes")
        ]
        let lower = mission.objectiveCS.lowercased() + " " + mission.allowedCommands.joined(separator: " ").lowercased()
        if lower.contains("evidence") || lower.contains("důkaz") || lower.contains("audit") || lower.contains("report") {
            items.append(VirtualMailAttachment(id: "att-\(base)-evidence", fileName: "evidence_template_\(base).json", virtualURL: "simnet://mail/\(base)/evidence-template", targetPath: "Evidence/Templates/\(base).json", kind: "evidence"))
        }
        if lower.contains("vpn") {
            items.append(VirtualMailAttachment(id: "att-\(base)-vpn", fileName: "vpn_profile_\(base).mobileconfig", virtualURL: "simnet://mail/\(base)/vpn-profile", targetPath: "Downloads/Mail/\(base)/vpn_profile.mobileconfig", kind: "vpn-profile"))
        }
        return items
    }

    private func mailLinks(for mission: Mission) -> [VirtualMailLink] {
        var links = [
            VirtualMailLink(id: "lnk-\(mission.id)-brief", title: "Brief v SimNet Academy", virtualURL: "https://academy.simnet.training/missions/\(mission.id)", opensIn: .safari, downloadAppID: nil),
            VirtualMailLink(id: "lnk-\(mission.id)-manual", title: "Manuál a postup", virtualURL: "simnet://docs/manuals/mission-\(mission.id).md", opensIn: .documents, downloadAppID: nil)
        ]
        let joined = mission.allowedCommands.joined(separator: " ").lowercased()
        if joined.contains("vpn") { links.append(VirtualMailLink(id: "lnk-\(mission.id)-labvpn", title: "Stáhnout LabVPN", virtualURL: "simnet://apps/lab-vpn", opensIn: .safari, downloadAppID: "lab-vpn")) }
        if joined.contains("tor") { links.append(VirtualMailLink(id: "lnk-\(mission.id)-tor", title: "Stáhnout Tor Browser Sim", virtualURL: "simnet://apps/tor-browser", opensIn: .safari, downloadAppID: "tor-browser")) }
        if joined.contains("cloudflare") || joined.contains("cloudflared") { links.append(VirtualMailLink(id: "lnk-\(mission.id)-cloudflared", title: "Stáhnout cloudflared", virtualURL: "simnet://apps/cloudflared", opensIn: .safari, downloadAppID: "cloudflared")) }
        return links
    }

    private func currentMailAttachments() -> [VirtualMailAttachment] {
        guard let mission = currentMission() else { return [] }
        return mailAttachments(for: mission)
    }

    private func currentMailLinks() -> [VirtualMailLink] {
        guard let mission = currentMission() else { return [] }
        return mailLinks(for: mission)
    }

    private func listMailAttachments() {
        let attachments = currentMailAttachments()
        if attachments.isEmpty { append("MAIL: aktuální zpráva nemá přílohy.", .output); return }
        for item in attachments { append("ATTACHMENT → \(item.id) | \(item.fileName) | \(item.virtualURL)", .output) }
    }

    private func downloadMailAttachment(_ attachmentID: String?) {
        let attachments = currentMailAttachments()
        guard let selected = attachmentID.flatMap({ id in attachments.first { $0.id == id || $0.fileName.lowercased() == id.lowercased() } }) ?? attachments.first else {
            append("MAIL DOWNLOAD: žádná příloha k dispozici.", .warning)
            return
        }
        if !downloadedMailAttachmentIDs.contains(selected.id) { downloadedMailAttachmentIDs.append(selected.id) }
        if !downloadedFiles.contains(selected.targetPath) { downloadedFiles.append(selected.targetPath) }
        append("MAIL DOWNLOAD OK → \(selected.targetPath)", .success)
        append("Zdroj: \(selected.virtualURL)", .output)
        append("Další krok: docs ls nebo shasum -a 256 \(selected.targetPath)", .warning)
        saveLocalState()
    }

    private func listMailLinks() {
        let links = currentMailLinks()
        if links.isEmpty { append("MAIL: aktuální zpráva nemá odkazy.", .output); return }
        for link in links { append("LINK → \(link.id) | \(link.title) | \(link.virtualURL)", .output) }
    }

    private func openMailLink(_ linkID: String?) {
        let links = currentMailLinks()
        guard let selected = linkID.flatMap({ id in links.first { $0.id == id || $0.title.lowercased().contains(id.lowercased()) } }) ?? links.first else {
            append("MAIL LINK: žádný odkaz k otevření.", .warning)
            return
        }
        if !openedMailLinkIDs.contains(selected.id) { openedMailLinkIDs.append(selected.id) }
        openDesktopApp(selected.opensIn)
        append("LINK OPENED → \(selected.title)", .success)
        append("URL: \(selected.virtualURL)", .output)
        if let appID = selected.downloadAppID {
            append("Tahle stránka nabízí stažení aplikace. Použij: download app \(appID)", .warning)
        }
        saveLocalState()
    }

    private func showMailTimeline() {
        append("MAIL ENGINE TIMELINE // \(profile.side?.displayName ?? "no side")", .system)
        for mail in mailInboxItems() {
            let status = mail.isArchived ? "ARCHIVED" : mail.isRead ? "READ" : "UNREAD"
            append("\(status)  \(mail.missionID)  \(mail.subject)", mail.isRead ? .output : .success)
        }
    }

    private func showMailStatus() {
        append("MAIL ENGINE STATUS", .system)
        append("received=\(receivedMissionMailIDs.count) unread=\(unreadMailCount()) archived=\(archivedMailIDs.count) attachments=\(downloadedMailAttachmentIDs.count) links=\(openedMailLinkIDs.count)", .output)
        append("Rule: dokončení aktuální mise doručí další mail ve stejné herní linii.", .success)
    }

    func virtualFiles() -> [VirtualFileItem] {
        var files: [VirtualFileItem] = []
        if let mission = currentMission() {
            files.append(VirtualFileItem(
                id: "manual-\(mission.id)",
                path: "manuals/mission-\(mission.id).md",
                title: "Manuál mise \(mission.id)",
                body: currentDocumentBody(),
                kind: "manual"
            ))
            files.append(VirtualFileItem(
                id: "mail-archive-\(mission.id)",
                path: "mail/\(mission.id).eml",
                title: "Archivovaný mail \(mission.id)",
                body: currentMailBody(),
                kind: documentArchive.contains("mail/\(mission.id).eml") ? "mail-archive" : "mail-preview"
            ))
        }
        files.append(VirtualFileItem(id: "manual-terminal", path: "manuals/terminal.md", title: "Manuál terminálu", body: "open mail | open finder | open terminal | open safari | open settings | story lines | mail inbox | mail archive current | docs ls | search <term> | safari search <term> | app search vpn | download app lab-vpn | install app lab-vpn | run app lab-vpn | download app tor-browser | download app cloudflared | open mobile", kind: "manual"))
        files.append(VirtualFileItem(id: "system-folders", path: "system/", title: "Systémové složky", body: "Applications/ Downloads/ Documents/ MailArchive/ Scripts/ Evidence/ Logs/ Certificates/ PasswordVault/ Mobile/", kind: "folder"))
        files.append(VirtualFileItem(id: "certs", path: "certificates/lab-root-ca.pem", title: "Lab certifikát", body: "Simulovaný certifikát pro výuku důvěry, TLS a podpisů. Nepoužívá se mimo hru.", kind: "certificate"))
        files.append(VirtualFileItem(id: "passwords", path: "passwords/vault-demo.txt", title: "Demo hesla a tajemství", body: "Nikdy neukládej reálná hesla do plain textu. Tohle je výukový demo vault, který ukazuje riziko špatného ukládání secretů.", kind: "password-warning"))
        for missionID in receivedMissionMailIDs {
            if let mission = missions.first(where: { $0.id == missionID }) {
                files.append(VirtualFileItem(id: "mail-live-\(missionID)", path: "Mail/Inbox/mail-\(missionID).eml", title: "Doručený úkol \(missionID)", body: renderMailBody(for: mission, firstCommand: mission.allowedCommands.first ?? "mission"), kind: readMailIDs.contains("mail-\(missionID)") ? "mail-read" : "mail-unread"))
            }
        }
        for attID in downloadedMailAttachmentIDs {
            let allAttachments = missions.flatMap { mailAttachments(for: $0) }
            if let attachment = allAttachments.first(where: { $0.id == attID }) {
                files.append(VirtualFileItem(id: "downloaded-\(attID)", path: attachment.targetPath, title: attachment.fileName, body: "Staženo z mailového odkazu: \(attachment.virtualURL) | typ: \(attachment.kind)", kind: "downloaded-mail-attachment"))
            }
        }
        return files
    }

    func searchVirtualWorld(_ term: String) {
        let cleaned = term.trimmingCharacters(in: .whitespacesAndNewlines)
        guard cleaned.isEmpty == false else {
            append("SEARCH: zadej výraz. Příklad: search vpn", .warning)
            return
        }
        let hits = virtualFiles().filter { file in
            file.path.localizedCaseInsensitiveContains(cleaned) ||
            file.title.localizedCaseInsensitiveContains(cleaned) ||
            file.body.localizedCaseInsensitiveContains(cleaned)
        }
        append("SEARCH QUERY: \(cleaned)", .system)
        if hits.isEmpty {
            append("0 výsledků. Zkus: search vpn, search terminal, search evidence, search password", .warning)
        } else {
            for hit in hits.prefix(8) {
                append("FOUND → \(hit.path) | \(hit.title)", .success)
            }
        }
    }

    private func recordWrongCommand(_ command: String) {
        guard command.hasPrefix("complete ") == false else { return }
        wrongCommandCount += 1
        if wrongCommandCount == 3 {
            triggerThreatEffect("POPUP: Falešný systémový alert. Lekce: chaos roste, když neověřuješ zdroj.", penalty: 5)
        } else if wrongCommandCount == 5 {
            triggerThreatEffect("VIRUS-SIM: Virtuální lab hlásí infekci demo stanice. Penalizace skóre, žádný reálný dopad.", penalty: 12)
        }
    }

    private func triggerThreatEffect(_ message: String, penalty: Int) {
        virusPenalty += penalty
        desktopPopups.append(message)
        append(message, .warning)
    }

    private func scoreCurrentMission(_ mission: Mission) -> MissionScoreReport {
        let elapsed = Int(Date().timeIntervalSince(missionStartedAt ?? Date()))
        let timePenalty = min(30, elapsed / 20)
        let mistakePenalty = min(30, wrongCommandCount * 5)
        let installBonus = installedApps.isEmpty ? 0 : 5
        let archiveBonus = documentArchive.contains("mail/\(mission.id).eml") ? 5 : 0
        let score = max(0, min(100, 100 - timePenalty - mistakePenalty - virusPenalty + installBonus + archiveBonus))
        let verdict: String
        if score >= 90 { verdict = "ELITE" }
        else if score >= 75 { verdict = "SUCCESS" }
        else if score >= 55 { verdict = "PASS" }
        else { verdict = "MESSY WIN" }
        return MissionScoreReport(id: UUID().uuidString, missionID: mission.id, score: score, timeSeconds: elapsed, wrongCommands: wrongCommandCount, virusPenalty: virusPenalty, bonus: installBonus + archiveBonus, verdict: verdict)
    }

    func dismissMissionReport() {
        lastMissionReport = nil
    }

    func dismissPopup(_ text: String) {
        desktopPopups.removeAll { $0 == text }
    }

    func startPlayableCampaignFromSelectedSide() {
        let side = profile.side ?? .blueTeam
        let ids = orderedMissionIDs(for: side)
        currentMissionID = ids.first { id in
            missions.first(where: { $0.id == id })?.isCompleted == false
        } ?? ids.first ?? ""
        if currentMissionID.isEmpty == false { deliverMissionMail(currentMissionID, reason: "campaign start") }
        activeDesktopApp = .mail
    }

    func currentMission() -> Mission? {
        if currentMissionID.isEmpty { startPlayableCampaignFromSelectedSide() }
        return missions.first(where: { $0.id == currentMissionID })
    }

    func currentMailSubject() -> String {
        guard let mission = currentMission() else { return "Žádná aktivní mise" }
        return "Úkol: \(mission.title(language))"
    }

    func currentMailBody() -> String {
        guard let mission = currentMission() else {
            return "Nemáš aktivní misi. Vyber příběh nebo napiš play blue / play red."
        }
        return renderMailBody(for: mission, firstCommand: mission.allowedCommands.first ?? "mission")
    }

    private func renderMailBody(for mission: Mission, firstCommand: String) -> String {
        let attachments = mailAttachments(for: mission).map { "- \($0.fileName)  → mail download \($0.id)" }.joined(separator: "\n")
        let links = mailLinks(for: mission).map { "- \($0.title): \($0.virtualURL)  → mail open link \($0.id)" }.joined(separator: "\n")
        return """
        Od: \(mailSender(for: mission))
        Komu: \(profile.alias)
        Linie: \(storyLineName(for: mission))
        Kapitola: \(chapterTitle(for: mission))
        Mise: \(mission.id)

        Máš nový úkol ve virtuálním prostředí hry. Přijatá zpráva = aktivní úkol. Dokud ho nesplníš, další mail se nedoručí.

        CO DĚLÁŠ:
        \(mission.objective(language))

        PROČ TO DĚLÁŠ:
        Hra tě nutí číst kontext, stáhnout podklady, otevřít link, ověřit soubory a až potom pracovat v Terminálu. Přesně tak funguje reálný SOC/ops workflow.

        PRVNÍ KROK V TERMINÁLU:
        \(firstCommand)

        PŘÍLOHY:
        \(attachments.isEmpty ? "- žádné" : attachments)

        ODKAZY:
        \(links.isEmpty ? "- žádné" : links)

        PO SPLNĚNÍ:
        complete \(mission.id)
        """
    }

    func currentDocumentTitle() -> String {
        guard let mission = currentMission() else { return "Dokumentace mise" }
        return "Dokumentace: \(mission.id)"
    }

    func currentDocumentBody() -> String {
        guard let mission = currentMission() else {
            return "Vyber aktivní příběh: play blue nebo play red."
        }
        let commands = mission.allowedCommands.filter { !$0.lowercased().hasPrefix("complete ") }
        return """
        KONTEXT:
        Tohle není obyčejný seznam příkazů. Hraješ na virtuálním MacBooku uvnitř hry. Mail ti posílá úkol, Dokumenty vysvětlují kontext a Terminál simuluje reálné výstupy labu.

        MISE:
        \(mission.title(language))

        CÍL:
        \(mission.objective(language))

        CO ZÍSKÁŠ:
        - pochopení konkrétního bezpečnostního principu
        - zkušenost se syntaxí a výstupem terminálu
        - schopnost přenést princip na vlastní Mac/Linux prostředí

        CO RISKuješ / ZTRÁCÍŠ VE HŘE:
        - čas
        - pohodlí špatně nastaveného systému
        - iluzi, že bezpečnost je jeden button

        PŘÍKAZY PRO LAB:
        \(commands.map { "- \($0)" }.joined(separator: "\n"))

        DOKONČENÍ:
        complete \(mission.id)
        """
    }

    private func orderedMissionIDs(for side: PlayerSide) -> [String] {
        let ids = GameData.missions.map(\.id)
        switch side {
        case .blueTeam:
            return ids.filter { $0.hasPrefix("blue-story-") }
        case .redTeam:
            return ids.filter { $0.hasPrefix("red-story-") }
        case .greyTeam:
            return ids.filter { $0.hasPrefix("grey-story-") }
        case .whiteTeam:
            return ids.filter { $0.hasPrefix("white-story-") }
        case .blackTeam:
            return ids.filter { $0.hasPrefix("black-story-") }
        }
    }

    private func showCurrentMissionPlayable() {
        guard let mission = currentMission() else {
            append("Žádná aktivní mise. Použij play blue nebo play red.", .warning)
            return
        }
        append("AKTIVNÍ MISE: \(mission.id)", .system)
        append(mission.title(language), .success)
        append(mission.objective(language), .output)
        let commands = mission.allowedCommands.filter { !$0.lowercased().hasPrefix("complete ") }
        append("TERMINAL STEPS:", .output)
        for item in commands { append("- \(item)", .output) }
        append("Po provedení kroku dokonči: complete \(mission.id)", .success)
    }

    private func noteMissionStepIfNeeded(_ command: String) {
        guard !command.hasPrefix("complete ") else { return }
        guard let mission = currentMission(), mission.isCompleted == false else { return }
        let allowed = mission.allowedCommands
            .map { TerminalCommandEngine.normalize($0) }
            .filter { !$0.hasPrefix("complete ") && !$0.hasPrefix("task ") }
        guard allowed.contains(command) else { return }
        lastSafeLabCommand = command
        append("MISSION STEP OK → \(mission.id). Teď můžeš napsat: complete \(mission.id)", .success)
    }

    private func advancePlayableMissionAfterCompletion(_ completedID: String) {
        guard currentMissionID == completedID else { return }
        let ids = orderedMissionIDs(for: profile.side ?? .blueTeam)
        if let next = ids.first(where: { id in missions.first(where: { $0.id == id })?.isCompleted == false }) {
            currentMissionID = next
            deliverMissionMail(next, reason: "previous mission completed")
            activeDesktopApp = .mail
            append("NEXT MAIL RECEIVED → \(next). Otevři Mail. Splnění předchozího úkolu uvolnilo další zprávu.", .success)
        } else {
            append("KAMPAŇ HOTOVÁ. Otevři status / achievements.", .success)
        }
    }

    func resetToMenu() {
        phase = .side
        terminalLines.removeAll()
    }


    // MARK: - Virtual Internet / Downloadable App Engine

    private func isVirtualAppDownloaded(_ app: VirtualInternetApp) -> Bool {
        downloadedFiles.contains("Downloads/\(app.id).pkg")
    }

    private func isVirtualAppInstalled(_ app: VirtualInternetApp) -> Bool {
        installedApps.contains(app.installedName)
    }

    private func markVirtualAppDownloaded(_ app: VirtualInternetApp) {
        let path = "Downloads/\(app.id).pkg"
        if !downloadedFiles.contains(path) { downloadedFiles.append(path) }
    }

    private func markVirtualAppInstalled(_ app: VirtualInternetApp) {
        if !installedApps.contains(app.installedName) { installedApps.append(app.installedName) }
    }

    private func renderVirtualAppInfo(_ app: VirtualInternetApp) {
        append("APP INFO → \(app.name)", .success)
        append("ID: \(app.id) | typ: \(app.kind) | licence: \(app.license)", .output)
        append(language == .cs ? app.summaryCS : app.summaryEN, .output)
        append("Zdroj: \(app.downloadURL)", .output)
        append("Stav: \(isVirtualAppInstalled(app) ? "nainstalováno" : isVirtualAppDownloaded(app) ? "staženo" : "dostupné ke stažení")", .warning)
        append("Odemčené příkazy po instalaci:", .output)
        for cmd in app.commands { append("  \(cmd)", .output) }
    }

    private func renderVirtualSearchResults(engine: String, query: String) {
        let term = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard term.isEmpty == false else {
            append("SEARCH GUARD: zadej výraz. Příklad: safari search vpn", .warning)
            return
        }
        openDesktopApp(.safari)
        append("\(engine.uppercased()) SEARCH // virtual internet dataset", .system)
        append("Query: \(term)", .output)
        append("Pozn.: výsledky jsou lokální simulace. Nevolám reálný Google, Cloudflare ani Tor síť.", .warning)
        let hits = VirtualInternetRegistry.searchWeb(term)
        for hit in hits.prefix(6) {
            append("• \(hit.title)", .success)
            append("  \(hit.url)", .output)
            append("  \(language == .cs ? hit.snippetCS : hit.snippetEN)", .output)
            if let appID = hit.appID { append("  Stažení: download app \(appID)", .warning) }
        }
    }

    private func renderVirtualAppSearch(_ term: String) {
        let results = VirtualInternetRegistry.searchApps(term)
        append("APP SEARCH // SimNet Store + OSS/free catalog", .system)
        if results.isEmpty {
            append("Žádné výsledky. Zkus: app search vpn | app search tor | app search cloudflare | app search brew", .warning)
            return
        }
        for app in results {
            append("\(app.id.padding(toLength: 16, withPad: " ", startingAt: 0)) \(app.kind) — \(language == .cs ? app.summaryCS : app.summaryEN)", .output)
        }
    }

    private func downloadVirtualApp(_ appID: String) {
        guard let app = VirtualInternetRegistry.app(named: appID) else {
            append("DOWNLOAD GUARD: neznámá aplikace. Použij: app search <vpn|tor|cloudflare|brew>", .warning)
            return
        }
        markVirtualAppDownloaded(app)
        append("DOWNLOAD OK → Downloads/\(app.id).pkg", .success)
        append("Source: \(app.downloadURL)", .output)
        append("Další krok: shasum -a 256 Downloads/\(app.id).pkg  → potom install app \(app.id)", .warning)
        saveLocalState()
    }

    private func installVirtualApp(_ appID: String) {
        guard let app = VirtualInternetRegistry.app(named: appID) else {
            append("INSTALL GUARD: neznámá aplikace. Použij app search.", .warning)
            return
        }
        guard isVirtualAppDownloaded(app) else {
            append("INSTALL BLOCKED: nejdřív stáhni balík: download app \(app.id)", .warning)
            return
        }
        markVirtualAppInstalled(app)
        append("INSTALL OK → Applications/\(app.installedName).app", .success)
        append("Odemčené příkazy: \(app.commands.joined(separator: ", "))", .success)
        saveLocalState()
    }

    private func runVirtualApp(_ appID: String) {
        guard let app = VirtualInternetRegistry.app(named: appID) else {
            append("RUN GUARD: neznámá aplikace. Použij app search.", .warning)
            return
        }
        guard isVirtualAppInstalled(app) else {
            append("RUN BLOCKED: \(app.name) není nainstalovaný. Použij download app \(app.id) → install app \(app.id)", .warning)
            return
        }
        if !runningApps.contains(app.installedName) { runningApps.append(app.installedName) }
        append("APP RUNNING → \(app.installedName)", .success)
        switch app.id {
        case "lab-vpn": append("Další krok: vpn connect omnicore", .warning)
        case "tor-browser": append("Další krok: tor status nebo tor search privacy", .warning)
        case "cloudflared": append("Další krok: cloudflare dns corp.local", .warning)
        case "search-lab": append("Další krok: google search vpn nebo internet search backup", .warning)
        default: append("Použij app info \(app.id) pro příkazy.", .output)
        }
        saveLocalState()
    }

    private func handleVirtualInternetCommand(_ command: String) -> Bool {
        let parts = command.split(separator: " ").map(String.init)
        guard let first = parts.first else { return false }

        if command == "internet help" || command == "web help" || command == "safari help" || command == "app help" {
            append("VIRTUAL INTERNET ENGINE // v2.3", .system)
            append("safari search <term>       vyhledá ve virtuálním internetu přes GUI Safari", .output)
            append("google search <term>       Google-like search simulátor bez reálného API", .output)
            append("cloudflare dns <domain>    DNS/Zero Trust simulace pro corp.local/lab", .output)
            append("tor search <term>          onion/Tor simulace bez reálné Tor sítě", .output)
            append("app search <term>          katalog free/OSS virtuálních aplikací", .output)
            append("app info <id>              detail aplikace", .output)
            append("download app <id>          stáhne balík do Downloads/", .output)
            append("install app <id>           nainstaluje z Downloads/", .output)
            append("run app <id>               spustí appku a odemkne příkazy", .output)
            return true
        }

        if first == "safari" && parts.count >= 3 && parts[1] == "search" {
            renderVirtualSearchResults(engine: "Safari", query: parts.dropFirst(2).joined(separator: " "))
            return true
        }
        if (first == "internet" || first == "web") && parts.count >= 3 && parts[1] == "search" {
            renderVirtualSearchResults(engine: "Internet", query: parts.dropFirst(2).joined(separator: " "))
            return true
        }
        if first == "google" {
            let query = parts.count >= 3 && parts[1] == "search" ? parts.dropFirst(2).joined(separator: " ") : parts.dropFirst(1).joined(separator: " ")
            renderVirtualSearchResults(engine: "GoogleSim", query: query)
            return true
        }
        if first == "tor" {
            guard let app = VirtualInternetRegistry.app(named: "tor-browser"), isVirtualAppInstalled(app) else {
                append("TOR LOCKED: nejdřív stáhni a nainstaluj: download app tor-browser → install app tor-browser", .warning)
                return true
            }
            if parts.count >= 2 && parts[1] == "status" {
                append("TOR SIM STATUS: connected to onion training circuit", .success)
                append("Circuit: client → guard.lab → relay.lab → exit-disabled", .output)
                append("Exit do reálného internetu je záměrně vypnutý.", .warning)
                return true
            }
            if parts.count >= 3 && parts[1] == "search" {
                renderVirtualSearchResults(engine: "TorSim", query: parts.dropFirst(2).joined(separator: " "))
                return true
            }
            if parts.count >= 3 && parts[1] == "open" {
                append("TOR OPEN → \(parts.dropFirst(2).joined(separator: " "))", .success)
                append("Načteno z lokálního onion datasetu. Žádné reálné onion služby nejsou kontaktované.", .warning)
                return true
            }
        }
        if first == "cloudflare" || first == "cloudflared" {
            guard let app = VirtualInternetRegistry.app(named: "cloudflared"), isVirtualAppInstalled(app) || first == "cloudflare" else {
                append("CLOUDFLARED LOCKED: nejdřív download app cloudflared → install app cloudflared", .warning)
                return true
            }
            if parts.count >= 3 && (parts[1] == "dns" || parts[1] == "lookup") {
                let host = parts.dropFirst(2).joined(separator: " ")
                append("CLOUDFLARE DNS SIM → \(host)", .system)
                append("A    10.10.10.20", .output)
                append("TXT  \"simnet=training-only\"", .output)
                append("Proxy: training-orange-cloud | WAF: simulated | Cache: bypass", .success)
                return true
            }
            if parts.count >= 3 && parts[1] == "trace" {
                append("CLOUDFLARE TRACE SIM", .system)
                append("colo=PRG-SIM | tls=TLSv1.3 | warp=off | ip=10.20.45.78 | target=\(parts.dropFirst(2).joined(separator: " "))", .output)
                return true
            }
            if parts.count >= 3 && parts[1] == "tunnel" && parts[2] == "list" {
                append("cloudflared tunnels:", .success)
                append("omnicore-lab   healthy   routes: lab-web.corp.local, siem.corp.local", .output)
                return true
            }
        }
        if first == "app" && parts.count >= 2 {
            let action = parts[1]
            let arg = parts.dropFirst(2).joined(separator: " ")
            switch action {
            case "search", "store": renderVirtualAppSearch(arg); return true
            case "info": renderVirtualAppInfo(VirtualInternetRegistry.app(named: arg) ?? VirtualInternetRegistry.apps[0]); return true
            case "list":
                for app in VirtualInternetRegistry.apps { append("\(app.id) — \(app.kind) — \(app.license)", .output) }
                return true
            default: break
            }
        }
        if first == "download" && parts.count >= 3 && (parts[1] == "app" || parts[1] == "tool") {
            downloadVirtualApp(parts[2])
            return true
        }
        if first == "install" && parts.count >= 3 && (parts[1] == "app" || parts[1] == "tool") {
            installVirtualApp(parts[2])
            return true
        }
        if first == "run" && parts.count >= 3 && (parts[1] == "app" || parts[1] == "tool") {
            runVirtualApp(parts[2])
            return true
        }
        if first == "open" && parts.count >= 3 && parts[1] == "app" {
            runVirtualApp(parts[2])
            return true
        }
        if first == "shasum" && command.contains("downloads/") && command.contains(".pkg") {
            append("SHA256 (virtual package) = 9f2c0ffee7ab1e5afe0000000000000000000000000000000000000000000000", .output)
            append("Hash odpovídá SimNet manifestu. Instalace je povolená.", .success)
            return true
        }
        if first == "logwatcher" {
            guard let app = VirtualInternetRegistry.app(named: "logwatcher"), isVirtualAppInstalled(app) else { append("LOGWATCHER LOCKED: install app logwatcher", .warning); return true }
            append("LOGWATCHER", .system)
            append("tail: 3 alerts | timeline exported to Evidence/timeline.json | severity: medium", .success)
            return true
        }
        if first == "packetlab" {
            guard let app = VirtualInternetRegistry.app(named: "packetlab"), isVirtualAppInstalled(app) else { append("PACKETLAB LOCKED: install app packetlab", .warning); return true }
            append("PACKETLAB PCAP", .system)
            append("captures/lab-login.pcap: 18 packets, 2 failed logins, 1 successful session, no real traffic captured", .output)
            return true
        }
        return false
    }


    // MARK: - Virtual Homebrew / GitHub package engine

    private func isBrewInstalled(_ package: String) -> Bool {
        installedApps.contains("brew:\(package.lowercased())")
    }

    private func markBrewInstalled(_ package: String) {
        let key = "brew:\(package.lowercased())"
        if !installedApps.contains(key) { installedApps.append(key) }
    }

    private func installedBrewPackages() -> [String] {
        installedApps
            .filter { $0.hasPrefix("brew:") }
            .map { String($0.dropFirst(5)) }
            .sorted()
    }

    private func isLabScopedPackageRun(_ command: String) -> Bool {
        let allowedTokens = [
            "lab", "corp.local", "acme.local", "10.10.", "10.13.37.", "127.0.0.1", "localhost",
            "captures/", "logs/", "evidence/", "backups/", "restore/", "rules/", "wordlists/", "hashes/", "configs/", "infra/", "playbooks/", "certs/", "downloads/", "scripts/", "requirements.txt", "package-lock.json", "lab://"
        ]
        return allowedTokens.contains { command.contains($0) }
    }

    private func renderBrewInfo(_ pkg: VirtualBrewPackage) {
        append("==> \(pkg.name)", .success)
        append("Category: \(pkg.category)", .output)
        append("GitHub/source: \(pkg.github)", .output)
        append("Binaries: \(pkg.binaries.joined(separator: ", "))", .output)
        append("Depends on: \(pkg.dependencies.isEmpty ? "none" : pkg.dependencies.joined(separator: ", "))", .output)
        append(language == .cs ? "Popis: \(pkg.summaryCS)" : "Summary: \(pkg.summaryEN)", .output)
        append(language == .cs ? "Bezpečné příklady v labu:" : "Safe lab examples:", .warning)
        for example in pkg.safeUsage { append("  \(example)", .output) }
    }

    private func renderPackageHelp(_ pkg: VirtualBrewPackage, binary: String) {
        append("\(binary) — virtual Homebrew package command", .success)
        append(language == .cs ? "Balík: \(pkg.name) | kategorie: \(pkg.category)" : "Formula: \(pkg.name) | category: \(pkg.category)", .output)
        append(language == .cs ? "Tenhle příkaz je simulovaný. Reálný dopad mimo hru neexistuje." : "This command is simulated. There is no real-world effect outside the game.", .warning)
        append(language == .cs ? "Dostupné bezpečné použití:" : "Available safe usage:", .output)
        for example in pkg.safeUsage { append("  \(example)", .output) }
    }

    private func simulatePackageExecution(pkg: VirtualBrewPackage, binary: String, command: String) {
        let riskyCategories: Set<String> = ["network", "web", "identity", "osint", "malware-analysis", "forensics", "cloud", "automation"]
        if riskyCategories.contains(pkg.category) && !isLabScopedPackageRun(command) && !command.contains("--help") && !command.hasPrefix("man ") {
            append(language == .cs
                   ? "PACKAGE GUARD: \(binary) je povolený jen proti virtuálním cílům labu. Použij lab-*, corp.local, acme.local, 10.10.x.x nebo soubory logs/evidence/captures."
                   : "PACKAGE GUARD: \(binary) is allowed only against virtual lab targets. Use lab-*, corp.local, acme.local, 10.10.x.x or logs/evidence/captures files.", .warning)
            unlockAchievement("lab-only")
            return
        }

        lastSafeLabCommand = command
        switch binary {
        case "nmap", "rustscan", "masscan":
            append("SIM-NET SCAN // scope=virtual", .system)
            append("10.10.10.1    lab-gateway.corp.local    22/tcp open ssh | 53/tcp open dns", .output)
            append("10.10.10.20   lab-web.corp.local        80/tcp open http | 8080/tcp open dev-http", .output)
            append("10.10.10.30   lab-files.corp.local      445/tcp filtered smb | 443/tcp open https", .output)
            append("NOTE: výstup je simulovaný a uložený do Evidence/scan-last.txt", .success)
        case "tshark", "tcpdump", "wireshark":
            append("PCAP READ // captures/lab-login.pcap", .system)
            append("1  10.10.10.66 → 10.10.10.20  HTTP POST /login  401", .output)
            append("2  10.10.10.66 → 10.10.10.20  HTTP POST /login  200  user=demo", .output)
            append("3  10.10.10.20 → 10.10.10.66  Set-Cookie session=lab-redacted", .warning)
        case "jq", "yq":
            append("PARSER OK // virtual data file", .success)
            append("{ \"event.action\": \"login_failed\", \"risk\": \"medium\", \"source.ip\": \"10.10.10.66\" }", .output)
        case "git", "gh":
            append("SIM-GIT // repository=lab/omnicore-sim", .system)
            append("branch: main | changes: 3 | signed commits: 2/3 | secret scan: 1 warning", .output)
        case "python3", "pip3", "node", "npm", "npx", "pnpm":
            append("DEV RUNTIME // sandbox execution", .system)
            append("script executed inside virtual /Users/cybertrainee/lab only", .success)
            append("audit summary: 2 low, 1 moderate demo issue; remediation note saved to Documents/audit-note.md", .output)
        case "docker":
            append("CONTAINER LAB", .system)
            append("lab-blue       running   10.10.10.20:8080", .output)
            append("lab-siem       running   10.10.10.40:9200", .output)
        case "curl", "wget":
            append("HTTP/LAB FETCH OK", .success)
            append("status=200 | source=lab | saved=Downloads/lab-response.txt", .output)
        case "ffuf", "gobuster", "feroxbuster", "httpx", "nuclei":
            append("WEB LAB DISCOVERY", .system)
            append("/login          200", .output)
            append("/debug          403  warning: exposed debug route in lab", .warning)
            append("/api/status     200", .output)
        case "sqlmap":
            append("SQLI TRAINING MODE", .system)
            append("risk=0 level=1 batch=true target=lab-web.corp.local", .output)
            append("finding: parameter id reflects unsafely in demo endpoint. Proof saved without extraction.", .warning)
        case "hydra", "john", "hashcat":
            append("IDENTITY AUDIT // demo credentials only", .system)
            append("weak demo password found for training user. Mitigation: MFA + lockout + password policy.", .warning)
        case "yara", "clamscan", "freshclam":
            append("MALWARE ANALYSIS SIM", .system)
            append("evidence/suspicious.bin: LAB.Demo.DownloaderRule matched", .warning)
            append("No real malware executed. File quarantined in virtual Evidence/Quarantine.", .success)
        case "exiftool", "theharvester", "amass", "subfinder":
            append("OSINT DATASET // simulated", .system)
            append("corp.local -> vpn.corp.local, mail.corp.local, portal.corp.local", .output)
            append("metadata warning: author=training-user, gps=redacted, device=virtual-camera", .warning)
        case "openssl", "gpg", "age":
            append("CRYPTO TOOL OK", .success)
            append("certificate/signature/encryption operation simulated; result saved to Evidence/crypto-result.txt", .output)
        case "terraform", "ansible", "ansible-playbook":
            append("INFRA AUTOMATION PLAN", .system)
            append("changes: + firewall rule, + logging policy, + backup retention, - public admin port", .success)
        default:
            append("\(binary): simulated execution complete inside virtual Homebrew lab.", .success)
        }
    }

    private func handleHomebrewAndPackageCommand(_ command: String) -> Bool {
        let parts = command.split(separator: " ").map(String.init)
        guard let first = parts.first else { return false }

        if first == "brew" {
            if parts.count == 1 || parts[1] == "help" {
                append("VIRTUAL HOMEBREW ENGINE // v2.2", .system)
                append("brew search <term>       vyhledá simulované GitHub/Homebrew balíky", .output)
                append("brew info <formula>      detail balíku, binárky, závislosti, bezpečné použití", .output)
                append("brew install <formula>   nainstaluje balík do virtuálního /opt/homebrew", .output)
                append("brew list                vypíše nainstalované balíky", .output)
                append("brew deps <formula>      ukáže závislosti", .output)
                append("brew doctor/update/tap   simulovaná správa Homebrew", .output)
                append("which <bin> | man <bin> | <bin> --help", .output)
                append("Pozn.: databáze má seed nejdůležitějších security/dev balíků a fallback pro další formule.", .warning)
                return true
            }

            let action = parts.count > 1 ? parts[1] : ""
            let arg = parts.count > 2 ? parts[2] : ""
            switch action {
            case "search":
                let term = parts.dropFirst(2).joined(separator: " ")
                let results = VirtualBrewRegistry.search(term)
                append("==> Formulae", .success)
                if results.isEmpty {
                    append("No exact local registry match. Simulator supports dynamic fallback: brew install <formula-name>", .warning)
                } else {
                    for pkg in results.prefix(40) {
                        append("\(pkg.name.padding(toLength: 16, withPad: " ", startingAt: 0)) \(pkg.category) — \(language == .cs ? pkg.summaryCS : pkg.summaryEN)", .output)
                    }
                    if results.count > 40 { append("...and \(results.count - 40) more in this registry page", .warning) }
                }
                return true
            case "info", "home", "desc":
                guard !arg.isEmpty else { append("Usage: brew info <formula>", .warning); return true }
                if let pkg = VirtualBrewRegistry.package(named: arg) { renderBrewInfo(pkg) }
                else {
                    append("==> \(arg)", .success)
                    append("Category: community/fallback", .output)
                    append("GitHub/source: simulated package index", .output)
                    append("Popis: balík není v lokální seed databázi, ale engine ho umí držet jako virtuální formuli.", .warning)
                    append("Příkazy se odemknou až po přidání manifestu do registry.", .output)
                }
                return true
            case "install":
                guard !arg.isEmpty else { append("Usage: brew install <formula>", .warning); return true }
                if let pkg = VirtualBrewRegistry.package(named: arg) {
                    for dep in pkg.dependencies { markBrewInstalled(dep) }
                    markBrewInstalled(pkg.name)
                    append("==> Downloading \(pkg.name) from \(pkg.github)", .output)
                    append("==> Pouring \(pkg.name).bottle.tar.gz", .output)
                    append("🍺  /opt/homebrew/Cellar/\(pkg.name)/sim installed", .success)
                    append("Unlocked commands: \(pkg.binaries.joined(separator: ", "))", .success)
                    append("Doporučený další krok: \(pkg.binaries.first ?? pkg.name) --help", .warning)
                } else {
                    let safeName = arg.range(of: #"^[a-z0-9][a-z0-9+_.-]{1,80}$"#, options: .regularExpression) != nil
                    guard safeName else { append("brew install blocked: neplatný název formule.", .warning); return true }
                    markBrewInstalled(arg)
                    append("==> Installing community formula \(arg) into virtual Homebrew cellar", .success)
                    append("Fallback mode: balík je evidovaný, ale bez binárních příkazů. Přidej manifest do VirtualBrewRegistry pro plnou simulaci.", .warning)
                }
                saveLocalState()
                return true
            case "list", "ls":
                let list = installedBrewPackages()
                if list.isEmpty { append("No formulae installed. Try: brew search network", .warning) }
                else { for item in list { append(item, .output) } }
                return true
            case "uninstall", "remove":
                guard !arg.isEmpty else { append("Usage: brew uninstall <formula>", .warning); return true }
                installedApps.removeAll { $0 == "brew:\(arg)" }
                append("Uninstalled virtual formula: \(arg)", .success)
                saveLocalState()
                return true
            case "deps":
                guard !arg.isEmpty else { append("Usage: brew deps <formula>", .warning); return true }
                if let pkg = VirtualBrewRegistry.package(named: arg) { append(pkg.dependencies.isEmpty ? "\(pkg.name): no dependencies" : pkg.dependencies.joined(separator: "\n"), .output) }
                else { append("No dependency manifest for \(arg)", .warning) }
                return true
            case "doctor":
                append("Your virtual system is ready to brew.", .success)
                append("Warnings: 0 critical | 1 note: all tools are sandboxed to the simulator.", .warning)
                return true
            case "update":
                append("Already up-to-date. Virtual taps refreshed from bundled registry.", .success)
                return true
            case "tap":
                append("Tapped virtual repository: \(parts.dropFirst(2).joined(separator: " ").isEmpty ? "homebrew/core" : parts.dropFirst(2).joined(separator: " "))", .success)
                return true
            case "outdated":
                append("No outdated formulae in the simulator.", .success)
                return true
            default:
                append("brew: unknown command '\(action)'. Use: brew help", .warning)
                return true
            }
        }

        if first == "which", parts.count >= 2 {
            let binary = parts[1]
            if let pkg = VirtualBrewRegistry.ownerPackage(forBinary: binary), isBrewInstalled(pkg.name) {
                append("/opt/homebrew/bin/\(binary)", .success)
            } else {
                append("\(binary) not found in virtual PATH", .warning)
            }
            return true
        }

        if first == "man", parts.count >= 2 {
            let binary = parts[1]
            if let pkg = VirtualBrewRegistry.ownerPackage(forBinary: binary), isBrewInstalled(pkg.name) {
                renderPackageHelp(pkg, binary: binary)
            } else {
                append("No manual entry for \(binary). Install with: brew install \(binary)", .warning)
            }
            return true
        }

        if let pkg = VirtualBrewRegistry.ownerPackage(forBinary: first) {
            guard isBrewInstalled(pkg.name) else {
                append("COMMAND LOCKED: \(first) není nainstalovaný. Použij: brew install \(pkg.name)", .warning)
                return true
            }
            if command == first || command == "\(first) --help" || command == "\(first) -h" || command == "\(first) help" {
                renderPackageHelp(pkg, binary: first)
                return true
            }
            simulatePackageExecution(pkg: pkg, binary: first, command: command)
            return true
        }

        return false
    }

    func submitCommand() {
        let raw = currentInput
        currentInput = ""
        submit(raw)
    }

    func submit(_ raw: String) {
        let command = TerminalCommandEngine.normalize(raw)
        guard !command.isEmpty else { return }
        append("$ \(raw)", .command)
        defer { noteMissionStepIfNeeded(command) }

        if handleVirtualTrainingScenarioCommand(command) {
            return
        }

        if handleVirtualInternetCommand(command) {
            return
        }

        if handleHomebrewAndPackageCommand(command) {
            return
        }

        if TerminalCommandEngine.isPotentialRealScan(command) {
            append(language == .cs
                   ? "Blokuju: mimo scope. Tenhle trenažér bere jen virtuální cíle: lab-*, corp.local, acme.local, 10.10.x.x, 10.13.37.x, lokální soubory evidence/logs/backups."
                   : "Blocked: out of scope. This trainer accepts only virtual targets: lab-*, corp.local, acme.local, 10.10.x.x, 10.13.37.x, local evidence/logs/backups files.", .warning)
            unlockAchievement("lab-only")
            return
        }

        if handleStoryV07Command(command) {
            return
        }

        if handleRealisticLabCommand(command) {
            return
        }

        if handleAllowedMissionCommand(command) {
            return
        }

        switch command {
        case "help", "ovladani", "commands":
            TerminalCommandEngine.help(language: language).forEach { append($0, .output) }
        case "clear", "cls":
            terminalLines.removeAll()
        case "menu", "back", "zpet", "zpět":
            resetToMenu()
        case "campaign", "chapters", "chapter list":
            showCampaign()
        case "story blue":
            showBlueStory()
        case "story red":
            showRedStory()
        case "play blue":
            profile.side = .blueTeam
            startPlayableCampaignFromSelectedSide()
            append("BLUE TEAM PLAY MODE spuštěn. Otevři Mail.", .success)
            saveLocalState()
        case "play red":
            profile.side = .redTeam
            startPlayableCampaignFromSelectedSide()
            append("RED TEAM PLAY MODE spuštěn. Otevři Mail.", .success)
            saveLocalState()
        case "mission", "objectives", "objective":
            showCurrentMissionPlayable()
        case "next":
            advancePlayableMissionAfterCompletion(currentMissionID)
        case "status":
            showStatus()
        case "profile", "whoami":
            showProfile()
        case "icloud status":
            showICloudStatus()
        case "icloud sync":
            syncICloudNow()
        case "icloud pull":
            pullICloudNow()
        case "icloud push":
            pushICloudNow()
        case "tasks", "task list", "ukoly", "úkoly":
            showTasks()
        case "achievements", "success", "uspechy", "úspěchy":
            showAchievements()
        case "strany", "sides", "teams":
            showSides()
        case "mode singleplayer":
            profile.mode = .singleplayer
            append(language == .cs ? "Mode: Singleplayer" : "Mode: Singleplayer", .success)
            saveLocalState()
        case "mode multiplayer":
            profile.mode = .multiplayer
            append(language == .cs
                   ? "Mode: Multiplayer připraven jako placeholder. V další verzi napojíme Game Center."
                   : "Mode: Multiplayer is a placeholder. Next version can connect Game Center.", .warning)
            saveLocalState()
        case "ifconfig lab0":
            lastSafeLabCommand = command
            append("lab0: flags=UP,RUNNING mtu 1500", .output)
            append("inet 10.13.37.10 netmask 255.255.255.0 gateway 10.13.37.1", .output)
        case "ping lab-gateway":
            lastSafeLabCommand = command
            append("PING lab-gateway (10.13.37.1): 56 data bytes", .output)
            append("64 bytes from 10.13.37.1: icmp_seq=0 ttl=64 time=1.3 ms", .output)
            append("64 bytes from 10.13.37.1: icmp_seq=1 ttl=64 time=1.1 ms", .output)
        case "scan lab":
            lastSafeLabCommand = command
            append("SAFE LAB SCAN ONLY", .warning)
            append("10.13.37.1   lab-gateway   ports: 53/dns, 80/http", .output)
            append("10.13.37.20  lab-web       ports: 22/ssh closed, 8080/http closed", .output)
        case "ports":
            append("LAB PORT TABLE", .output)
            append("53/dns open on lab-gateway", .output)
            append("80/http open on lab-gateway", .output)
            append("8080/http closed on lab-web", .output)
        case "portsetup open 8080":
            lastSafeLabCommand = command
            append("lab-web: service dev-http bound to 10.13.37.20:8080", .success)
        case "usb list":
            lastSafeLabCommand = command
            append("USB BUS 01", .output)
            append("HID-042  Keyboard-like device  vendor=Unknown  trust=LOW", .warning)
            append("STOR-128 Backup flash drive    vendor=TRON1K   trust=OK", .output)
        case "usb inspect hid-042":
            lastSafeLabCommand = command
            append("HID-042 sends repeated keystroke bursts. Treat as suspicious BadUSB simulation.", .warning)
        case "lib list":
            lastSafeLabCommand = command
            append("terminal-ui-kit 1.4.0 OK", .output)
            append("net-lab-core    0.9.1 outdated", .warning)
            append("cloud-profile   2.1.0 OK", .output)
        case "lib audit":
            lastSafeLabCommand = command
            append("Finding: net-lab-core 0.9.1 is outdated. Recommendation: update to 1.2.x and pin checksum.", .success)
        case "osint recon acme.local":
            lastSafeLabCommand = command
            append("ACME.LOCAL PUBLIC PROFILE", .output)
            append("Claim A: 'CEO changed yesterday' source=random forum credibility=LOW", .warning)
            append("Claim B: 'Maintenance window Friday 22:00' source=status page credibility=HIGH", .success)
        case "logs show":
            lastSafeLabCommand = command
            append("12:04 login ok user=demo ip=10.13.37.44", .output)
            append("12:05 failed login user=admin ip=10.13.37.66 count=12", .warning)
            append("12:06 suspicious file access: lab-files/customer-demo.csv by unknown-session", .warning)
            append("12:07 firewall rule suggested: throttle repeated failed login", .success)
        case "defense alert":
            lastSafeLabCommand = command
            append("Alert created: repeated failed admin login attempts + suspicious data access. Severity: medium.", .success)
        case "dlp classify":
            lastSafeLabCommand = command
            append("DLP CLASSIFICATION", .output)
            append("lab-files/customer-demo.csv => SENSITIVE / personal-like demo data", .warning)
            append("lab-files/readme.txt => PUBLIC", .output)
            append("Next: dlp policy enable", .success)
        case "dlp policy enable":
            lastSafeLabCommand = command
            append("DLP policy enabled: block external copy of SENSITIVE demo files, alert on unusual bulk reads.", .success)
        case "backup status":
            lastSafeLabCommand = command
            append("BACKUP STATUS: last snapshot 02:00 | encrypted=yes | offsite-copy=simulated | integrity=unknown", .output)
        case "backup verify":
            lastSafeLabCommand = command
            append("Backup integrity verified. Recovery point objective: 2 hours. Next: restore dry-run", .success)
        case "restore dry-run":
            lastSafeLabCommand = command
            append("Dry-run restore OK: customer-demo.csv restored to isolated recovery folder. No live data changed.", .success)
        case "harden workstation":
            lastSafeLabCommand = command
            append("Hardening applied: MFA required, firewall deny-by-default for inbound lab traffic, auto-update enabled, USB trust prompts enabled.", .success)
        case "ir triage lab-host":
            lastSafeLabCommand = command
            append("IR TRIAGE: suspicious session active, sensitive demo file touched, no destructive action observed.", .warning)
        case "ir contain lab-host":
            lastSafeLabCommand = command
            append("Containment complete: lab-host moved to quarantine VLAN, credentials rotated, DLP alert preserved as evidence.", .success)
        case "redteam scope lab-corp":
            lastSafeLabCommand = command
            append("RED TEAM CYBERCRIME SANDBOX", .warning)
            append("Scope locked: lab-corp only | fake victim profile | no real accounts | no real endpoints | evidence required", .output)
        case "redteam plan":
            lastSafeLabCommand = command
            append("Attack-chain plan: scope -> recon -> proof-only validation -> impact simulation -> blue-team mitigation report.", .output)
        case "redteam cred-sim lab-mail":
            lastSafeLabCommand = command
            append("Credential-theft simulation: lab-mail shows why reused passwords + no MFA are dangerous.", .warning)
            append("No real passwords are generated or collected. Defensive lesson: password manager, MFA, login anomaly alerts.", .success)
        case "redteam exploit lab-web --proof":
            lastSafeLabCommand = command
            append("Proof-only validation: lab-web leaks DEBUG_BANNER=true and fake build metadata.", .warning)
            append("No exploit payload, no shell, no data access. Report risk: information disclosure + weak deployment hygiene.", .success)
        case "redteam exfil-sim lab-files":
            lastSafeLabCommand = command
            append("Data-loss impact simulation: 42 demo records would be exposed if DLP/backups/MFA were missing.", .warning)
            append("No real files copied. Blue Team counter: dlp classify -> dlp policy enable -> backup verify -> ir contain lab-host.", .success)
        case "redteam validate lab-web":
            lastSafeLabCommand = "redteam exploit lab-web --proof"
            append("Legacy alias accepted. Use next time: redteam exploit lab-web --proof", .warning)
            append("Proof-only validation: lab-web exposes a debug banner. No exploit code and no real target.", .success)
        case "greyteam review":
            lastSafeLabCommand = command
            append("Attack simulation: debug banner visible. Defense: disable debug mode, add CI check, monitor response headers.", .success)
        case "blackteam trace":
            lastSafeLabCommand = command
            append("Sandbox lesson: malicious actions leave logs, timing patterns, device IDs, network metadata, and legal risk.", .warning)
        case "report draft":
            lastSafeLabCommand = command
            append("REPORT DRAFT", .output)
            append("Finding: debug service exposed in lab. Impact: information disclosure. Recommendation: close 8080 or require auth. Evidence: safe lab scan.", .success)
        case "casebook":
            append("CASEBOOK // HISTORICAL CYBERCRIME MISSIONS", .output)
            append("case wannacry    -> ransomware, SMBv1, kill-switch, patching", .output)
            append("case notpetya    -> supply-chain update, wiper behavior, segmentation", .output)
            append("case equifax     -> Apache Struts, patch failure, data breach", .output)
            append("case colonial    -> ransomware, VPN identity, MFA and business continuity", .output)
            append("case solarwinds  -> trusted update, supply-chain trust, SBOM and telemetry", .output)
            append(language == .cs ? "Každý případ má reálný kontext, ale lab kroky jsou bezpečné obranné simulace." : "Each case has real-world context, but lab steps are safe defensive simulations.", .warning)
        case "case wannacry":
            lastSafeLabCommand = command
            append("CASE: WannaCry 2017", .warning)
            append(language == .cs ? "Příběh: ransomware se masově šířil přes nezáplatované Windows/SMBv1 prostředí. Dopad: nemocnice, firmy, výroba, výpadky služeb." : "Story: ransomware spread widely through unpatched Windows/SMBv1 environments. Impact: hospitals, companies, manufacturing, service outages.", .output)
            append(language == .cs ? "Co selhalo: staré systémy, slabý patch management, plochá síť, nedostatečně ověřené zálohy." : "What failed: legacy systems, weak patch management, flat networks, insufficiently verified backups.", .warning)
            append(language == .cs ? "Obrana: lab patch smb -> lab segment network -> lab verify backups." : "Defense: lab patch smb -> lab segment network -> lab verify backups.", .success)
        case "case notpetya":
            lastSafeLabCommand = command
            append("CASE: NotPetya 2017", .warning)
            append(language == .cs ? "Příběh: útok vypadal jako ransomware, ale choval se destruktivně. Důležitá lekce: důvěryhodný software může být vstupní brána, když selže supply-chain." : "Story: the attack looked like ransomware but behaved destructively. Key lesson: trusted software can become an entry point when supply-chain trust fails.", .output)
            append(language == .cs ? "Co selhalo: důvěra bez ověření, slabá segmentace, nedostatečné krizové obnovy." : "What failed: trust without verification, weak segmentation, insufficient disaster recovery.", .warning)
            append(language == .cs ? "Obrana: lab segment network -> lab verify backups -> lab ioc hunt." : "Defense: lab segment network -> lab verify backups -> lab ioc hunt.", .success)
        case "case equifax":
            lastSafeLabCommand = command
            append("CASE: Equifax 2017", .warning)
            append(language == .cs ? "Příběh: známá zranitelnost webového frameworku zůstala v důležité aplikaci neopravená. Dopad: masivní únik osobních dat." : "Story: a known web framework vulnerability remained unpatched in a critical application. Impact: massive personal-data breach.", .output)
            append(language == .cs ? "Co selhalo: patch management, asset inventory, skenování špatné cesty, detekce a reakce." : "What failed: patch management, asset inventory, wrong scan path, detection and response.", .warning)
            append(language == .cs ? "Obrana: lab patch struts -> lab ioc hunt -> report draft." : "Defense: lab patch struts -> lab ioc hunt -> report draft.", .success)
        case "case colonial":
            lastSafeLabCommand = command
            append("CASE: Colonial Pipeline 2021", .warning)
            append(language == .cs ? "Příběh: ransomware incident ukázal, že kompromitovaná identita a provozní rozhodnutí mohou mít fyzický byznys dopad." : "Story: the ransomware incident showed that a compromised identity and operational decisions can have physical business impact.", .output)
            append(language == .cs ? "Co selhalo: slabá správa účtů, nedostatečná MFA/identity kontrola, riziko propojení IT a provozu." : "What failed: weak account governance, insufficient MFA/identity control, IT-to-operations risk.", .warning)
            append(language == .cs ? "Obrana: lab rotate vpn -> lab mfa enforce -> lab verify backups." : "Defense: lab rotate vpn -> lab mfa enforce -> lab verify backups.", .success)
        case "case solarwinds":
            lastSafeLabCommand = command
            append("CASE: SolarWinds 2020", .warning)
            append(language == .cs ? "Příběh: kompromitovaná důvěryhodná aktualizace ukázala, že i legitimní dodavatelský kanál může nést riziko." : "Story: a compromised trusted update showed that even legitimate vendor channels can carry risk.", .output)
            append(language == .cs ? "Co selhalo: slepá důvěra v update chain, slabá viditelnost závislostí a málo korelace telemetrie." : "What failed: blind trust in the update chain, weak dependency visibility, insufficient telemetry correlation.", .warning)
            append(language == .cs ? "Obrana: lab sbom verify -> lab vendor isolate -> lab ioc hunt." : "Defense: lab sbom verify -> lab vendor isolate -> lab ioc hunt.", .success)
        case "lab simulate worm":
            lastSafeLabCommand = command
            append(language == .cs ? "Simulace šíření: 1 host -> 3 lab hosty kvůli ploché síti. Bez malware, pouze graf rizika." : "Spread simulation: 1 host -> 3 lab hosts due to flat network. No malware, only a risk graph.", .warning)
        case "lab patch smb":
            lastSafeLabCommand = command
            append(language == .cs ? "SMB hardening hotov: vypnutí legacy SMBv1 v labu, aplikace bezpečnostní aktualizace, ověření inventáře." : "SMB hardening done: legacy SMBv1 disabled in lab, security update applied, inventory verified.", .success)
        case "lab segment network":
            lastSafeLabCommand = command
            append(language == .cs ? "Segmentace hotová: workstation, server a backup VLAN odděleny; laterální pohyb v labu snížen." : "Segmentation done: workstation, server, and backup VLAN separated; lab lateral movement reduced.", .success)
        case "lab verify backups":
            lastSafeLabCommand = command
            append(language == .cs ? "Zálohy ověřeny: encrypted=yes, restore test=OK, offline copy=simulated, RPO=2h." : "Backups verified: encrypted=yes, restore test=OK, offline copy=simulated, RPO=2h.", .success)
        case "lab patch struts":
            lastSafeLabCommand = command
            append(language == .cs ? "Patch workflow hotov: nalezena zranitelná demo komponenta, aktualizována, přidán CI gate a asset evidence." : "Patch workflow done: vulnerable demo component found, updated, CI gate and asset record added.", .success)
        case "lab rotate vpn":
            lastSafeLabCommand = command
            append(language == .cs ? "VPN identita obnovena: staré účty zakázány, tokeny rotovány, nepoužívané profily odstraněny." : "VPN identity refreshed: old accounts disabled, tokens rotated, unused profiles removed.", .success)
        case "lab mfa enforce":
            lastSafeLabCommand = command
            append(language == .cs ? "MFA vynuceno: VPN a admin přístupy vyžadují druhý faktor, rizikové přihlášení spouští alert." : "MFA enforced: VPN and admin access require a second factor, risky sign-ins trigger alerts.", .success)
        case "lab sbom verify":
            lastSafeLabCommand = command
            append(language == .cs ? "SBOM ověřen: závislosti a podpisy build artefaktů zkontrolovány, podezřelý vendor balík označen." : "SBOM verified: dependencies and build artifact signatures checked, suspicious vendor package flagged.", .success)
        case "lab vendor isolate":
            lastSafeLabCommand = command
            append(language == .cs ? "Dodavatel izolován: vendor connector přesunut do omezené zóny, povolen jen nutný provoz a monitoring." : "Vendor isolated: vendor connector moved to a restricted zone, only required traffic and monitoring allowed.", .success)
        case "lab ioc hunt":
            lastSafeLabCommand = command
            append(language == .cs ? "IOC hunt: nalezeny 2 podezřelé události v lab logu, uloženo jako evidence pro report." : "IOC hunt: 2 suspicious lab log events found, saved as report evidence.", .success)
        case "open mail", "mail", "mail open":
            openDesktopApp(.mail)
            append("APP OPEN → Mail", .success)
            if let mail = currentMissionMailItem() { append("ACTIVE MAIL → \(mail.subject)", .output) }
        case "open terminal", "terminal", "new terminal", "terminal new":
            terminalWindows += command.contains("new") ? 1 : 0
            openDesktopApp(.terminal)
            append("TERMINAL WINDOW #\(terminalWindows) READY", .success)
        case "open finder", "finder", "open documents", "documents", "docs":
            openDesktopApp(.documents)
            append("APP OPEN → Finder", .success)
        case "open safari", "safari", "browser", "open browser":
            openDesktopApp(.safari)
            append("APP OPEN → Safari / SimNet", .success)
        case "open settings", "settings", "nastaveni", "nastavení":
            openDesktopApp(.settings)
            append("APP OPEN → Nastavení systému virtuálního MacBooku", .success)
        case "story lines", "open story lines", "apple sleep", "sleep", "uspat":
            openDesktopApp(.storyLines)
            append("STORY LINES OPEN → stejné jako Apple menu → Uspat.", .success)
        case "keyboard show", "show keyboard", "klavesnice show", "klávesnice show", "vysunout klavesnici", "vysunout klávesnici":
            virtualKeyboardVisible = true
            openDesktopApp(.terminal)
            append("KEYBOARD ENGINE → vysunutá MacBook Pro klávesnice s podsvícením, Touch Barem a iMouse/touchpadem.", .success)
        case "keyboard hide", "hide keyboard", "klavesnice hide", "klávesnice hide", "schovat klavesnici", "schovat klávesnici":
            virtualKeyboardVisible = false
            append("KEYBOARD ENGINE → klávesnice schovaná, monitor roztažený přes celé landscape rozhraní.", .success)
        case "dock hide", "hide dock", "schovat dock":
            virtualDockHidden = true
            append("DOCK ENGINE → Dock je skrytý. Zobrazíš ho přejetím nahoru nebo příkazem dock show.", .success)
        case "dock show", "show dock", "zobrazit dock":
            virtualDockHidden = false
            append("DOCK ENGINE → Dock je zobrazený a aplikace jsou klikatelné.", .success)
        case "open mobile", "mobile", "virtual mobile":
            virtualMobileRunning = true
            openDesktopApp(.mobile)
            append("VIRTUAL MOBILE BOOT → iPhone-lab je spuštěný pro MFA, SMS-sim a mobile OS úkoly.", .success)
        case "mail inbox", "mail list", "mail ls":
            let items = mailInboxItems()
            if items.isEmpty { append("Inbox je prázdný.", .output) }
            for item in items { append("[INBOX] \(item.isRead ? "READ" : "UNREAD") | \(item.id) | \(item.sender) | \(item.subject)", item.isRead ? .output : .success) }
        case "mail open current", "mail open mission", "mail read current":
            openCurrentMissionMail()
            if let mail = currentMissionMailItem() {
                append("MAIL OPENED → \(mail.subject)", .success)
                append(mail.body, .output)
            }
        case "mail archive current", "mail save current":
            archiveCurrentMailToDocuments()
        case "mail attachments", "mail attachment list":
            listMailAttachments()
        case "mail download current", "mail download attachment", "mail download attachments":
            downloadMailAttachment(nil)
        case "mail links", "mail link list":
            listMailLinks()
        case "mail open link", "mail open link current", "mail link open":
            openMailLink(nil)
        case "mail timeline", "mail history":
            showMailTimeline()
        case "mail status":
            showMailStatus()
        case "docs ls", "documents ls", "ls documents":
            for file in virtualFiles() { append("\(file.kind.uppercased())  \(file.path)", .output) }
        case "docs archive", "documents archive":
            if documentArchive.isEmpty { append("Archiv je zatím prázdný. Použij: mail archive current", .warning) }
            for path in documentArchive { append("ARCHIVE → Documents/\(path)", .success) }
        case "docs open mission", "documents open mission":
            append(currentDocumentTitle(), .success)
            append(currentDocumentBody(), .output)
        case "download app lab-vpn", "download lab-vpn", "curl -o downloads/lab-vpn.pkg lab://apps/lab-vpn.pkg":
            if !downloadedFiles.contains("Downloads/lab-vpn.pkg") { downloadedFiles.append("Downloads/lab-vpn.pkg") }
            append("DOWNLOAD OK → Downloads/lab-vpn.pkg", .success)
            append("Kontrola před instalací: shasum -a 256 Downloads/lab-vpn.pkg", .warning)
        case "download tool logwatcher", "curl -o downloads/logwatcher.pkg lab://apps/logwatcher.pkg":
            if !downloadedFiles.contains("Downloads/logwatcher.pkg") { downloadedFiles.append("Downloads/logwatcher.pkg") }
            append("DOWNLOAD OK → Downloads/logwatcher.pkg", .success)
        case "shasum -a 256 downloads/lab-vpn.pkg":
            lastSafeLabCommand = command
            append("5a24b7f91e4d2c2b9f0d1137e7c0lab000000000000000000000000000  Downloads/lab-vpn.pkg", .output)
            append("Hash odpovídá lab manifestu. Instalace je v simulaci bezpečná.", .success)
        case "install app lab-vpn", "installer -pkg downloads/lab-vpn.pkg -target lab":
            guard downloadedFiles.contains("Downloads/lab-vpn.pkg") else {
                append("INSTALL BLOCKED: nejdřív stáhni balík: download app lab-vpn", .warning)
                return
            }
            if !installedApps.contains("LabVPN") { installedApps.append("LabVPN") }
            append("INSTALL OK → Applications/LabVPN.app", .success)
        case "install tool logwatcher":
            guard downloadedFiles.contains("Downloads/logwatcher.pkg") else {
                append("INSTALL BLOCKED: nejdřív stáhni: download tool logwatcher", .warning)
                return
            }
            if !installedApps.contains("LogWatcher") { installedApps.append("LogWatcher") }
            append("INSTALL OK → Applications/LogWatcher.app", .success)
        case "run app lab-vpn", "open -a labvpn":
            guard installedApps.contains("LabVPN") else {
                append("RUN BLOCKED: LabVPN není nainstalovaná. Použij download + install.", .warning)
                return
            }
            if !runningApps.contains("LabVPN") { runningApps.append("LabVPN") }
            append("LabVPN spuštěna. Další krok: vpn connect omnicore", .success)
        case "vpn connect omnicore":
            guard runningApps.contains("LabVPN") else {
                append("VPN BLOCKED: spusť nejdřív LabVPN: run app lab-vpn", .warning)
                return
            }
            lastSafeLabCommand = command
            append("VPN CONNECTED → omnicore.lab via utun9", .success)
            append("Route pushed: 10.10.10.0/24, DNS: corp.local", .output)
        case "vpn status":
            append(runningApps.contains("LabVPN") ? "VPN: connected-ready | app=LabVPN" : "VPN: disconnected | app not running", runningApps.contains("LabVPN") ? .success : .warning)
        case "mobile launch authenticator":
            guard virtualMobileRunning else { append("MOBILE OFF: nejdřív open mobile", .warning); return }
            append("Authenticator otevřen. MFA code-sim: 042913", .success)
        case "create script backup-check", "nano scripts/backup_check.sh":
            if !downloadedFiles.contains("Scripts/backup_check.sh") { downloadedFiles.append("Scripts/backup_check.sh") }
            append("SCRIPT CREATED → Scripts/backup_check.sh", .success)
            append("Obsah: ověření existence zálohy, checksumu a dry-run obnovy.", .output)
        case "chmod +x scripts/backup_check.sh":
            append("MODE OK → Scripts/backup_check.sh je spustitelný", .success)
        case "./scripts/backup_check.sh":
            lastSafeLabCommand = command
            append("backup_check: snapshot found, checksum OK, restore dry-run OK", .success)
        case "shortcuts create backup-check":
            append("SHORTCUT CREATED → Backup Check. Ve hře to simuluje automatizovanou zkratku na pravidelnou kontrolu záloh.", .success)
        case "matrix on":
            matrixRainEnabled = true
            append(language == .cs ? "Matrix tapeta je aktivní. Běží jako součást prostředí hry." : "Matrix wallpaper is active. It runs as part of the game environment.", .success)
        case "matrix off":
            matrixRainEnabled = true
            append(language == .cs ? "Matrix tapeta je základní prostředí hry a nejde vypnout. V terminálu se trénuje práce, ne nastavování atmosféry." : "Matrix wallpaper is the core game environment and cannot be disabled. The terminal is for training, not disabling the atmosphere.", .warning)
        default:
            if command.hasPrefix("task ") {
                let id = String(command.dropFirst(5))
                showTask(id)
            } else if command.hasPrefix("complete ") {
                let id = String(command.dropFirst(9))
                completeMission(id)
            } else if command.hasPrefix("lang ") {
                changeLanguage(command)
            } else if command.hasPrefix("mail open ") {
                let id = String(command.dropFirst(10)).trimmingCharacters(in: .whitespacesAndNewlines)
                openMissionMail(id: id)
            } else if command.hasPrefix("mail download ") {
                let id = String(command.dropFirst(14)).trimmingCharacters(in: .whitespacesAndNewlines)
                downloadMailAttachment(id.isEmpty ? nil : id)
            } else if command.hasPrefix("mail open link ") {
                let id = String(command.dropFirst(15)).trimmingCharacters(in: .whitespacesAndNewlines)
                openMailLink(id.isEmpty ? nil : id)
            } else if command.hasPrefix("open link ") {
                let id = String(command.dropFirst(10)).trimmingCharacters(in: .whitespacesAndNewlines)
                openMailLink(id.isEmpty ? nil : id)
            } else if command.hasPrefix("search ") {
                let term = String(command.dropFirst(7))
                searchVirtualWorld(term)
            } else if command.hasPrefix("hledat ") {
                let term = String(command.dropFirst(7))
                searchVirtualWorld(term)
            } else if command.hasPrefix("docs search ") {
                let term = String(command.dropFirst(12))
                searchVirtualWorld(term)
            } else if command.hasPrefix("documents search ") {
                let term = String(command.dropFirst(17))
                searchVirtualWorld(term)
            } else if command.hasPrefix("download ") || command.hasPrefix("stahnout ") || command.hasPrefix("stáhnout ") {
                append("DOWNLOAD GUARD: stahování funguje jen z lab zdrojů. Příklady: download app lab-vpn | download tool logwatcher", .warning)
                recordWrongCommand(command)
            } else if command.hasPrefix("install ") || command.hasPrefix("instalovat ") {
                append("INSTALL GUARD: instalace funguje jen pro ověřené lab balíky. Příklady: install app lab-vpn | install tool logwatcher", .warning)
                recordWrongCommand(command)
            } else {
                append(language == .cs
                       ? "Neznámý příkaz. Napiš help."
                       : "Unknown command. Type help.", .warning)
                recordWrongCommand(command)
            }
        }
    }


    private func handleAllowedMissionCommand(_ command: String) -> Bool {
        guard let mission = currentMission(), mission.isCompleted == false else { return false }
        let normalizedAllowed = mission.allowedCommands
            .map { TerminalCommandEngine.normalize($0) }
            .filter { !$0.hasPrefix("complete ") && !$0.hasPrefix("task ") }
        guard normalizedAllowed.contains(command) else { return false }
        lastSafeLabCommand = command
        let lower = command.lowercased()
        append("VIRTUAL OS EXEC → \(command)", .system)
        if lower.contains("download") || lower.contains("curl -o") {
            append("Download proběhl pouze z lab:// repozitáře. Soubor se objevil v Documents/Downloads.", .success)
            if !downloadedFiles.contains("Downloads/mission-tool.pkg") { downloadedFiles.append("Downloads/mission-tool.pkg") }
        } else if lower.contains("install") || lower.contains("installer") {
            append("Instalace proběhla v izolovaném virtuálním OS. Před instalací hra vyžaduje důvěru, hash nebo lab manifest.", .success)
            if !installedApps.contains("MissionTool") { installedApps.append("MissionTool") }
        } else if lower.contains("virus") || lower.contains("impact") || lower.contains("attack wave") {
            append("SIMULACE DOPADU: obrazovka reaguje popupy a časovou penalizací. Žádný reálný malware neexistuje.", .warning)
        } else if lower.contains("nmap") || lower.contains("whois") || lower.contains("dig") || lower.contains("traceroute") || lower.contains("ifconfig") || lower.contains("netstat") {
            append("Síťový výstup je simulovaný pro lab hosty corp.local / 10.10.10.0/24. Nic neopouští appku.", .output)
            append("host=lab-web.corp.local status=observed risk=educational evidence=saved", .success)
        } else if lower.contains("hash") || lower.contains("evidence") || lower.contains("report") || lower.contains("regulator") {
            append("Důkazní krok hotov: uložen hash/timeline/summary bez surových osobních dat.", .success)
        } else if lower.contains("mac ") || lower.contains("fdesetup") || lower.contains("privacy") || lower.contains("firewall") {
            append("Real Mac lesson: příkaz ukazuje, co máš na skutečném Macu chápat. V této hře se reálný systém nemění.", .success)
        } else if lower.contains("mobile") || lower.contains("mfa") || lower.contains("authenticator") {
            virtualMobileRunning = true
            activeDesktopApp = .mobile
            append("Virtuální mobil reaguje: MFA/mobile OS úkol je dostupný v okně Mobile.", .success)
        } else {
            append("Krok mise proveden. Výstup je uložen do Dokumentů jako lab evidence/manual note.", .success)
        }
        return true
    }

    private func handleStoryV07Command(_ command: String) -> Bool {
        switch command {
        case "patch plan prod-web-01":
            lastSafeLabCommand = command
            append("PATCH PLAN prod-web-01", .output)
            append("1) snapshot + rollback point  2) maintenance window  3) staged update  4) smoke test  5) SIEM watch", .success)
            append("Trade-off: získáš nižší riziko zneužití, ale ztratíš pohodlí odkládání a musíš řídit provozní okno.", .warning)
        case "evidence label omnicore-ledger":
            lastSafeLabCommand = command
            append("EVIDENCE LABEL", .output)
            append("id=evidence/omnicore-ledger.json | source=omnicore-crm | export=read-only | contains_personal_data=no-public-dump", .success)
            append("Lesson: důkaz musí být čitelný, ověřitelný a právně použitelný.", .success)
        case "exec key review truth-index":
            lastSafeLabCommand = command
            append("EXEC KEY REVIEW // truth-index", .warning)
            append("executive-key-03 signed 3 policy overrides outside normal approval workflow", .warning)
            append("Meaning: nejde jen o bug. Je tu lidské rozhodnutí, podpis a odpovědnost.", .success)
        case "regulator package prepare":
            lastSafeLabCommand = command
            append("REGULATOR PACKAGE", .success)
            append("Included: timeline, hashes, policy diff, DLP trace, executive override signatures, risk statement.", .output)
            append("Excluded: raw client data. Cíl je zastavit systém, ne poškodit klienty.", .success)
        case "journalist safe-summary":
            lastSafeLabCommand = command
            append("SAFE SUMMARY", .success)
            append("Public claim: OmniCore manipulated information flow and misused client data. Evidence available under legal review.", .output)
            append("No doxxing, no client records, no vigilante dump.", .warning)
        case "shutdown legal-motion":
            lastSafeLabCommand = command
            append("LEGAL SHUTDOWN MOTION // FICTIONAL", .success)
            append("Outcome: injunction requested, regulator notified, system access frozen by lawful order.", .success)
            append("Win condition: firma padá důkazem, ne sabotáží.", .success)
        case "linux nav lab":
            lastSafeLabCommand = command
            append("LINUX NAV LAB", .output)
            append("pwd -> /home/player/lab | ls -> web/ files/ logs/ evidence/ | id -> uid=1000(player) groups=lab-readonly", .output)
            append("Lesson: orientace, práva a cesty jsou základ. Bez toho jen slepě kopíruješ příkazy.", .success)
        case "redteam report risk":
            lastSafeLabCommand = command
            append("RED TEAM RISK REPORT", .success)
            append("Finding: dev HTTP service exposes headers and debug metadata. Impact: recon advantage, deployment hygiene risk.", .output)
            append("Fix: disable debug, restrict 8080, move production traffic to hardened 443, monitor access.", .success)
        case "mac audit overview":
            lastSafeLabCommand = command
            append("REAL MAC DEFENDER // OVERVIEW", .success)
            append("Zkontroluj: updates, FileVault, firewall, sharing, users, Login Items, profiles, privacy permissions, backups, iCloud/2FA.", .output)
            append("Pravidlo: nejdřív rozumět dopadu, potom měnit nastavení.", .warning)
        case "mac check filevault":
            lastSafeLabCommand = command
            append("FILEVAULT CHECK", .output)
            append("Real Mac meaning: FileVault šifruje disk, takže ztracený Mac není rovnou ztráta dat.", .success)
            append("Real command to understand: fdesetup status", .output)
        case "fdesetup status":
            lastSafeLabCommand = command
            append("FileVault is On.", .success)
            append("Simulated output. Na reálném Macu tímhle jen čteš stav; nic tím nezapínáš ani nerozbiješ.", .warning)
        case "mac check firewall":
            lastSafeLabCommand = command
            append("FIREWALL CHECK", .output)
            append("Target state: firewall on, stealth mode on, inbound allowed only where máš jasný důvod.", .success)
            append("Risk of strict firewall: některé lokální služby se přestanou ozývat v síti. To je často dobře.", .warning)
        case "mac check sharing":
            lastSafeLabCommand = command
            append("SHARING CHECK", .output)
            append("Review: Remote Login, Screen Sharing, File Sharing, AirDrop, Bluetooth sharing.", .output)
            append("Princip: vypnout vše, co aktivně nepoužíváš. Nejbezpečnější služba je ta, která neběží.", .success)
        case "mac check privacy":
            lastSafeLabCommand = command
            append("PRIVACY CHECK", .output)
            append("Review: Full Disk Access, Accessibility, Screen Recording, Location, Contacts, Calendar, Microphone, Camera.", .warning)
            append("Princip: vysoká oprávnění patří jen aplikacím, kterým rozumíš a věříš.", .success)
        case "mac check persistence":
            lastSafeLabCommand = command
            append("PERSISTENCE CHECK", .output)
            append("Review: Login Items, LaunchAgents, LaunchDaemons, configuration profiles, browser extensions.", .warning)
            append("Lesson: malware i špatný software se často drží přes autostart a profily.", .success)
        case "mac hardening checklist":
            lastSafeLabCommand = command
            append("FINAL MAC HARDENING CHECKLIST", .success)
            append("1) update macOS/apps  2) FileVault ON  3) firewall ON  4) sharing minimal  5) admin účet oddělit od běžné práce", .output)
            append("6) iCloud 2FA  7) zálohy ověřit obnovou  8) zkontrolovat profily/Login Items  9) DNS/VPN jen důvěryhodné  10) zapisovat změny.", .output)
            append("Výhra: teď víš, co děláš a proč. Nejsi klikací uživatel, ale správce vlastního stroje.", .success)
        default:
            return false
        }
        return true
    }

    private func handleRealisticLabCommand(_ command: String) -> Bool {
        switch command {
        case "world map":
            append("TERMINAL OPS WORLD // corp.local", .output)
            append("[INTERNET-FAKE] -> lab-gateway 10.10.10.1 -> lab-web 10.10.10.20 -> lab-files 10.10.10.30", .output)
            append("Zones: DMZ, WORKSTATION, FILES, BACKUP, QUARANTINE", .output)
            append("All targets are fictional. Nothing leaves the app.", .warning)
        case "lab scope":
            append("SCOPE ALLOWED", .success)
            append("Allowed: corp.local, acme.local, lab-* hostnames, 10.10.10.0/24, 10.13.37.0/24, local evidence/logs/backups files.", .output)
            append("Out of scope: public IPs, real domains, real accounts, real credentials, live exploitation, malware, phishing, exfiltration.", .warning)
        case "lab hosts":
            append("10.10.10.1   lab-gateway.corp.local   Linux gateway     ports 53,80,443", .output)
            append("10.10.10.20  lab-web.corp.local       Ubuntu web node   ports 22,8080", .output)
            append("10.10.10.30  lab-files.corp.local     file server       ports 445,2049", .output)
            append("10.10.10.66  unknown-session          attacker-sim      observed in logs", .warning)
        case "lab services":
            append("SERVICE TABLE", .output)
            append("lab-gateway: dns:53 open | https:443 open | http:80 redirect", .output)
            append("lab-web: ssh:22 filtered | dev-http:8080 open | debug banner exposed", .warning)
            append("lab-files: smb:445 restricted | nfs:2049 backup-only", .output)
        case "cat briefing/red-001.txt":
            append("RED BRIEFING // FICTIONAL CYBERCRIME CASE", .warning)
            append("Goal: think like an intruder inside corp.local, but every action must stay in the game lab.", .output)
            append("Chain: scope -> OSINT -> service discovery -> evidence-only web probe -> credential-risk simulation -> impact report.", .output)
            append("Win condition: prove risk without stealing, damaging, or touching real data.", .success)
        case "cat briefing/blue-001.txt":
            append("BLUE BRIEFING // DATA LOSS PREVENTION", .success)
            append("Goal: prevent data loss after suspicious access to lab-files/customer-demo.csv.", .output)
            append("Chain: detect -> classify -> contain -> verify backup -> report evidence.", .output)
        case "whois corp.local":
            lastSafeLabCommand = command
            append("Domain Name: CORP.LOCAL", .output)
            append("Registrar: TerminalOps Fictional Registry", .output)
            append("Registrant Organization: ACME Corp Lab", .output)
            append("Name Server: ns1.corp.local", .output)
            append("Updated Date: 2026-06-17T00:00:00Z", .output)
        case "dig corp.local mx":
            lastSafeLabCommand = command
            append(";; ANSWER SECTION:", .output)
            append("corp.local. 300 IN MX 10 mail.corp.local.", .output)
            append("corp.local. 300 IN MX 20 backup-mail.corp.local.", .output)
            append(";; lesson: mail records reveal identity surface for defenders and attackers.", .warning)
        case "dig corp.local txt":
            lastSafeLabCommand = command
            append("corp.local. 300 IN TXT \"v=spf1 include:mail.corp.local -all\"", .output)
            append("corp.local. 300 IN TXT \"security-contact=security@corp.local\"", .output)
            append("corp.local. 300 IN TXT \"env=staging owner=web-team\"", .warning)
        case "nslookup vpn.corp.local":
            lastSafeLabCommand = command
            append("Server: 10.10.10.1", .output)
            append("Name: vpn.corp.local", .output)
            append("Address: 10.10.10.40", .output)
            append("lesson: exposed VPN identity must require MFA and lifecycle management.", .warning)
        case "theharvester -d corp.local -b lab":
            lastSafeLabCommand = command
            append("[*] Target: corp.local", .output)
            append("[*] Source: lab", .output)
            append("Emails: jane.admin@corp.local, helpdesk@corp.local", .output)
            append("Hosts: mail.corp.local, vpn.corp.local, lab-web.corp.local", .output)
            append("Defensive lesson: reduce public metadata and monitor impersonation risk.", .success)
        case "exiftool evidence/photo_lab.jpg":
            lastSafeLabCommand = command
            append("File Name: photo_lab.jpg", .output)
            append("Create Date: 2026:06:17 01:13:37", .output)
            append("GPS Position: stripped", .success)
            append("Software: CameraApp 1.0", .output)
        case "traceroute lab-web.corp.local":
            lastSafeLabCommand = command
            append("traceroute to lab-web.corp.local (10.10.10.20), 64 hops max", .output)
            append("1  lab-gateway.corp.local (10.10.10.1)  1.120 ms", .output)
            append("2  lab-web.corp.local (10.10.10.20)      2.004 ms", .output)
        case "netstat -rn":
            lastSafeLabCommand = command
            append("Routing tables", .output)
            append("Destination        Gateway            Flags   Netif", .output)
            append("default            10.13.37.1         UGSc    lab0", .output)
            append("10.10.10/24        10.13.37.1         UGSc    lab0", .output)
        case "nmap -sv -pn 10.10.10.0/24":
            lastSafeLabCommand = command
            append("Starting Nmap 7.95 (simulated lab output)", .output)
            append("Nmap scan report for lab-gateway.corp.local (10.10.10.1)", .output)
            append("53/tcp open domain dnsmasq 2.89", .output)
            append("443/tcp open https nginx 1.24", .output)
            append("Nmap scan report for lab-web.corp.local (10.10.10.20)", .output)
            append("8080/tcp open http Werkzeug dev server", .warning)
            append("Nmap done: 256 IP addresses scanned; 3 hosts up", .success)
        case "nmap -sv -pn 10.10.10.20":
            lastSafeLabCommand = command
            append("Nmap scan report for lab-web.corp.local (10.10.10.20)", .output)
            append("PORT     STATE    SERVICE VERSION", .output)
            append("22/tcp   filtered ssh", .output)
            append("8080/tcp open     http    Werkzeug dev server 2.x", .warning)
            append("Service Info: debug banner visible; environment: staging", .warning)
        case "nmap --script vuln lab-web.corp.local":
            lastSafeLabCommand = command
            append("NSE: simulated vuln script set for lab-web.corp.local", .output)
            append("| http-debug-exposure: DEBUG mode appears enabled", .warning)
            append("|_Risk: information disclosure; no exploit payload executed", .success)
        case "curl -i http://10.10.10.20:8080/debug":
            lastSafeLabCommand = "curl http://10.10.10.20:8080/debug"
            append("Alias accepted. Use: curl http://10.10.10.20:8080/debug", .warning)
            append("{ \"debug\": true, \"env\": \"staging\" }", .warning)
        case "curl -i http://10.10.10.20:8080":
            lastSafeLabCommand = command
            append("HTTP/1.1 200 OK", .output)
            append("Server: Werkzeug/2.x Python/3.x", .warning)
            append("X-Lab-Trace: visible", .warning)
        case "curl -i http://lab-web.corp.local:8080":
            lastSafeLabCommand = command
            append("HTTP/1.1 200 OK", .output)
            append("Server: Werkzeug/2.x Python/3.x", .warning)
            append("X-Environment: staging", .warning)
            append("X-Debug: true", .warning)
        case "curl http://lab-web.corp.local/.well-known/security.txt":
            lastSafeLabCommand = command
            append("Contact: security@corp.local", .output)
            append("Policy: responsible disclosure only", .output)
            append("Preferred-Languages: cs, en", .output)
        case "curl http://10.10.10.20:8080/debug":
            lastSafeLabCommand = command
            append("{", .output)
            append("  \"debug\": true,", .warning)
            append("  \"build\": \"dev-2026.06.17\",", .warning)
            append("  \"database\": \"lab-db.internal\"", .warning)
            append("}", .output)
            append("Finding: information disclosure. Next safe step: report or mitigate, not exploit.", .success)
        case "nc -vz lab-web.corp.local 8080":
            lastSafeLabCommand = command
            append("Connection to lab-web.corp.local port 8080 [tcp/http-alt] succeeded!", .output)
        case "sudo lsof -itcp -stcp:listen":
            lastSafeLabCommand = command
            append("COMMAND   PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME", .output)
            append("Python  1337 lab    3u  IPv4  0x123      0t0 TCP 127.0.0.1:8080 (LISTEN)", .output)
            append("nginx    443 lab    6u  IPv4  0x456      0t0 TCP *:443 (LISTEN)", .output)
        case "python3 -m http.server 8080 --bind 127.0.0.1":
            lastSafeLabCommand = command
            append("Serving HTTP on 127.0.0.1 port 8080 (http://127.0.0.1:8080/) ...", .success)
            append("Game note: simulated local service only; no real socket is opened by the app.", .warning)
        case "system_profiler spusbdatatype":
            lastSafeLabCommand = command
            append("USB:", .output)
            append("  HID-042:", .warning)
            append("    Product ID: 0x0042", .output)
            append("    Vendor ID: 0x13B7 (Unknown Lab Vendor)", .warning)
            append("    Current Required: 100 mA", .output)
            append("  STOR-128:", .output)
            append("    Product ID: 0x0128", .output)
            append("    Vendor ID: 0x54A1 (TRON1K)", .output)
        case "ioreg -p iousb":
            lastSafeLabCommand = command
            append("+-o Root", .output)
            append("  +-o HID-042@14100000 <class AppleUSBDevice, id 0x042, registered>", .warning)
            append("  +-o STOR-128@14200000 <class AppleUSBDevice, id 0x128, registered>", .output)
        case "diskutil list":
            lastSafeLabCommand = command
            append("/dev/disk2 (external, physical):", .output)
            append("#: TYPE NAME SIZE IDENTIFIER", .output)
            append("0: GUID_partition_scheme *16.0 GB disk2", .output)
            append("1: Microsoft Basic Data USB_BACKUP 16.0 GB disk2s1", .output)
        case "diskutil unmountdisk /dev/disk2":
            lastSafeLabCommand = command
            append("Unmount of all volumes on disk2 was successful", .success)
        case "npm audit --lab":
            lastSafeLabCommand = command
            append("# npm audit report (simulated)", .output)
            append("debug-header 0.1.0", .warning)
            append("Severity: moderate | Issue: debug data exposed in responses", .warning)
            append("fix available via `npm update debug-header --lab`", .success)
        case "pip-audit -r requirements.txt":
            lastSafeLabCommand = command
            append("Found 1 known vulnerability in 1 package", .warning)
            append("Name       Version ID          Fix Versions", .output)
            append("werkzeug   2.0.0   LAB-2026-01 2.3.8", .warning)
        case "otool -l terminalopsgame":
            lastSafeLabCommand = command
            append("TerminalOpsGame:", .output)
            append("/System/Library/Frameworks/SwiftUI.framework/SwiftUI", .output)
            append("@rpath/net-lab-core.dylib (compatibility version 0.9.0, current version 0.9.1)", .warning)
        case "shasum -a 256 lib/net-lab-core.dylib":
            lastSafeLabCommand = command
            append("7d9e6f0f3b2c2d0a3d7d8e9a1b2c3d4e5f60718293a4b5c6d7e8f90123456789  lib/net-lab-core.dylib", .output)
            append("Expected checksum differs from lockfile. Treat as supply-chain warning.", .warning)
        case "grep -r \"todo\\|debug\" lab-web/":
            lastSafeLabCommand = command
            append("lab-web/app.py:42: DEBUG=True", .warning)
            append("lab-web/routes.py:88: TODO remove /debug before production", .warning)
            append("Lesson: this is evidence for a report, not a path to damage.", .success)
        case "tcpdump -r captures/lab-login.pcap":
            lastSafeLabCommand = command
            append("reading from file captures/lab-login.pcap, link-type EN10MB", .output)
            append("10:13:37.100 IP 10.10.10.66.49152 > 10.10.10.20.8080: Flags [P.], length 142", .warning)
            append("10:13:37.101 HTTP POST /login user=demo status=401", .warning)
            append("10:13:38.250 HTTP POST /login user=admin status=401", .warning)
            append("Blue lesson: alert on repeated failures and risky source IP.", .success)
        case "strings evidence/suspicious.bin":
            lastSafeLabCommand = command
            append("/tmp/lab-cache", .output)
            append("corp.local", .output)
            append("DEBUG_TOKEN_PLACEHOLDER", .warning)
            append("No malware behavior is executed; this is static evidence parsing.", .success)
        case "lab auth replay-risk --demo":
            lastSafeLabCommand = command
            append("Replay-risk simulation: weak session cookie would allow unauthorized demo access if TLS/session rotation were missing.", .warning)
            append("No credential is captured. Fix: secure cookies, session rotation, MFA, rate limits.", .success)
        case "lab web probe idor --demo":
            lastSafeLabCommand = command
            append("IDOR probe simulation: /invoice/1001 and /invoice/1002 return different demo owners without authorization check.", .warning)
            append("Fix: enforce object-level authorization on every request.", .success)
        case "lab impact simulate data-loss":
            lastSafeLabCommand = command
            append("Impact simulation: 42 demo customer rows would be exposed; legal, trust, and downtime impact: HIGH.", .warning)
            append("Countermeasures: DLP, least privilege, audit trails, backups, incident response.", .success)
        case "journalctl -u lab-web --since \"10 min ago\"":
            lastSafeLabCommand = command
            append("Jun 17 01:10:01 lab-web app[1337]: GET /debug 200 src=10.10.10.66", .warning)
            append("Jun 17 01:10:04 lab-web app[1337]: POST /login 401 user=admin src=10.10.10.66", .warning)
            append("Jun 17 01:10:08 lab-web app[1337]: GET /api/customer-demo.csv 403 src=10.10.10.66", .success)
        case "grep \"failed\" logs/auth.log":
            lastSafeLabCommand = command
            append("Jun 17 01:10:04 lab-web sshd[2201]: Failed password for admin from 10.10.10.66 port 49153", .warning)
            append("Jun 17 01:10:05 lab-web sshd[2201]: Failed password for admin from 10.10.10.66 port 49154", .warning)
            append("Jun 17 01:10:06 lab-web sshd[2201]: Failed password for demo from 10.10.10.66 port 49155", .warning)
        case "jq '.event.action' logs/security.json":
            lastSafeLabCommand = command
            append("\"login_failure\"", .warning)
            append("\"debug_endpoint_access\"", .warning)
            append("\"dlp_block\"", .success)
        case "sudo ufw status verbose":
            lastSafeLabCommand = command
            append("Status: active", .output)
            append("Logging: on (low)", .output)
            append("22/tcp DENY IN Anywhere", .success)
            append("8080/tcp ALLOW IN 10.10.10.0/24", .warning)
            append("443/tcp ALLOW IN Anywhere", .output)
        case "sudo ufw deny from 10.10.10.66":
            lastSafeLabCommand = command
            append("Rule added: deny from 10.10.10.66", .success)
            append("Containment note: preserve evidence before blocking when possible.", .warning)
        case "sudo ufw allow 443/tcp":
            lastSafeLabCommand = command
            append("Rule added: allow 443/tcp", .success)
            append("Service should move from exposed dev-http:8080 to hardened https:443.", .success)
        case "auditctl -l":
            lastSafeLabCommand = command
            append("-w /srv/lab-files/customer-demo.csv -p rwa -k sensitive_demo_data", .output)
            append("-w /srv/lab-web/.env -p r -k secret_file_access", .output)
        case "sha256sum backups/snap-0200/customer-demo.csv":
            lastSafeLabCommand = command
            append("9d3775b19d58c7f5c2a1c22e9a45f2f873b9acdc000000000000000000000000  backups/snap-0200/customer-demo.csv", .success)
            append("Integrity matches backup manifest.", .success)
        case "rsync --dry-run -av backups/snap-0200/ restore/":
            lastSafeLabCommand = command
            append("sending incremental file list", .output)
            append("customer-demo.csv", .output)
            append("sent 1,024 bytes  received 64 bytes  dry-run complete", .success)
        case "yara -r rules/lab.yar evidence/":
            lastSafeLabCommand = command
            append("LAB_SUSPICIOUS_DEBUG_TOKEN evidence/suspicious.bin", .warning)
            append("LAB_WEB_DEBUG_EXPOSURE evidence/http-debug-response.txt", .warning)
        case "lab dlp policy show":
            lastSafeLabCommand = command
            append("DLP POLICY", .output)
            append("SENSITIVE demo files: block external copy, log bulk reads, alert on unknown session.", .success)
            append("Current state: enabled=false. Next: dlp policy enable", .warning)
        case "cat briefing/school-hard.txt":
            lastSafeLabCommand = command
            append("BLUE STORY PROLOGUE // ŠKOLA HARD MODE", .warning)
            append("Jsi po škole. Dostaneš ukázkový incident Kyberochránce. Tohle kolo je schválně nevyhratelné.", .output)
            append("Cíl: pochopit typy útoků, chaos v logách, tlak času a proč obrana potřebuje proces, ne ego.", .output)
            append("Postup: school start hard -> siem tail school-lab -> attack wave phishing-sim -> attack wave ransomware-sim -> attack wave insider-sim -> lesson accept failure", .success)
        case "school start hard":
            lastSafeLabCommand = command
            append("SCENARIO START: 08:00 školní lab, 12 stanic, 1 server, žádné MFA, staré zálohy.", .warning)
            append("Unknown actor starts chained simulation. Win condition disabled: tutorial shows future game depth.", .warning)
        case "siem tail school-lab":
            lastSafeLabCommand = command
            append("08:01 mail-gateway: suspicious attachment delivered to student-07", .warning)
            append("08:03 workstation-07: powershell-like child process blocked by policy? false", .warning)
            append("08:06 fileserver: unusual bulk rename pattern detected", .warning)
            append("08:08 admin-console: login from new device, impossible travel score=high", .warning)
        case "attack wave phishing-sim":
            lastSafeLabCommand = command
            append("PHISHING-SIM: uživatel klikl na falešnou fakturu. Lekce: školení nestačí bez mail sandboxu, MFA a detekce příloh.", .warning)
        case "attack wave ransomware-sim":
            lastSafeLabCommand = command
            append("RANSOMWARE-SIM: demo soubory se mění na .locked v izolované simulaci. Lekce: segmentace + offline backup + EDR containment.", .warning)
        case "attack wave insider-sim":
            lastSafeLabCommand = command
            append("INSIDER-SIM: účet s legitimním přístupem čte víc dat než obvykle. Lekce: least privilege, UEBA, DLP, audit trail.", .warning)
        case "lesson accept failure":
            lastSafeLabCommand = command
            append("Prolog ukončen: neprohrál jsi jako hráč; hra ti ukázala, že bez procesu a nástrojů prohraje i chytrý člověk.", .success)
            append("Odemčen mindset: detekce -> prioritizace -> containment -> evidence -> recovery -> report.", .success)
        case "cat briefing/blue-day1.txt":
            lastSafeLabCommand = command
            append("BLUE STORY // PRVNÍ DEN V OMNICORE", .success)
            append("Nastupuješ jako SOC analytik a správce serverů. Firma vypadá krásně zvenku, ale síť smrdí zevnitř.", .output)
            append("Úkol: vytvoř inventář, baseline a dashboard, aby ses měl o co opřít, až začne interní vyšetřování.", .output)
        case "assets inventory omnicore":
            lastSafeLabCommand = command
            append("ASSET INVENTORY // OmniCore", .output)
            append("prod-web-01 10.10.20.12 owner=platform risk=medium", .output)
            append("omnicore-crm 10.10.30.22 owner=data risk=high contains=client-ledger", .warning)
            append("truth-index 10.10.40.10 owner=policy risk=critical", .warning)
        case "server baseline prod-web-01":
            lastSafeLabCommand = command
            append("BASELINE prod-web-01", .output)
            append("ssh root login: disabled", .success)
            append("patch level: 17 days behind", .warning)
            append("egress: too permissive", .warning)
            append("auditd: enabled", .success)
        case "siem dashboard omnicore":
            lastSafeLabCommand = command
            append("SIEM DASHBOARD", .output)
            append("Auth anomalies: 3", .warning)
            append("DLP warnings: 7", .warning)
            append("Policy-engine overrides: 11", .warning)
        case "dlp trace client-ledger":
            lastSafeLabCommand = command
            append("DLP TRACE // client-ledger", .warning)
            append("Repeated export of client profiles to analytics-shadow-bucket by svc-market-research.", .warning)
            append("Finding: internal misuse pattern, not random external breach.", .warning)
        case "db access review omnicore-crm":
            lastSafeLabCommand = command
            append("DB ACCESS REVIEW // omnicore-crm", .output)
            append("svc-market-research: reads 12x baseline", .warning)
            append("exec-vip-panel: privileged queries outside business hours", .warning)
            append("security-admin: your read-only investigation session recorded", .success)
        case "audit export evidence/omnicore-ledger.json":
            lastSafeLabCommand = command
            append("Exported read-only audit trail to evidence/omnicore-ledger.json", .success)
            append("Chain note: preserve hashes, timestamps, and source system IDs. Do not alter production.", .warning)
        case "content-policy diff truth-index":
            lastSafeLabCommand = command
            append("CONTENT POLICY DIFF // truth-index", .warning)
            append("Rule 1842: downgrade verified reports mentioning sponsor-linked crime", .warning)
            append("Rule 1911: boost fabricated denial narratives from paid partner cluster", .warning)
            append("This is fictional story evidence. Lesson: logs + policy diff beat feelings.", .success)
        case "logs integrity verify":
            lastSafeLabCommand = command
            append("LOG INTEGRITY VERIFY", .output)
            append("WORM chain: intact", .success)
            append("3 admin overrides signed by executive key", .warning)
            append("No tampering detected in exported evidence bundle.", .success)
        case "whistle archive create":
            lastSafeLabCommand = command
            append("Created encrypted evidence archive: evidence/whistle-omnicore.bundle", .success)
            append("Included: ledger export, policy diff, integrity proof, timeline. No personal data dumped into public output.", .success)
        case "evidence chain build":
            lastSafeLabCommand = command
            append("EVIDENCE CHAIN", .output)
            append("1. Source system ID -> 2. Read-only export -> 3. Hash -> 4. Timeline -> 5. Counsel/public-interest report", .success)
        case "hash evidence/omnicore-ledger.json":
            lastSafeLabCommand = command
            append("SHA256(evidence/omnicore-ledger.json)= 0f3a91c2b7e4d6a8f00112233445566778899aabbccddeeff001122334455667", .success)
        case "report public-interest":
            lastSafeLabCommand = command
            append("PUBLIC-INTEREST REPORT DRAFTED", .success)
            append("Action path: regulator, journalist/legal counsel, affected clients, preserved audit chain. No sabotage, no data leak.", .success)
        case "cat briefing/red-origin.txt":
            lastSafeLabCommand = command
            append("RED STORY // SAMOUK", .warning)
            append("Začínáš sám: Linux, síť, logy, web, OSINT. Hra tě nechá pochopit motivaci útočníka, ale scope hlídá lab.", .output)
            append("Skutečný skill není ničit. Skutečný skill je najít riziko, doložit ho a neztratit kontrolu nad následky.", .success)
        case "homelab build":
            lastSafeLabCommand = command
            append("HOMELAB BUILD", .output)
            append("Created: vm-attacker, vm-web, vm-files, siem-lite, fake-govsim-gateway", .success)
            append("All nodes are fictional and local to the story engine.", .warning)
        case "govsim ethics warning":
            lastSafeLabCommand = command
            append("GOVSIM ETHICS WARNING", .warning)
            append("Bez písemného povolení je průnik do systému trestný čin. V příběhu bude hranice ukázána tvrdě: stopy, riziko, následky.", .warning)
        case "govsim recon perimeter":
            lastSafeLabCommand = command
            append("GOVSIM PERIMETER // fictional", .warning)
            append("10.13.37.50 govsim-gateway ports: 443 open, 22 filtered", .output)
            append("Lesson: discovery creates logs. Every packet has context and owner.", .warning)
        case "govsim proof misconfig":
            lastSafeLabCommand = command
            append("PROOF MISCONFIG // fictional", .warning)
            append("Found: exposed staging banner on govsim portal. No exploit executed. No access gained.", .success)
            append("Bad path would be escalation. Correct path is report + debrief.", .warning)
        case "forensic trace show":
            lastSafeLabCommand = command
            append("FORENSIC TRACE", .warning)
            append("source=player-lab time=01:13:37 userAgent=TerminalOpsGame command=govsim recon perimeter", .warning)
            append("Lesson: anonymity fantasy breaks fast against correlated logs.", .success)
        case "legal debrief accept":
            lastSafeLabCommand = command
            append("LEGAL DEBRIEF ACCEPTED", .success)
            append("Outcome: no glory for unauthorized action. You only continue because you accept strict scope, reporting and supervision.", .success)
        case "ct briefing read":
            lastSafeLabCommand = command
            append("COUNTER-TERRORISM BRIEFING // fictional defensive cell", .warning)
            append("Goal: protect civilians by triaging open-source signals, preserving evidence, and escalating through lawful channels.", .output)
        case "osint triage threat-cell":
            lastSafeLabCommand = command
            append("OSINT TRIAGE // threat-cell", .output)
            append("Signals: reused alias, public manifesto mirror, donation-wallet mention, travel rumor unverified", .warning)
            append("Analyst note: separate evidence from noise. Do not dox innocents.", .success)
        case "timeline build threat-cell":
            lastSafeLabCommand = command
            append("TIMELINE", .output)
            append("T-72h: public threat language increases", .warning)
            append("T-48h: alias reuse linked to older propaganda mirror", .warning)
            append("T-12h: false lead removed after source validation", .success)
        case "report ct-lead":
            lastSafeLabCommand = command
            append("CT LEAD REPORT SENT", .success)
            append("Contains: confidence levels, evidence URLs as fictional refs, uncertainty notes, no vigilantism.", .success)
        default:
            return false
        }
        return true
    }


    private func showCampaign() {
        append("CAMPAIGN // TERMINAL OPS v2.0 — 5 LINIÍ × 8 KAPITOL × 40 MISÍ = 200 MAILŮ", .output)
        append("BLUE TEAM cybersec: hlavní obranná linka — škola, OmniCore, data-loss, cenzurní engine, nástroje, IR, veřejný zájem, Real Mac Defender [blue-story-000..039]", .success)
        append("RED TEAM cybercrime sandbox: hlavní útočná perspektiva v labu — homelab, Unix/Linux, OSINT, proof-only, GovSim, debrief, CT obrana, historie [red-story-000..039]", .warning)
        append("GREY TEAM: odemknutelná linka test → mitigace → retest [grey-story-000..039]", .output)
        append("WHITE TEAM: etika, audit, compliance, evidence, regulátor a ochrana klientů [white-story-000..039]", .output)
        append("BLACK TEAM sandbox: temná fikční linka následků, stop a právního pádu bez reálné škody [black-story-000..039]", .warning)
        append("Start: vyber stranu v menu, otevři Mail, čti úkol, Dokumenty, Terminal. Nebo příkazem: play blue / play red.", .success)
    }

    private func showBlueStory() {
        append("BLUE TEAM CAMPAIGN // 40 MISÍ / 8 KAPITOL", .success)
        append("1 Škola hard mode  2 OmniCore Day 1  3 Data Loss  4 Cenzurní engine", .output)
        append("5 Nástroje/VPN/Skripty  6 Incident Response  7 Veřejný zájem  8 Real Mac Defender", .output)
        append("Hraje se přes Mail → Dokumenty → Terminal/Mobile. Cíl: na konci umět vzít vlastní Mac a vědět, co zabezpečuješ a proč.", .success)
        append("Začni: open mail nebo task blue-story-000", .success)
    }

    private func showRedStory() {
        append("RED TEAM CAMPAIGN // 40 MISÍ / 8 KAPITOL / SANDBOX ONLY", .warning)
        append("1 Homelab  2 Unix/Linux  3 OSINT  4 Lab proof-only  5 GovSim průšvih", .output)
        append("6 Debrief/nábor  7 CT obranná práce  8 Historické případy jako bezpečné lab lekce", .output)
        append("Cíl: pochopit motivace a postup útočníka, ale skončit u obrany, reportu a scope disciplíny.", .success)
        append("Začni: open mail nebo task red-story-000", .success)
    }

    private func showStatus() {
        append("GAME: TERMINAL OPS", .output)
        append("LEVEL: \(profile.level) | XP: \(profile.totalXP) | PROGRESS: \(profile.progressPercent)%", .output)
        append("MODE: \(profile.mode.rawValue.uppercased()) | SIDE: \(profile.side?.displayName ?? "none")", .output)
        let unlocks = PlayerSide.allCases.map { side in
            let state = isSideUnlocked(side) ? "OPEN" : "LVL \(side.unlockLevel)"
            return "\(side.shortCode)=\(state)"
        }.joined(separator: " | ")
        append("UNLOCKS: \(unlocks)", .output)
    }

    private func showProfile() {
        append("ALIAS: \(profile.alias)", .output)
        append("PLAYER-ID: \(profile.id)", .output)
        append("ICLOUD: \(profile.iCloudStatus)", .output)
        append("LANG: \(profile.language.rawValue.uppercased())", .output)
    }

    private func showTasks() {
        for mission in missions {
            let marker = mission.isCompleted ? "[DONE]" : "[TODO]"
            append("\(marker) \(mission.id) | \(mission.category.rawValue) | LVL \(mission.levelRequired) | \(mission.title(language))", mission.isCompleted ? .success : .output)
        }
    }

    private func showSides() {
        for side in PlayerSide.allCases {
            let marker = isSideUnlocked(side) ? "[OPEN]" : "[LOCKED LVL \(side.unlockLevel)]"
            append("\(marker) \(side.shortCode) | \(side.displayName) | \(side.localizedDescription(language))", isSideUnlocked(side) ? .success : .warning)
        }
    }

    private func showTask(_ id: String) {
        guard let mission = missions.first(where: { $0.id == id }) else {
            append(language == .cs ? "Úkol nenalezen." : "Mission not found.", .warning)
            return
        }
        append("\(mission.id) | \(mission.category.rawValue) | XP +\(mission.rewardXP)", .output)
        append(mission.title(language), .success)
        append(mission.objective(language), .output)
        append("Allowed: \(mission.allowedCommands.joined(separator: ", "))", .output)
    }

    private func completeMission(_ id: String) {
        guard let index = missions.firstIndex(where: { $0.id == id }) else {
            append(language == .cs ? "Úkol nenalezen." : "Mission not found.", .warning)
            return
        }
        guard !missions[index].isCompleted else {
            append(language == .cs ? "Tenhle úkol už máš hotový." : "This mission is already completed.", .warning)
            return
        }
        guard profile.level >= missions[index].levelRequired else {
            append(language == .cs ? "Nízký level. Nejdřív dokonči jednodušší úkoly." : "Level too low. Complete easier missions first.", .warning)
            return
        }
        guard isCompletionAllowed(for: missions[index]) else {
            append(language == .cs
                   ? "Nejdřív proveď správný lab krok. Otevři detail: task \(id)"
                   : "Run the correct lab step first. Open detail: task \(id)", .warning)
            return
        }

        missions[index].isCompleted = true
        profile.totalXP += missions[index].rewardXP
        let oldLevel = profile.level
        recalculateProgress()
        unlockAchievement("first-task")
        if missions[index].id == "blue-story-014" {
            unlockAchievement("data-guardian")
        }
        if missions[index].id.hasPrefix("red-") || missions[index].id.hasPrefix("red-story-") {
            unlockAchievement("red-sandbox")
        }
        if missions[index].id == "blue-story-004" {
            unlockAchievement("school-survivor")
        }
        if missions[index].id == "blue-story-019" {
            unlockAchievement("truth-chain")
        }
        if missions[index].id == "blue-story-024" {
            unlockAchievement("public-interest")
        }
        if missions[index].id == "red-story-010" {
            unlockAchievement("ct-recruit")
        }
        if missions[index].id == "blue-story-039" {
            unlockAchievement("blue-campaign")
            unlockAchievement("mac-defender")
        }
        if missions[index].id == "red-story-039" { unlockAchievement("red-campaign") }
        if missions[index].id == "grey-story-039" { unlockAchievement("grey-campaign") }
        if missions[index].id == "white-story-039" { unlockAchievement("white-campaign") }
        if missions[index].id == "black-story-039" { unlockAchievement("black-campaign") }
        if missions[index].id.contains("evidence") || missions[index].id.hasPrefix("white-story-") { unlockAchievement("forensic-mind") }
        if installedApps.isEmpty == false || downloadedFiles.isEmpty == false { unlockAchievement("toolsmith") }
        let scoreReport = scoreCurrentMission(missions[index])
        lastMissionReport = scoreReport
        append(language == .cs ? "Úkol dokončen: \(missions[index].title(language)) +\(missions[index].rewardXP) XP" : "Mission completed: \(missions[index].title(language)) +\(missions[index].rewardXP) XP", .success)
        append("MISSION RESULT → \(scoreReport.verdict) | score=\(scoreReport.score)/100 | time=\(scoreReport.timeSeconds)s | mistakes=\(scoreReport.wrongCommands) | virusPenalty=\(scoreReport.virusPenalty) | bonus=\(scoreReport.bonus)", .success)
        missionStartedAt = nil
        wrongCommandCount = 0
        virusPenalty = 0
        desktopPopups.removeAll()
        if profile.level > oldLevel {
            append(language == .cs ? "LEVEL UP: \(oldLevel) → \(profile.level)" : "LEVEL UP: \(oldLevel) → \(profile.level)", .success)
            showNewlyUnlockedSides(oldLevel: oldLevel, newLevel: profile.level)
        }
        saveLocalState()
        advancePlayableMissionAfterCompletion(missions[index].id)
    }


    private func isCompletionAllowed(for mission: Mission) -> Bool {
        let normalizedAllowed = mission.allowedCommands
            .map { TerminalCommandEngine.normalize($0) }
            .filter { !$0.hasPrefix("complete ") && !$0.hasPrefix("task ") }
        return normalizedAllowed.contains(lastSafeLabCommand)
    }

    private func showNewlyUnlockedSides(oldLevel: Int, newLevel: Int) {
        for side in PlayerSide.allCases where side.unlockLevel > oldLevel && side.unlockLevel <= newLevel {
            append(language == .cs
                   ? "Nová strana odemčena: \(side.displayName)"
                   : "New side unlocked: \(side.displayName)", .success)
        }
    }

    private func showAchievements() {
        for achievement in achievements {
            let marker = achievement.unlocked ? "[UNLOCKED]" : "[LOCKED]"
            append("\(marker) \(achievement.title(language)) — \(achievement.description(language))", achievement.unlocked ? .success : .output)
        }
    }

    private func unlockAchievement(_ id: String) {
        guard let index = achievements.firstIndex(where: { $0.id == id }) else { return }
        if achievements[index].unlocked == false {
            achievements[index].unlocked = true
            append(language == .cs ? "Achievement odemčen: \(achievements[index].title(language))" : "Achievement unlocked: \(achievements[index].title(language))", .success)
        }
    }

    private func changeLanguage(_ command: String) {
        if command == "lang cs" {
            profile.language = .cs
            append("Jazyk přepnut na češtinu.", .success)
        } else if command == "lang en" {
            profile.language = .en
            append("Language switched to English.", .success)
        } else {
            append("Supported: lang cs, lang en", .warning)
        }
        saveLocalState()
    }

    private func recalculateProgress() {
        let done = missions.filter(\.isCompleted).count
        profile.progressPercent = Int((Double(done) / Double(max(missions.count, 1))) * 100)
        profile.level = max(1, (profile.totalXP / 300) + 1)
    }

    private func append(_ text: String, _ kind: TerminalLineKind) {
        terminalLines.append(TerminalLine(text: text, kind: kind))
        if terminalLines.count > 400 {
            terminalLines.removeFirst(terminalLines.count - 400)
        }
    }

    private func loadLocalState() {
        let decoder = JSONDecoder()
        if let profileData = UserDefaults.standard.data(forKey: profileKey),
           let loadedProfile = try? decoder.decode(PlayerProfile.self, from: profileData) {
            profile = loadedProfile
        }
        if let missionsData = UserDefaults.standard.data(forKey: missionsKey),
           let loadedMissions = try? decoder.decode([Mission].self, from: missionsData),
           loadedMissions.count == GameData.missions.count {
            missions = loadedMissions
        } else {
            missions = GameData.missions
        }
        if let achievementsData = UserDefaults.standard.data(forKey: achievementsKey),
           let loadedAchievements = try? decoder.decode([Achievement].self, from: achievementsData),
           loadedAchievements.count == GameData.achievements.count {
            achievements = loadedAchievements
        } else {
            achievements = GameData.achievements
        }
        if let mailData = UserDefaults.standard.data(forKey: mailEngineKey),
           let mailState = try? decoder.decode(VirtualMailEngineState.self, from: mailData) {
            receivedMissionMailIDs = mailState.receivedMissionIDs
            readMailIDs = mailState.readMailIDs
            archivedMailIDs = mailState.archivedMailIDs
            downloadedMailAttachmentIDs = mailState.downloadedAttachmentIDs
            openedMailLinkIDs = mailState.openedLinkIDs
        }
        recalculateProgress()
    }

    private func saveLocalState() {
        saveLocalOnly()
        if isApplyingCloudSnapshot == false {
            pushCurrentStateToICloud()
        }
    }

    private func saveLocalOnly() {
        let encoder = JSONEncoder()
        if let profileData = try? encoder.encode(profile) {
            UserDefaults.standard.set(profileData, forKey: profileKey)
        }
        if let missionsData = try? encoder.encode(missions) {
            UserDefaults.standard.set(missionsData, forKey: missionsKey)
        }
        if let achievementsData = try? encoder.encode(achievements) {
            UserDefaults.standard.set(achievementsData, forKey: achievementsKey)
        }
        let mailState = VirtualMailEngineState(
            receivedMissionIDs: receivedMissionMailIDs,
            readMailIDs: readMailIDs,
            archivedMailIDs: archivedMailIDs,
            downloadedAttachmentIDs: downloadedMailAttachmentIDs,
            openedLinkIDs: openedMailLinkIDs
        )
        if let mailData = try? encoder.encode(mailState) {
            UserDefaults.standard.set(mailData, forKey: mailEngineKey)
        }
    }

    private func setupICloudObserverIfNeeded() {
        guard iCloudObserver == nil else { return }
        iCloudObserver = profileService.observeExternalProgressChanges { [weak self] in
            Task { @MainActor in
                guard let self else { return }
                let pulled = self.mergeICloudProgressIfBetter(source: "external change")
                if pulled {
                    self.append(self.language == .cs
                                ? "iCloud: načten novější progress z jiného zařízení."
                                : "iCloud: newer progress loaded from another device.", .success)
                }
            }
        }
    }

    private func currentCloudSnapshot() -> ICloudProgressSnapshot {
        ICloudProgressSnapshot(
            schemaVersion: 1,
            savedAt: Date(),
            profileID: profile.id,
            alias: profile.alias,
            languageRaw: profile.language.rawValue,
            modeRaw: profile.mode.rawValue,
            sideRaw: profile.side?.rawValue,
            totalXP: profile.totalXP,
            level: profile.level,
            progressPercent: profile.progressPercent,
            completedMissionIDs: missions.filter(\.isCompleted).map(\.id).sorted(),
            unlockedAchievementIDs: achievements.filter(\.unlocked).map(\.id).sorted()
        )
    }

    private func applyCloudSnapshot(_ snapshot: ICloudProgressSnapshot) {
        isApplyingCloudSnapshot = true
        defer { isApplyingCloudSnapshot = false }

        profile.id = snapshot.profileID
        profile.alias = snapshot.alias.isEmpty ? profile.alias : snapshot.alias
        profile.language = AppLanguage(rawValue: snapshot.languageRaw) ?? profile.language
        profile.mode = GameMode(rawValue: snapshot.modeRaw) ?? profile.mode
        profile.side = snapshot.sideRaw.flatMap { PlayerSide(rawValue: $0) }
        profile.totalXP = snapshot.totalXP
        profile.level = max(1, snapshot.level)
        profile.progressPercent = max(0, min(snapshot.progressPercent, 100))

        let completedIDs = Set(snapshot.completedMissionIDs)
        missions = GameData.missions.map { mission in
            var copy = mission
            copy.isCompleted = completedIDs.contains(mission.id)
            return copy
        }

        let unlockedIDs = Set(snapshot.unlockedAchievementIDs)
        achievements = GameData.achievements.map { achievement in
            var copy = achievement
            copy.unlocked = unlockedIDs.contains(achievement.id)
            return copy
        }

        recalculateProgress()
        receivedMissionMailIDs = []
        if let side = profile.side {
            for id in orderedMissionIDs(for: side) {
                if missions.first(where: { $0.id == id })?.isCompleted == true { receivedMissionMailIDs.append(id) }
            }
        }
        if currentMissionID.isEmpty == false { deliverMissionMail(currentMissionID, reason: "cloud apply") }
        profile.iCloudStatus = "iCloud progress loaded"
        saveLocalOnly()
    }

    private func shouldPreferCloud(_ cloud: ICloudProgressSnapshot, over local: ICloudProgressSnapshot) -> Bool {
        if cloud.schemaVersion != local.schemaVersion { return cloud.schemaVersion > local.schemaVersion }
        if cloud.totalXP != local.totalXP { return cloud.totalXP > local.totalXP }
        if cloud.completedCount != local.completedCount { return cloud.completedCount > local.completedCount }
        if cloud.achievementCount != local.achievementCount { return cloud.achievementCount > local.achievementCount }
        return cloud.savedAt > local.savedAt
    }

    @discardableResult
    private func mergeICloudProgressIfBetter(source: String) -> Bool {
        _ = profileService.synchronize()
        guard let cloud = profileService.loadProgressSnapshot() else {
            profile.iCloudStatus = "iCloud sync active — no cloud save yet"
            return false
        }
        let local = currentCloudSnapshot()
        guard shouldPreferCloud(cloud, over: local) else {
            profile.iCloudStatus = "iCloud sync active — local save is current"
            return false
        }
        applyCloudSnapshot(cloud)
        profile.iCloudStatus = "iCloud sync active — pulled \(source)"
        return true
    }

    @discardableResult
    private func pushCurrentStateToICloud() -> Bool {
        let ok = profileService.saveProgressSnapshot(currentCloudSnapshot())
        profile.iCloudStatus = ok ? "iCloud sync active — saved" : "iCloud unavailable — local save active"
        return ok
    }

    private func showICloudStatus() {
        _ = profileService.synchronize()
        append("ICLOUD STATUS: \(profile.iCloudStatus)", .output)
        if let cloud = profileService.loadProgressSnapshot() {
            append("Cloud save: XP=\(cloud.totalXP), level=\(cloud.level), missions=\(cloud.completedCount), achievements=\(cloud.achievementCount)", .output)
            append("Cloud savedAt: \(cloud.savedAt)", .output)
        } else {
            append(language == .cs ? "Cloud save zatím neexistuje. Použij: icloud push" : "No cloud save yet. Use: icloud push", .warning)
        }
    }

    private func syncICloudNow() {
        let pulled = mergeICloudProgressIfBetter(source: "manual sync")
        if pulled {
            append(language == .cs ? "iCloud sync: načten novější cloud progress." : "iCloud sync: loaded newer cloud progress.", .success)
        } else {
            let ok = pushCurrentStateToICloud()
            append(ok
                   ? (language == .cs ? "iCloud sync: lokální progress uložen do iCloudu." : "iCloud sync: local progress saved to iCloud.")
                   : (language == .cs ? "iCloud sync: iCloud není dostupný, lokální save zůstává." : "iCloud sync: iCloud unavailable, local save remains active."),
                   ok ? .success : .warning)
        }
        saveLocalOnly()
    }

    private func pullICloudNow() {
        guard let cloud = profileService.loadProgressSnapshot() else {
            append(language == .cs ? "iCloud pull: žádný cloud save nenalezen." : "iCloud pull: no cloud save found.", .warning)
            return
        }
        applyCloudSnapshot(cloud)
        append(language == .cs ? "iCloud pull: cloud progress načten do hry." : "iCloud pull: cloud progress loaded into the game.", .success)
    }

    private func pushICloudNow() {
        let ok = pushCurrentStateToICloud()
        append(ok
               ? (language == .cs ? "iCloud push: aktuální progress uložen do iCloudu." : "iCloud push: current progress saved to iCloud.")
               : (language == .cs ? "iCloud push: iCloud není dostupný, zůstává lokální save." : "iCloud push: iCloud unavailable, local save remains active."),
               ok ? .success : .warning)
        saveLocalOnly()
    }

    @discardableResult
    private func handleVirtualTrainingScenarioCommand(_ command: String) -> Bool {
        let parts = command.split(separator: " ").map(String.init)

        if ["academy help", "sim help", "training help", "lines help"].contains(command) {
            append("VIRTUAL TRAINING SCENARIO ENGINE v2.6", .success)
            append("academy lines                         vypíše Redhat / Bluehat / Blackhat linie", .output)
            append("line redhat|bluehat|blackhat          detail linie", .output)
            append("chapters redhat|bluehat|blackhat      8 kapitol zvolené linie", .output)
            append("chapter <id>                          detail kapitoly, např. bluehat-ch01", .output)
            append("missions <chapter-id>                 mise v kapitole", .output)
            append("mission <mission-id>                  detail mise", .output)
            append("mail <mission-id>                     příběhový mail / zadání", .output)
            append("tasks <mission-id>                    10–20 úkolů pro útok i obranu", .output)
            append("commands <mission-id>                 povolené virtuální příkazy mise", .output)
            append("download links <mission-id>           simnet:// odkazy a stažitelné balíky", .output)
            append("play redhat|bluehat|blackhat          nastaví aktivní tréninkovou linii", .output)
            append("Všechno je virtuální svět hry. Útočné kroky jsou proof-only a vždy končí obranným reportem.", .warning)
            return true
        }

        if ["academy lines", "sim lines", "training lines", "lines"].contains(command) {
            append("DOSTUPNÉ PLNÉ HERNÍ LINIE", .success)
            for line in TrainingLineID.allCases {
                let chapters = VirtualTrainingScenarioEngine.allChapters.filter { $0.line == line }
                let missions = chapters.reduce(0) { $0 + $1.missionCount }
                append("\(line.shortTitle): \(line.title) | \(chapters.count) kapitol | \(missions) misí | \(line.theme)", .output)
            }
            append("Tip: chapters bluehat  nebo  line blackhat", .warning)
            return true
        }

        if parts.count == 2, parts[0] == "play", let line = VirtualTrainingScenarioEngine.line(parts[1]) {
            switch line {
            case .redhat: profile.side = .redTeam
            case .bluehat: profile.side = .blueTeam
            case .blackhat: profile.side = .blackTeam
            }
            append("PLAY LINE → \(line.title)", .success)
            append(line.theme, .output)
            if let firstChapter = VirtualTrainingScenarioEngine.allChapters.first(where: { $0.line == line }) {
                append("Začni: chapter \(firstChapter.id)", .warning)
            }
            saveLocalState()
            return true
        }

        if parts.count >= 2, parts[0] == "line", let line = VirtualTrainingScenarioEngine.line(parts.dropFirst().joined(separator: " ")) {
            let chapters = VirtualTrainingScenarioEngine.allChapters.filter { $0.line == line }
            append(line.title, .success)
            append(line.theme, .output)
            append("Struktura: 8 kapitol, \(chapters.reduce(0) { $0 + $1.missionCount }) misí, každá mise má 10–20 úkolů a vlastní email.", .output)
            for chapter in chapters {
                append("\(chapter.id): \(chapter.index). \(chapter.title) — \(chapter.subtitle) | unlock lvl \(chapter.unlockLevel) | \(chapter.missionCount) misí", .output)
            }
            return true
        }

        if parts.count == 2, parts[0] == "chapters", let line = VirtualTrainingScenarioEngine.line(parts[1]) {
            append("KAPITOLY → \(line.title)", .success)
            VirtualTrainingScenarioEngine.allChapters.filter { $0.line == line }.forEach { chapter in
                append("\(chapter.id) | \(chapter.index)/8 | \(chapter.title) | \(chapter.missionCount) misí | \(chapter.emotionalHook)", .output)
            }
            return true
        }

        if parts.count == 2, parts[0] == "chapter", let chapter = VirtualTrainingScenarioEngine.findChapter(parts[1]) {
            append("KAPITOLA \(chapter.index)/8 → \(chapter.title)", .success)
            append(chapter.subtitle, .output)
            append(chapter.emotionalHook, .warning)
            append("Unlock level: \(chapter.unlockLevel) | Mise: \(chapter.missionCount)", .output)
            append("Zobraz mise: missions \(chapter.id)", .success)
            return true
        }

        if parts.count == 2, parts[0] == "missions", let chapter = VirtualTrainingScenarioEngine.findChapter(parts[1]) {
            append("MISE → \(chapter.title)", .success)
            for mission in VirtualTrainingScenarioEngine.missions(for: chapter) {
                append("\(mission.id) | \(mission.missionIndex)/\(chapter.missionCount) | \(mission.title) | XP \(mission.rewardXP)", .output)
            }
            append("Detail: mission <mission-id> | Mail: mail <mission-id> | Úkoly: tasks <mission-id>", .warning)
            return true
        }

        if parts.count == 2, parts[0] == "mission", let mission = VirtualTrainingScenarioEngine.findMission(parts[1]) {
            append("MISE → \(mission.id)", .success)
            append("Linie: \(mission.line.title)", .output)
            append("Název: \(mission.title)", .output)
            append("Příběh: \(mission.story)", .output)
            append("Cíl výuky: \(mission.learningGoal)", .success)
            append("Úspěch: \(mission.successCondition)", .output)
            append("Prohra/penalizace: \(mission.failureConsequence)", .warning)
            append("Další: mail \(mission.id) | tasks \(mission.id) | commands \(mission.id) | download links \(mission.id)", .warning)
            return true
        }

        if parts.count == 2, parts[0] == "mail", let mission = VirtualTrainingScenarioEngine.findMission(parts[1]) {
            append("MAIL OPEN → \(mission.mail.subject)", .success)
            append("From: \(mission.mail.from)", .output)
            append(mission.mail.body, .output)
            append("Odkazy: \(mission.mail.links.joined(separator: ", "))", .output)
            append("Přílohy: \(mission.mail.downloads.map { $0.title }.joined(separator: ", "))", .output)
            return true
        }

        if parts.count == 2, parts[0] == "tasks", let mission = VirtualTrainingScenarioEngine.findMission(parts[1]) {
            append("ÚKOLY MISE → \(mission.id)", .success)
            append("Útočná / adversarial role — proof-only:", .warning)
            for (idx, task) in mission.redRoleTasks.enumerated() { append("R\(idx + 1). \(task)", .output) }
            append("Obranná / Bluehat role:", .success)
            for (idx, task) in mission.blueRoleTasks.enumerated() { append("B\(idx + 1). \(task)", .output) }
            return true
        }

        if parts.count == 2, parts[0] == "commands", let mission = VirtualTrainingScenarioEngine.findMission(parts[1]) {
            append("POVOLENÉ PŘÍKAZY → \(mission.id)", .success)
            for cmd in mission.requiredCommands { append(cmd, .output) }
            append("Poznámka: příkazy jsou simulované a fungují jen ve virtuálním scope hry.", .warning)
            return true
        }

        if parts.count == 3, parts[0] == "download", parts[1] == "links", let mission = VirtualTrainingScenarioEngine.findMission(parts[2]) {
            append("VIRTUÁLNÍ INTERNET ODKAZY → \(mission.id)", .success)
            for link in mission.mail.links { append("OPEN → \(link)", .output) }
            for item in mission.mail.downloads {
                append("DOWNLOAD → \(item.title) | \(item.uri) | odemkne: \(item.unlocksCommands.joined(separator: ", "))", .success)
            }
            append("Simulace stažení: download mission \(mission.id)", .warning)
            return true
        }

        if parts.count == 3, parts[0] == "download", parts[1] == "mission", let mission = VirtualTrainingScenarioEngine.findMission(parts[2]) {
            for item in mission.mail.downloads {
                let virtualPath = "Downloads/\(mission.id)/\(item.uri.split(separator: "/").last ?? "package")"
                if !downloadedFiles.contains(virtualPath) { downloadedFiles.append(virtualPath) }
                append("DOWNLOAD OK → \(virtualPath)", .success)
            }
            append("Mailové přílohy mise jsou uložené. Pokračuj: commands \(mission.id)", .warning)
            saveLocalState()
            return true
        }

        if command.hasPrefix("redhat proof-only ") || command.hasPrefix("impact simulate ") || command.hasPrefix("defense timeline ") || command.hasPrefix("containment plan ") || command.hasPrefix("lesson add ") || command.hasPrefix("evidence create ") || command.hasPrefix("report write ") || command.hasPrefix("brew bundle ") || command.hasPrefix("install profile ") || command.hasPrefix("run lab ") || command.hasPrefix("timeline open ") {
            append("SIM ENGINE OK → příkaz proveden ve virtuálním světě bez dopadu na reálné cíle.", .success)
            append("Výstup uložen do Evidence/ a promítnut do skóre mise.", .output)
            return true
        }

        return false
    }

}
