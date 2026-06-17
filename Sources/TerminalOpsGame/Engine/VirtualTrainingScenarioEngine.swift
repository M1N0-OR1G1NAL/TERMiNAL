import Foundation

enum TrainingLineID: String, CaseIterable, Identifiable {
    case redhat
    case bluehat
    case blackhat

    var id: String { rawValue }

    var title: String {
        switch self {
        case .redhat: return "Redhat — útočný výukový sandbox"
        case .bluehat: return "Bluehat — obranný výukový SOC"
        case .blackhat: return "Blackhat Timeline — útok vs obrana"
        }
    }

    var shortTitle: String { rawValue.uppercased() }

    var theme: String {
        switch self {
        case .redhat: return "Pochop motivaci, postup a chyby útočníka v povoleném virtuálním labu."
        case .bluehat: return "Zabezpeč systémy, čti logy, chraň data a nauč se incident response."
        case .blackhat: return "Historické incidenty jako časová osa: útočná role je proof-only, obranná role řeší realitu dopadu."
        }
    }
}

struct TrainingChapter: Identifiable, Equatable {
    let id: String
    let line: TrainingLineID
    let index: Int
    let title: String
    let subtitle: String
    let emotionalHook: String
    let unlockLevel: Int
    let missionCount: Int
}

struct TrainingDownload: Equatable {
    let id: String
    let title: String
    let uri: String
    let appOrTool: String
    let unlocksCommands: [String]
}

struct TrainingMail: Equatable {
    let id: String
    let from: String
    let subject: String
    let body: String
    let links: [String]
    let downloads: [TrainingDownload]
}

struct TrainingMission: Identifiable, Equatable {
    let id: String
    let line: TrainingLineID
    let chapterID: String
    let chapterIndex: Int
    let missionIndex: Int
    let title: String
    let story: String
    let learningGoal: String
    let redRoleTasks: [String]
    let blueRoleTasks: [String]
    let requiredCommands: [String]
    let mail: TrainingMail
    let successCondition: String
    let failureConsequence: String
    let rewardXP: Int
}

enum VirtualTrainingScenarioEngine {
    static let redhatChapters: [TrainingChapter] = [
        chapter(.redhat, 1, "Domácí homelab", "Linux/Unix, shell, soubory, scope", "Nikdo tě nevede. Buď si postavíš lab, nebo budeš jen klikat naslepo.", 1, 5),
        chapter(.redhat, 2, "OSINT a motivace", "indicie, zdroje, profil cíle", "Poprvé pochopíš, že útok nezačíná exploitem, ale informací.", 1, 5),
        chapter(.redhat, 3, "Síťová mapa", "scan, služby, segmenty", "Před tebou je síť. Každý port je otázka, ne pozvánka ke škodě.", 2, 5),
        chapter(.redhat, 4, "Webový lab", "HTTP, hlavičky, debug, input", "Web nevypadá nebezpečně. Právě proto se mu věří až moc.", 2, 5),
        chapter(.redhat, 5, "Identity a MFA", "hesla, tokeny, relace", "Jedna slabá identita může otevřít víc než tisíc firewallů.", 3, 5),
        chapter(.redhat, 6, "Automatizace a skripty", "bash, python, opakovatelnost", "Dobrý analytik neopakuje klikání. Přemýšlí, skriptuje a ověřuje.", 3, 5),
        chapter(.redhat, 7, "GovSim incident", "překročení hranice, forenzní stopa", "Tady zjistíš, že schopnost bez disciplíny je past.", 4, 5),
        chapter(.redhat, 8, "Přechod do obrany", "report, scope, debriefing", "Nezachrání tě talent. Zachrání tě důkaz, odpovědnost a přesný report.", 5, 5)
    ]

    static let bluehatChapters: [TrainingChapter] = [
        chapter(.bluehat, 1, "Škola hard mode", "prohra jako výukový šok", "Útočník tě povodí. Ne proto, aby tě ponížil, ale abys už nikdy nebral obranu lehce.", 1, 5),
        chapter(.bluehat, 2, "Nástup do SOC", "asset inventory, baseline, SIEM", "První směna. Všechno bliká. Ty musíš poznat, co je normální.", 1, 5),
        chapter(.bluehat, 3, "Ochrana dat", "DLP, šifrování, zálohy", "Data klientů nejsou soubory. Jsou to životy lidí, důvěra a odpovědnost.", 2, 5),
        chapter(.bluehat, 4, "Incident Response", "triage, containment, recovery", "Minuty rozhodují. Panika je drahá. Postup je zbraň obrany.", 2, 5),
        chapter(.bluehat, 5, "OmniCore stín", "interní zneužití, důkazy", "Firma, kterou chráníš, možná chrání hlavně svoje lži.", 3, 5),
        chapter(.bluehat, 6, "Cenzurní engine", "audit algoritmu, integrita logů", "Pravda mizí ne výbuchem, ale filtrem, pravidlem a tichým přepsáním.", 3, 5),
        chapter(.bluehat, 7, "Veřejný zájem", "evidence chain, whistle workflow", "Nesmíš se stát tím, proti čemu bojuješ. Důkaz musí přežít i soud.", 4, 5),
        chapter(.bluehat, 8, "Real Mac Defender", "zabezpečení vlastního Macu", "Na konci hry už nejde o OmniCore. Jde o tvůj skutečný Mac.", 5, 5)
    ]

    static let blackhatChapters: [TrainingChapter] = [
        chapter(.blackhat, 1, "Estonia 2007 — DDoS krize", "dostupnost služeb a obrana", "Když se vypne důvěra ve stát, nejde jen o weby. Jde o nervový systém společnosti.", 5, 12),
        chapter(.blackhat, 2, "Stuxnet 2010 — ICS lekce", "průmyslové řízení a izolace", "Digitální příkaz může mít fyzický následek. Tady se učíš respekt.", 5, 12),
        chapter(.blackhat, 3, "Target 2013 — dodavatelský vstup", "vendor access a segmentace", "Slabý partner může být dveřmi do silné firmy.", 5, 12),
        chapter(.blackhat, 4, "OPM 2015 — identita a data", "citlivé záznamy a monitoring", "Některá data se nedají vzít zpět. Jednou venku znamená navždy venku.", 5, 12),
        chapter(.blackhat, 5, "Ukraine Grid 2015 — dostupnost energie", "OT, vzdálený přístup, provoz", "Když zhasnou světla, incident už není graf v SIEMu.", 5, 12),
        chapter(.blackhat, 6, "WannaCry 2017 — šíření a patching", "legacy služby, zálohy, segmentace", "Jedna stará služba může zastavit nemocnici. Obrana začíná inventářem.", 5, 12),
        chapter(.blackhat, 7, "NotPetya 2017 — wiper v převleku", "supply-chain a obnova", "Někdy cílem není výkupné. Někdy je cílem spálit provoz.", 5, 12),
        chapter(.blackhat, 8, "SolarWinds / Colonial — důvěra a identita", "supply-chain, VPN, MFA, kontinuita", "Nejnebezpečnější útok vypadá jako legitimní proces.", 5, 12)
    ]

    static var allChapters: [TrainingChapter] { redhatChapters + bluehatChapters + blackhatChapters }

    static var allMissions: [TrainingMission] {
        allChapters.flatMap { missions(for: $0) }
    }

    static func chapter(_ line: TrainingLineID, _ index: Int, _ title: String, _ subtitle: String, _ hook: String, _ unlock: Int, _ missionCount: Int) -> TrainingChapter {
        TrainingChapter(id: "\(line.rawValue)-ch\(String(format: "%02d", index))", line: line, index: index, title: title, subtitle: subtitle, emotionalHook: hook, unlockLevel: unlock, missionCount: missionCount)
    }

    static func missions(for chapter: TrainingChapter) -> [TrainingMission] {
        switch chapter.line {
        case .redhat:
            return missionTitlesRedhat.enumerated().map { mission($0.offset + 1, title: $0.element, chapter: chapter) }
        case .bluehat:
            return missionTitlesBluehat.enumerated().map { mission($0.offset + 1, title: $0.element, chapter: chapter) }
        case .blackhat:
            return blackhatMissionTitles.enumerated().map { mission($0.offset + 1, title: $0.element, chapter: chapter) }
        }
    }

    private static let missionTitlesRedhat = ["Briefing a pravidla scope", "Průzkum bez škody", "Mapování lab prostředí", "Proof-only ověření", "Report a obranné doporučení"]
    private static let missionTitlesBluehat = ["Přijetí incident mailu", "Inventář a baseline", "Logy a podezřelé signály", "Opatření a ověření", "Report, archiv a další směna"]
    private static let blackhatMissionTitles = [
        "Časová osa události", "Motivace aktéra", "Povrch útoku v labu", "První varovné signály", "Proof-only simulace kroku", "Role obránce v první hodině",
        "Dopad na infrastrukturu", "Zadržení šíření", "Obnova služby", "Evidence chain", "Veřejná komunikace", "Poučení do budoucna"
    ]

    static func mission(_ number: Int, title: String, chapter: TrainingChapter) -> TrainingMission {
        let missionID = "\(chapter.id)-m\(String(format: "%02d", number))"
        let isBlack = chapter.line == .blackhat
        let downloadBase = "simnet://training/\(chapter.line.rawValue)/\(chapter.id)/\(missionID)"
        let downloads = [
            TrainingDownload(id: "dl-\(missionID)-brief", title: "Brief mise", uri: "\(downloadBase)/brief.md", appOrTool: "Dokumenty", unlocksCommands: ["cat Downloads/\(missionID)/brief.md"]),
            TrainingDownload(id: "dl-\(missionID)-lab", title: "Lab profil", uri: "\(downloadBase)/lab-profile.pkg", appOrTool: "Lab Profile", unlocksCommands: ["install profile \(missionID)", "run lab \(missionID)"]),
            TrainingDownload(id: "dl-\(missionID)-tools", title: "Doporučené OSS nástroje", uri: "\(downloadBase)/tools.json", appOrTool: "Homebrew manifest", unlocksCommands: ["brew bundle \(missionID)", "brew list"])
        ]
        let from: String
        switch chapter.line {
        case .redhat: from = "mentor@redhat.lab"
        case .bluehat: from = "mission-control@bluehat.soc"
        case .blackhat: from = "timeline@blackhat-history.sim"
        }
        let mail = TrainingMail(
            id: "mail-\(missionID)",
            from: from,
            subject: "[\(chapter.line.shortTitle)] \(chapter.index).\(number) — \(title)",
            body: mailBody(line: chapter.line, chapter: chapter, missionTitle: title, missionID: missionID),
            links: ["simnet://academy/\(chapter.line.rawValue)/\(chapter.id)", "simnet://docs/\(missionID)", "simnet://internet/search?q=\(chapter.title.replacingOccurrences(of: " ", with: "+"))"],
            downloads: downloads
        )
        return TrainingMission(
            id: missionID,
            line: chapter.line,
            chapterID: chapter.id,
            chapterIndex: chapter.index,
            missionIndex: number,
            title: title,
            story: storyText(line: chapter.line, chapter: chapter, missionTitle: title),
            learningGoal: learningGoal(line: chapter.line, chapter: chapter, missionTitle: title),
            redRoleTasks: taskList(line: chapter.line, chapter: chapter, role: "red", missionIndex: number, isBlack: isBlack),
            blueRoleTasks: taskList(line: chapter.line, chapter: chapter, role: "blue", missionIndex: number, isBlack: isBlack),
            requiredCommands: commands(line: chapter.line, chapter: chapter, missionID: missionID, missionIndex: number),
            mail: mail,
            successCondition: "Splň všechny kroky v labu, stáhni briefing, proveď pouze povolené příkazy a ulož report do Evidence/\(missionID).json.",
            failureConsequence: "Pomalá reakce nebo špatný příkaz zvyšuje chaos score, spouští popup/virus-sim a zhoršuje výsledné hodnocení mise.",
            rewardXP: isBlack ? 220 : 150
        )
    }

    static func mailBody(line: TrainingLineID, chapter: TrainingChapter, missionTitle: String, missionID: String) -> String {
        """
        Předmět mise: \(missionTitle)
        Kapitola: \(chapter.index)/8 — \(chapter.title)

        \(chapter.emotionalHook)

        Co máš udělat:
        1) otevři tento mail a archivuj ho,
        2) stáhni přiložený brief z virtuálního internetu,
        3) otevři odkazy v Safari / CLI,
        4) proveď povolené terminálové kroky,
        5) ulož výsledek do Evidence/\(missionID).json.

        Pozor: vše běží v simulačním světě. Útočná část je proof-only a obranná část vyžaduje report.
        """
    }

    static func storyText(line: TrainingLineID, chapter: TrainingChapter, missionTitle: String) -> String {
        switch line {
        case .redhat:
            return "Samouk řeší \(missionTitle.lowercased()) v kapitole \(chapter.title). Učí se chápat cestu útočníka, ale každý krok musí skončit obranným reportem."
        case .bluehat:
            return "SOC analytik dostává \(missionTitle.lowercased()). Čas běží, uživatelé panikaří a management chce jednoduchou odpověď. Ty potřebuješ důkaz."
        case .blackhat:
            return "Historická událost \(chapter.title) je převedená do virtuální časové osy. Hraješ útočnou i obrannou roli, abys pochopil příčinu, dopad a prevenci."
        }
    }

    static func learningGoal(line: TrainingLineID, chapter: TrainingChapter, missionTitle: String) -> String {
        switch line {
        case .redhat: return "Naučit se bezpečně ověřit riziko, držet scope a převést technický nález na obranné opatření."
        case .bluehat: return "Naučit se postup obrany: inventář, logy, indikátory, containment, recovery a srozumitelný report."
        case .blackhat: return "Naučit se časovou osu kritického incidentu: jak začal, proč prošel, co obrana zkusila a co mělo být hotové předem."
        }
    }

    static func taskList(line: TrainingLineID, chapter: TrainingChapter, role: String, missionIndex: Int, isBlack: Bool) -> [String] {
        let baseRed = [
            "Potvrď scope a virtuální cíle pro \(chapter.title).",
            "Vyhledej informace přes Safari SearchLab a CLI internet search.",
            "Stáhni brief a zkontroluj hash přiloženého balíčku.",
            "Nainstaluj doporučené OSS nástroje přes virtuální Homebrew.",
            "Spusť pouze proof-only ověření proti lab cíli.",
            "Zapiš, jaké stopy po sobě krok zanechal v logu.",
            "Odhadni dopad na uživatele nebo službu bez kopírování dat.",
            "Navrhni Bluehat mitigaci pro stejné riziko.",
            "Ulož evidence JSON do složky Evidence.",
            "Archivuj mail a uzavři misi reportem."
        ]
        let baseBlue = [
            "Přečti příchozí mail a urč prioritu incidentu.",
            "Otevři dokumentaci mise a ověř přílohy.",
            "Proveď inventář zasažených assetů.",
            "Zkontroluj logy a najdi první podezřelý signál.",
            "Ověř síťový stav a VPN/proxy kontext.",
            "Navrhni containment bez zničení důkazů.",
            "Ověř backup nebo restore dry-run.",
            "Sepiš časovou osu a rozhodnutí.",
            "Vytvoř report pro management i technický tým.",
            "Odemkni další mail splněním mise."
        ]
        let extraBlack = [
            "Porovnej útočnou a obrannou časovou osu.",
            "Vyhodnoť, co mělo být připravené před incidentem.",
            "Rozliš technickou příčinu, organizační selhání a dopad na veřejnost.",
            "Napiš krátké poučení do budoucího hardening checklistu."
        ]
        let core = role == "red" ? baseRed : baseBlue
        if isBlack { return Array((core + extraBlack).prefix(12 + (missionIndex % 4))) }
        return core
    }

    static func commands(line: TrainingLineID, chapter: TrainingChapter, missionID: String, missionIndex: Int) -> [String] {
        var items = [
            "mail open \(missionID)",
            "mail download \(missionID)",
            "open link simnet://docs/\(missionID)",
            "cat Downloads/\(missionID)/brief.md",
            "brew bundle \(missionID)",
            "vpn status",
            "evidence create \(missionID)",
            "report write \(missionID)",
            "mail archive \(missionID)",
            "complete \(missionID)"
        ]
        switch line {
        case .redhat:
            items.insert(contentsOf: ["internet search \(chapter.title)", "nmap -sV -Pn 10.10.10.20", "curl -I http://lab-web.corp.local:8080", "redhat proof-only \(missionID)"], at: 5)
        case .bluehat:
            items.insert(contentsOf: ["assets inventory omnicore", "journalctl -u lab-web --since 10m", "dlp classify", "backup verify", "ir contain lab-host"], at: 5)
        case .blackhat:
            items.insert(contentsOf: ["timeline open \(chapter.id)", "impact simulate \(missionID)", "defense timeline \(missionID)", "containment plan \(missionID)", "lesson add \(chapter.id)"], at: 5)
        }
        return items
    }

    static func findChapter(_ rawID: String) -> TrainingChapter? {
        let id = rawID.lowercased()
        return allChapters.first { $0.id == id || "\($0.line.rawValue)-\(String(format: "%02d", $0.index))" == id }
    }

    static func findMission(_ rawID: String) -> TrainingMission? {
        let id = rawID.lowercased()
        return allMissions.first { $0.id == id }
    }

    static func line(_ raw: String) -> TrainingLineID? {
        let value = raw.lowercased().replacingOccurrences(of: " ", with: "")
        if value.contains("redhat") || value == "red" { return .redhat }
        if value.contains("bluehat") || value == "blue" { return .bluehat }
        if value.contains("blackhat") || value == "black" { return .blackhat }
        return nil
    }
}
