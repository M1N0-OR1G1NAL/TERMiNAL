import Foundation

enum VirtualInterfaceKind: String, CaseIterable, Identifiable {
    case host
    case localhost
    case wifi
    case bluetooth
    case thunderbolt
    case lifi
    case airplay
    case icloud
    case usb
    case gnu
    case system
    case debug
    case crack
    case forensics

    var id: String { rawValue }
}

struct VirtualInterface: Identifiable, Equatable {
    let id: String
    let kind: VirtualInterfaceKind
    let name: String
    let address: String
    let status: String
    let risk: String
    let purposeCS: String
    let purposeEN: String
}

struct VirtualTrafficEvent: Identifiable, Equatable {
    let id: String
    let source: String
    let destination: String
    let protocolName: String
    let verdict: String
    let noteCS: String
    let noteEN: String
}

struct VirtualGuiModule: Identifiable, Equatable {
    let id: String
    let title: String
    let command: String
    let summaryCS: String
    let summaryEN: String
}

struct VirtualSyntaxExtension: Identifiable, Equatable {
    let id: String
    let name: String
    let trigger: String
    let summaryCS: String
    let summaryEN: String
}

enum VirtualMachineEnvironment {
    static let interfaces: [VirtualInterface] = [
        .init(id: "host0", kind: .host, name: "host bridge", address: "10.13.37.1", status: "up", risk: "medium", purposeCS: "Most mezi simulovaným MacBookem a tréninkovou sítí.", purposeEN: "Bridge between the simulated MacBook and the training network."),
        .init(id: "lo0", kind: .localhost, name: "localhost", address: "127.0.0.1", status: "up", risk: "low", purposeCS: "Lokální služby, debug porty a výukové API.", purposeEN: "Local services, debug ports and training APIs."),
        .init(id: "wifi0", kind: .wifi, name: "Wi-Fi SimNet", address: "10.10.10.66", status: "up", risk: "medium", purposeCS: "Virtuální bezdrátová síť s logy připojení.", purposeEN: "Virtual wireless network with connection logs."),
        .init(id: "bt0", kind: .bluetooth, name: "Bluetooth lab bus", address: "bt:lab:00:66", status: "monitor", risk: "medium", purposeCS: "Simulace párování, BLE beaconů a vstupních zařízení.", purposeEN: "Pairing, BLE beacon and input-device simulation."),
        .init(id: "tb0", kind: .thunderbolt, name: "Thunderbolt chain", address: "tb://dock-1", status: "guarded", risk: "high", purposeCS: "DMA/externí dok scénáře pouze jako forenzní simulace.", purposeEN: "DMA/external dock scenarios as forensic simulation only."),
        .init(id: "li0", kind: .lifi, name: "LiFi optical link", address: "lifi://lab-ceiling-2", status: "up", risk: "medium", purposeCS: "Optický kanál pro izolované mise bez reálného vysílání.", purposeEN: "Optical channel for isolated missions without real transmission."),
        .init(id: "ap0", kind: .airplay, name: "AirPlay mirror", address: "airplay://training-display", status: "standby", risk: "low", purposeCS: "Sdílení obrazovky do virtuální prezentační místnosti.", purposeEN: "Screen sharing to a virtual presentation room."),
        .init(id: "cloud0", kind: .icloud, name: "iCloud progress bus", address: "icloud://kv-progress", status: "sync", risk: "low", purposeCS: "Ukládání postupu, profilu a achievementů.", purposeEN: "Progress, profile and achievement sync."),
        .init(id: "usb0", kind: .usb, name: "USB evidence dock", address: "usb://evidence-stick", status: "mounted-ro", risk: "high", purposeCS: "Readonly důkazní média, hash kontrola a chain-of-custody.", purposeEN: "Read-only evidence media, hash checks and chain of custody."),
        .init(id: "gnu0", kind: .gnu, name: "GNU userland", address: "/usr/local/gnu-sim", status: "ready", risk: "low", purposeCS: "Coreutils, grep/sed/awk a shell pipeline simulace.", purposeEN: "Coreutils, grep/sed/awk and shell pipeline simulation."),
        .init(id: "sys0", kind: .system, name: "System policy", address: "system://policy", status: "enforcing", risk: "low", purposeCS: "Gatekeeper, firewall, privacy a sandbox zásady.", purposeEN: "Gatekeeper, firewall, privacy and sandbox policy."),
        .init(id: "dbg0", kind: .debug, name: "Debug console", address: "debug://localhost", status: "restricted", risk: "medium", purposeCS: "Logy a symboly bez úniku tajemství.", purposeEN: "Logs and symbols without secret leakage."),
        .init(id: "crk0", kind: .crack, name: "Crack lab", address: "crack://hash-audit", status: "offline-only", risk: "high", purposeCS: "Offline audit demo hashů a slabých hesel, žádné reálné credentialy.", purposeEN: "Offline audit of demo hashes and weak passwords, no real credentials."),
        .init(id: "for0", kind: .forensics, name: "Forensic timeline", address: "forensics://case-omnicore", status: "sealed", risk: "low", purposeCS: "Časová osa, artefakty, pcap, logy a report.", purposeEN: "Timeline, artifacts, pcaps, logs and report.")
    ]

    static let traffic: [VirtualTrafficEvent] = [
        .init(id: "t1", source: "wifi0/10.10.10.66", destination: "lab-web.corp.local:443", protocolName: "TLS", verdict: "allow", noteCS: "Běžné přihlášení do portálu.", noteEN: "Normal portal login."),
        .init(id: "t2", source: "lo0/127.0.0.1", destination: "localhost:9229", protocolName: "DEBUG", verdict: "watch", noteCS: "Debug port vyžaduje lokální token.", noteEN: "Debug port requires a local token."),
        .init(id: "t3", source: "usb0/evidence-stick", destination: "forensics://case-omnicore", protocolName: "HASH", verdict: "seal", noteCS: "Důkaz připojen readonly a zapečetěn hashem.", noteEN: "Evidence mounted read-only and sealed by hash."),
        .init(id: "t4", source: "bt0/beacon", destination: "system://privacy", protocolName: "BLE", verdict: "deny", noteCS: "Neznámý BLE beacon blokován zásadou soukromí.", noteEN: "Unknown BLE beacon blocked by privacy policy."),
        .init(id: "t5", source: "tb0/dock-1", destination: "host0/kernel", protocolName: "DMA", verdict: "quarantine", noteCS: "Thunderbolt DMA pokus přesunut do forenzního sandboxu.", noteEN: "Thunderbolt DMA attempt moved to forensic sandbox."),
        .init(id: "t6", source: "cloud0/profile", destination: "icloud://kv-progress", protocolName: "KVS", verdict: "sync", noteCS: "Postup synchronizován bez herních tajemství.", noteEN: "Progress synced without game secrets.")
    ]

    static let guiModules: [VirtualGuiModule] = [
        .init(id: "network", title: "Network Monitor", command: "gui open network", summaryCS: "Mapa rozhraní, provozu a firewall pravidel.", summaryEN: "Interface, traffic and firewall rule map."),
        .init(id: "packages", title: "Package Center", command: "gui open packages", summaryCS: "GUI pro virtuální Homebrew balíky a app bundle.", summaryEN: "GUI for virtual Homebrew packages and app bundles."),
        .init(id: "syntax", title: "Syntax Lab", command: "gui open syntax", summaryCS: "Rozšíření shellu, aliasy, profily a command packs.", summaryEN: "Shell extensions, aliases, profiles and command packs."),
        .init(id: "forensics", title: "Forensic Desk", command: "gui open forensics", summaryCS: "Timeline, evidence, pcap a report export.", summaryEN: "Timeline, evidence, pcaps and report export."),
        .init(id: "security", title: "Defend Security", command: "gui open security", summaryCS: "Firewall, DLP, EDR a hardening panel.", summaryEN: "Firewall, DLP, EDR and hardening panel.")
    ]

    static let syntaxExtensions: [VirtualSyntaxExtension] = [
        .init(id: "defend", name: "defend", trigger: "defend <asset>", summaryCS: "Zkratka pro zapnutí ochrany, sběr logů a mitigaci.", summaryEN: "Shortcut for protection, log collection and mitigation."),
        .init(id: "attack-sim", name: "attack-sim", trigger: "attack-sim <lab-target>", summaryCS: "Bezpečná simulace útočného kroku proti lab cíli.", summaryEN: "Safe attack-step simulation against a lab target."),
        .init(id: "evidence", name: "evidence", trigger: "evidence seal <path>", summaryCS: "Hash, podpis a uložení důkazního artefaktu.", summaryEN: "Hashing, signing and storing an evidence artifact."),
        .init(id: "trace", name: "trace", trigger: "trace route <interface>", summaryCS: "Virtuální trasa provozu mezi rozhraními.", summaryEN: "Virtual traffic route between interfaces."),
        .init(id: "policy", name: "policy", trigger: "policy enforce <rule>", summaryCS: "Aplikace firewall/privacy/DLP pravidla.", summaryEN: "Apply firewall/privacy/DLP rule.")
    ]

    static func interface(matching key: String) -> VirtualInterface? {
        let normalized = key.lowercased()
        return interfaces.first { item in
            item.id == normalized || item.kind.rawValue == normalized || item.name.lowercased().contains(normalized)
        }
    }
}
