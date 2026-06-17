import Foundation
import SwiftUI

enum AppLanguage: String, CaseIterable, Identifiable, Codable {
    case cs
    case en

    var id: String { rawValue }

    var title: String {
        switch self {
        case .cs: return "Čeština"
        case .en: return "English"
        }
    }

    func text(_ key: CopyKey) -> String {
        switch (self, key) {
        case (.cs, .appTitle): return "TERMiNAL"
        case (.en, .appTitle): return "TERMiNAL"
        case (.cs, .signInTitle): return "TERMiNAL"
        case (.en, .signInTitle): return "TERMiNAL"
        case (.cs, .signInSubtitle): return "Přihlas se přes Apple ID a synchronizuj postup přes iCloud."
        case (.en, .signInSubtitle): return "Sign in with Apple ID and sync progress through iCloud."
        case (.cs, .continueOffline): return "Pokračovat lokálně"
        case (.en, .continueOffline): return "Continue locally"
        case (.cs, .chooseLanguage): return "Vyber jazyk"
        case (.en, .chooseLanguage): return "Choose language"
        case (.cs, .chooseSide): return "Vyber stranu hráče"
        case (.en, .chooseSide): return "Choose player side"
        case (.cs, .start): return "Spustit"
        case (.en, .start): return "Start"
        case (.cs, .singleplayer): return "Singleplayer"
        case (.en, .singleplayer): return "Singleplayer"
        case (.cs, .multiplayer): return "Multiplayer"
        case (.en, .multiplayer): return "Multiplayer"
        case (.cs, .safeLab): return "Bezpečný výukový lab: vše je simulované, bez cizích reálných cílů."
        case (.en, .safeLab): return "Safe learning lab: everything is simulated, no real third-party targets."
        case (.cs, .loading): return "Načítám herní terminál…"
        case (.en, .loading): return "Loading game terminal…"
        case (.cs, .terminalReady): return "Terminál připraven. Napiš help."
        case (.en, .terminalReady): return "Terminal ready. Type help."
        }
    }
}

enum CopyKey {
    case appTitle
    case signInTitle
    case signInSubtitle
    case continueOffline
    case chooseLanguage
    case chooseSide
    case start
    case singleplayer
    case multiplayer
    case safeLab
    case loading
    case terminalReady
}

enum GamePhase: Codable, Equatable {
    case signIn
    case language
    case side
    case intro
    case desktop
    case terminal
}

enum DesktopApp: String, CaseIterable, Identifiable, Codable, Equatable {
    case mail
    case terminal
    case documents
    case safari
    case settings
    case storyLines
    case mobile

    var id: String { rawValue }

    var title: String {
        switch self {
        case .mail: return "Mail"
        case .terminal: return "Terminal"
        case .documents: return "Finder"
        case .safari: return "Safari"
        case .settings: return "Nastavení"
        case .storyLines: return "Story Lines"
        case .mobile: return "Mobile"
        }
    }

    var icon: String {
        switch self {
        case .mail: return "envelope.fill"
        case .terminal: return "terminal.fill"
        case .documents: return "folder.fill"
        case .safari: return "safari.fill"
        case .settings: return "gearshape.fill"
        case .storyLines: return "rectangle.grid.2x2.fill"
        case .mobile: return "iphone"
        }
    }
}

enum GameMode: String, CaseIterable, Identifiable, Codable, Hashable {
    case singleplayer
    case multiplayer

    var id: String { rawValue }
}

enum PlayerSide: String, CaseIterable, Identifiable, Codable, Hashable {
    case redTeam = "RedTeam"
    case blueTeam = "BlueTeam"
    case greyTeam = "GreyTeam"
    case blackTeam = "BlackTeam"
    case whiteTeam = "WhiteTeam"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .redTeam: return "Red Team cybercrime"
        case .blueTeam: return "Blue Team cybersec"
        case .greyTeam: return "Grey Team"
        case .blackTeam: return "Black Team"
        case .whiteTeam: return "White Team"
        }
    }

    var shortCode: String {
        switch self {
        case .redTeam: return "RED"
        case .blueTeam: return "BLU"
        case .greyTeam: return "GRY"
        case .blackTeam: return "BLK"
        case .whiteTeam: return "WHT"
        }
    }

    var unlockLevel: Int {
        switch self {
        case .redTeam, .blueTeam:
            return 1
        case .greyTeam:
            return 3
        case .whiteTeam:
            return 4
        case .blackTeam:
            return 5
        }
    }

    var isLockedAtStart: Bool {
        unlockLevel > 1
    }

    func lockText(_ language: AppLanguage) -> String {
        if language == .cs {
            return unlockLevel <= 1 ? "ODEMČENO" : "ODEMKNOUT NA LVL \(unlockLevel)"
        }
        return unlockLevel <= 1 ? "UNLOCKED" : "UNLOCK AT LVL \(unlockLevel)"
    }

    var descriptionCS: String {
        switch self {
        case .redTeam:
            return "Realistická cybercrime simulace v uzavřeném labu: scope, fake oběť, proof-only slabina, dopad ztráty dat a forenzní stopa. Bez reálných cílů."
        case .blueTeam:
            return "Cybersec obrana proti ztrátě dat: logy, DLP, zálohy, firewall, incident response, hardening a obnova."
        case .greyTeam:
            return "Odemknutelná kombinace útoku a obrany: testuješ slabinu a hned navrhuješ mitigaci."
        case .blackTeam:
            return "Odemknutelná temná sandbox role: riziko, stopy, dopady na oběť, opsec chyby a právní následky. Fiction only."
        case .whiteTeam:
            return "Odemknutelná etická role: audit, compliance, evidence, management report a odpovědné doporučení."
        }
    }

    var descriptionEN: String {
        switch self {
        case .redTeam:
            return "Realistic cybercrime simulation inside a closed lab: scope, fake victim, proof-only weakness, data-loss impact, and forensic traces. No real targets."
        case .blueTeam:
            return "Cybersec defense against data loss: logs, DLP, backups, firewall, incident response, hardening, and recovery."
        case .greyTeam:
            return "Unlockable attack-and-defense role: test a weakness and immediately design mitigation."
        case .blackTeam:
            return "Unlockable dark sandbox role: risk, traces, victim impact, opsec mistakes, and legal consequences. Fiction only."
        case .whiteTeam:
            return "Unlockable ethical role: audit, compliance, evidence, management report, and responsible recommendations."
        }
    }

    func localizedDescription(_ language: AppLanguage) -> String {
        language == .cs ? descriptionCS : descriptionEN
    }
}

struct PlayerProfile: Codable, Equatable {
    var id: String
    var alias: String
    var side: PlayerSide?
    var language: AppLanguage
    var mode: GameMode
    var iCloudStatus: String
    var totalXP: Int
    var level: Int
    var progressPercent: Int

    static let empty = PlayerProfile(
        id: UUID().uuidString,
        alias: "PLAYER-LOCAL",
        side: nil,
        language: .cs,
        mode: .singleplayer,
        iCloudStatus: "checking",
        totalXP: 0,
        level: 1,
        progressPercent: 0
    )
}

enum MissionCategory: String, CaseIterable, Identifiable, Codable {
    case osint = "OSINT"
    case network = "NETWORK"
    case portsetup = "PORTSETUP"
    case usb = "USB"
    case lib = "LIB"
    case history = "HISTORY"
    case redteam = "REDTEAM"
    case blueteam = "BLUETEAM"
    case greyteam = "GREYTEAM"
    case blackteam = "BLACKTEAM"
    case whiteteam = "WHITETEAM"

    var id: String { rawValue }
}

struct Mission: Identifiable, Codable, Equatable {
    let id: String
    let category: MissionCategory
    let titleCS: String
    let titleEN: String
    let objectiveCS: String
    let objectiveEN: String
    let allowedCommands: [String]
    let completionCommand: String
    let rewardXP: Int
    let levelRequired: Int
    var isCompleted: Bool

    func title(_ language: AppLanguage) -> String {
        language == .cs ? titleCS : titleEN
    }

    func objective(_ language: AppLanguage) -> String {
        language == .cs ? objectiveCS : objectiveEN
    }
}

struct Achievement: Identifiable, Codable, Equatable {
    let id: String
    let titleCS: String
    let titleEN: String
    let descriptionCS: String
    let descriptionEN: String
    var unlocked: Bool

    func title(_ language: AppLanguage) -> String {
        language == .cs ? titleCS : titleEN
    }

    func description(_ language: AppLanguage) -> String {
        language == .cs ? descriptionCS : descriptionEN
    }
}

struct TerminalLine: Identifiable, Equatable {
    let id = UUID()
    let text: String
    let kind: TerminalLineKind
}

enum TerminalLineKind: Equatable {
    case system
    case command
    case output
    case warning
    case success
}


struct VirtualMailItem: Identifiable, Codable, Equatable {
    let id: String
    let missionID: String
    let sender: String
    let subject: String
    let body: String
    let attachmentHint: String
    var isRead: Bool
    var isArchived: Bool
}


struct VirtualMailAttachment: Identifiable, Codable, Equatable {
    let id: String
    let fileName: String
    let virtualURL: String
    let targetPath: String
    let kind: String
}

struct VirtualMailLink: Identifiable, Codable, Equatable {
    let id: String
    let title: String
    let virtualURL: String
    let opensIn: DesktopApp
    let downloadAppID: String?
}

struct VirtualMailEngineState: Codable, Equatable {
    var receivedMissionIDs: [String] = []
    var readMailIDs: [String] = []
    var archivedMailIDs: [String] = []
    var downloadedAttachmentIDs: [String] = []
    var openedLinkIDs: [String] = []
}

struct VirtualFileItem: Identifiable, Codable, Equatable {
    let id: String
    let path: String
    let title: String
    let body: String
    let kind: String
}

struct MissionScoreReport: Identifiable, Codable, Equatable {
    let id: String
    let missionID: String
    let score: Int
    let timeSeconds: Int
    let wrongCommands: Int
    let virusPenalty: Int
    let bonus: Int
    let verdict: String
}
