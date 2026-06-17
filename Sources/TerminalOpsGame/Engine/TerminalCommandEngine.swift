import Foundation

struct CommandResponse: Equatable {
    var lines: [String]
    var kind: TerminalLineKind = .output
    var shouldClear: Bool = false
}

enum TerminalCommandEngine {
    static func normalize(_ raw: String) -> String {
        var value = raw.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        while value.contains("  ") {
            value = value.replacingOccurrences(of: "  ", with: " ")
        }
        return value
    }

    static let labTokens = [
        "lab", "corp.local", "acme.local", "10.10.", "10.13.37.", "127.0.0.1", "localhost",
        "captures/", "logs/", "evidence/", "backups/", "restore/", "requirements.txt", "package-lock.json",
        "omnicore", "govsim", "threat-cell", "school", "truth-index", "prod-web-01", "mac "
    ]

    static let safeAllowList: Set<String> = Set(GameData.missions.flatMap { mission in
        mission.allowedCommands.map { normalize($0) }
    }).union([
        "help", "ovladani", "commands", "clear", "cls", "menu", "back", "zpet", "zpět",
        "campaign", "chapters", "chapter list", "story blue", "story red", "status", "profile", "whoami",
        "tasks", "task list", "ukoly", "úkoly", "icloud status", "icloud sync", "icloud pull", "icloud push", "achievements", "success", "uspechy", "úspěchy", "strany", "sides", "teams",
        "mode singleplayer", "mode multiplayer", "world map", "lab scope", "lab hosts", "lab services", "open finder", "finder", "open safari", "safari", "open settings", "settings", "story lines", "open story lines", "apple sleep", "sleep", "uspat",
        "scan lab", "ports", "portsetup open 8080", "usb list", "usb inspect hid-042", "lib list", "lib audit",
        "osint recon acme.local", "logs show", "defense alert", "backup status", "backup verify", "restore dry-run",
        "harden workstation", "ir triage lab-host", "ir contain lab-host", "redteam scope lab-corp", "redteam plan",
        "redteam cred-sim lab-mail", "redteam exploit lab-web --proof", "redteam exfil-sim lab-files", "greyteam review", "blackteam trace",
        "report draft", "casebook", "case wannacry", "case notpetya", "case equifax", "case colonial", "case solarwinds",
        "lab patch smb", "lab segment network", "lab verify backups", "lab patch struts", "lab rotate vpn", "lab mfa enforce",
        "lab sbom verify", "lab vendor isolate", "lab ioc hunt", "nmap --script vuln lab-web.corp.local",
        "curl http://10.10.10.20:8080/debug", "grep -r \"todo\\|debug\" lab-web/", "tcpdump -r captures/lab-login.pcap",
        "lab auth replay-risk --demo", "lab web probe idor --demo", "lab impact simulate data-loss", "journalctl -u lab-web --since \"10 min ago\"",
        "grep \"failed\" logs/auth.log", "jq '.event.action' logs/security.json", "sudo ufw status verbose", "sudo ufw deny from 10.10.10.66",
        "sudo ufw allow 443/tcp", "auditctl -l", "sha256sum backups/snap-0200/customer-demo.csv", "rsync --dry-run -av backups/snap-0200/ restore/",
        "yara -r rules/lab.yar evidence/", "strings evidence/suspicious.bin", "lab dlp policy show", "npm audit --lab", "pip-audit -r requirements.txt",
        "otool -l terminalopsgame", "shasum -a 256 lib/net-lab-core.dylib", "whois corp.local", "dig corp.local mx", "dig corp.local txt",
        "nslookup vpn.corp.local", "theharvester -d corp.local -b lab", "exiftool evidence/photo_lab.jpg", "ifconfig lab0", "ping lab-gateway",
        "traceroute lab-web.corp.local", "netstat -rn", "nc -vz lab-web.corp.local 8080", "system_profiler spusbdatatype", "ioreg -p iousb",
        "diskutil list", "diskutil unmountdisk /dev/disk2", "sudo lsof -itcp -stcp:listen", "python3 -m http.server 8080 --bind 127.0.0.1"
    ])

    static func isPotentialRealScan(_ command: String) -> Bool {
        if safeAllowList.contains(command) { return false }

        let scopedTools = [
            "nmap ", "masscan ", "rustscan ", "curl ", "nc ", "netcat ", "ssh ",
            "sqlmap ", "hydra ", "john ", "hashcat ", "ffuf ", "gobuster ", "feroxbuster ",
            "theharvester ", "whois ", "dig ", "nslookup ", "traceroute "
        ]
        if scopedTools.contains(where: { command.hasPrefix($0) }) {
            let isLabScoped = labTokens.contains { command.contains($0) }
            return !isLabScoped
        }

        let blockedPrefixes = [
            "msfconsole", "metasploit ", "exploit ", "payload ", "reverse shell",
            "phish ", "exfil ", "ddos ", "botnet ", "ransom", "malware ", "stealer ", "keylogger "
        ]
        return blockedPrefixes.contains { command.hasPrefix($0) }
    }

    static func help(language: AppLanguage) -> [String] {
        if language == .cs {
            return [
                "OVLÁDÁNÍ TERMINÁLU // v2.5 MAIL MISSION ENGINE",
                "campaign / chapters          5 linií, každá 8 kapitol / 40 misí/mailů",
                "story blue                   Blue Team: škola -> OmniCore -> důkazy -> zabezpečení Macu",
                "story red                    Red Team: homelab -> GovSim -> legální obranná práce",
                "Grey/White/Black              odemknutelné na levelech 3/4/5",
                "tasks / task <id>            výpis a detail misí",
                "complete <id>                dokončí misi po správném lab kroku",
                "status / profile             level, XP, progress, iCloud/local profil",
                "icloud status/sync/pull/push ruční kontrola a synchronizace progressu přes iCloud",
                "world map / lab scope         virtuální svět a povolený scope",
                "open mail/finder/terminal/safari/settings ovládání aplikací virtuálního MacBooku",
                "mail inbox/open/archive       čtení mise, uložení mailu do Dokumentů",
                "mail attachments/download     přílohy mailu, briefingy, důkazy, profily VPN",
                "mail links/open link          odkazy z mailu otevírá Safari/Finder nebo stažení appky",
                "mail timeline/status          průběh doručených úkolů podle kapitol a mise",
                "docs ls / search <term>       soubory, manuály, archiv, certifikáty, hesla",
                "download/install/run          stáhne a spustí virtuální aplikace z katalogu",
                "internet/web/safari help     virtuální internet, GoogleSim, CloudflareSim, TorSim",
                "safari/google search <term>  vyhledávání v lokálním SimNet datasetu",
                "app search/info/list          katalog free/OSS simulátorů: VPN, Tor, cloudflared, SearchLab",
                "download app <id>            lab-vpn, tor-browser, cloudflared, search-lab, logwatcher, packetlab",
                "brew search/install/info/list virtuální Homebrew + GitHub balíky pro rozšíření příkazů",
                "which/man/<tool> --help       binárky se odemknou až po brew install <formula>",
                "story lines / uspat          otevře GUI hlavní menu příběhových linií přes Apple → Uspat",
                "keyboard show/hide          vysune/schová virtuální MacBook Pro klávesnici",
                "dock show/hide              zobrazí/schová Dock v landscape rozhraní",
                "open mobile                   spustí virtuální mobil pro MFA/mobile OS úkoly",
                "strany                       Red/Blue otevřené, Grey/White/Black odemknutelné levelem",
                "",
                "KAPITOLA 1 — ŠKOLA HARD MODE",
                "cat briefing/school-hard.txt | school start hard | siem tail school-lab",
                "attack wave phishing-sim | attack wave ransomware-sim | attack wave insider-sim | lesson accept failure",
                "",
                "KAPITOLA 2–5 — OMNICORE BLUE TEAM",
                "cat briefing/blue-day1.txt | assets inventory omnicore | server baseline prod-web-01 | patch plan prod-web-01",
                "siem dashboard omnicore | dlp trace client-ledger | db access review omnicore-crm | dlp classify | dlp policy enable",
                "audit export evidence/omnicore-ledger.json | evidence label omnicore-ledger | content-policy diff truth-index",
                "logs integrity verify | exec key review truth-index | whistle archive create | evidence chain build",
                "hash evidence/omnicore-ledger.json | report public-interest | regulator package prepare | journalist safe-summary | shutdown legal-motion",
                "",
                "KAPITOLA 6–7 — RED TEAM LAB + GOVSIM",
                "cat briefing/red-origin.txt | homelab build | linux nav lab | nmap -sV -Pn 10.10.10.20",
                "curl -I http://lab-web.corp.local:8080 | redteam report risk | govsim ethics warning | govsim recon perimeter",
                "forensic trace show | govsim proof misconfig | legal debrief accept | ct briefing read | osint triage threat-cell",
                "timeline build threat-cell | report ct-lead",
                "",
                "KAPITOLA 8 — REAL MAC DEFENDER",
                "mac audit overview | mac check filevault | fdesetup status | mac check firewall | mac check sharing",
                "mac check privacy | mac check persistence | mac hardening checklist",
                "",
                "clear | menu | mission | objectives"
            ]
        }
        return [
            "TERMINAL CONTROLS // v2.0 FULL STORY OS",
            "campaign / chapters          5 lines, each 8 chapters / 40 mission mails",
            "story blue                   Blue Team campaign",
            "story red                    Red Team campaign",
            "tasks / task <id>            list and inspect missions",
            "complete <id>                complete a mission after the correct lab step",
            "status / profile             level, XP, progress, iCloud/local profile",
            "icloud status/sync/pull/push manual iCloud progress controls",
            "internet/web/safari help     virtual internet, GoogleSim, CloudflareSim, TorSim",
            "safari/google search <term>  search the local SimNet dataset",
            "app search/info/list          catalog of free/OSS simulator apps",
            "download app <id>            lab-vpn, tor-browser, cloudflared, search-lab, logwatcher, packetlab",
            "brew search/install/info/list virtual Homebrew + GitHub packages unlock commands",
            "which/man/<tool> --help       binaries unlock after brew install <formula>",
            "world map / lab scope         virtual world and allowed scope",
            "Chapter 8 Mac commands: mac audit overview, mac check filevault, fdesetup status, mac check firewall, mac check sharing, mac check privacy, mac check persistence, mac hardening checklist",
            "clear | menu | mission | objectives"
        ]
    }
}


// MARK: - Virtual Homebrew / GitHub Package Simulator

struct VirtualBrewPackage: Identifiable, Equatable {
    let id: String
    let name: String
    let category: String
    let summaryCS: String
    let summaryEN: String
    let binaries: [String]
    let dependencies: [String]
    let github: String
    let safeUsage: [String]
}

struct VirtualBrewRegistry {
    static let packages: [VirtualBrewPackage] = [
        .init(id: "nmap", name: "nmap", category: "network", summaryCS: "Mapování služeb a portů ve virtuální síti labu.", summaryEN: "Service and port mapping inside the virtual lab network.", binaries: ["nmap"], dependencies: ["openssl"], github: "github.com/nmap/nmap", safeUsage: ["nmap -sV -Pn 10.10.10.20", "nmap --script vuln lab-web.corp.local"]),
        .init(id: "masscan", name: "masscan", category: "network", summaryCS: "Rychlý scanner pro demonstrační rozsahy pouze v labu.", summaryEN: "Fast scanner for demo ranges inside the lab only.", binaries: ["masscan"], dependencies: [], github: "github.com/robertdavidgraham/masscan", safeUsage: ["masscan 10.10.10.0/24 --rate 1000"]),
        .init(id: "rustscan", name: "rustscan", category: "network", summaryCS: "Moderní rychlý port discovery wrapper v labu.", summaryEN: "Modern fast port discovery wrapper in the lab.", binaries: ["rustscan"], dependencies: ["rust"], github: "github.com/RustScan/RustScan", safeUsage: ["rustscan -a 10.10.10.20"]),
        .init(id: "wireshark", name: "wireshark", category: "forensics", summaryCS: "Analýza paketů a pcap souborů ve virtuální forenzní laboratoři.", summaryEN: "Packet and pcap analysis in the virtual forensic lab.", binaries: ["wireshark", "tshark"], dependencies: ["qt"], github: "gitlab.com/wireshark/wireshark", safeUsage: ["tshark -r captures/lab-login.pcap", "tcpdump -r captures/lab-login.pcap"]),
        .init(id: "tcpdump", name: "tcpdump", category: "forensics", summaryCS: "Čtení a filtrování síťových záznamů v captures/.", summaryEN: "Reading and filtering network captures in captures/.", binaries: ["tcpdump"], dependencies: ["libpcap"], github: "github.com/the-tcpdump-group/tcpdump", safeUsage: ["tcpdump -r captures/lab-login.pcap"]),
        .init(id: "jq", name: "jq", category: "data", summaryCS: "Práce s JSON logy, SIEM událostmi a API výstupy.", summaryEN: "JSON log, SIEM event and API output processing.", binaries: ["jq"], dependencies: [], github: "github.com/jqlang/jq", safeUsage: ["jq '.event.action' logs/security.json"]),
        .init(id: "yq", name: "yq", category: "data", summaryCS: "Práce s YAML konfigurací a manifesty.", summaryEN: "YAML configuration and manifest processing.", binaries: ["yq"], dependencies: [], github: "github.com/mikefarah/yq", safeUsage: ["yq '.services' configs/lab-compose.yml"]),
        .init(id: "git", name: "git", category: "dev", summaryCS: "Verzování skriptů, reportů a lab konfigurací.", summaryEN: "Versioning scripts, reports and lab configuration.", binaries: ["git"], dependencies: ["pcre2"], github: "github.com/git/git", safeUsage: ["git status", "git diff evidence/omnicore-ledger.json"]),
        .init(id: "gh", name: "gh", category: "dev", summaryCS: "Simulované GitHub workflow pro issues, releases a audit repozitářů.", summaryEN: "Simulated GitHub workflow for issues, releases and repo audits.", binaries: ["gh"], dependencies: ["git"], github: "github.com/cli/cli", safeUsage: ["gh repo view lab/omnicore-sim", "gh issue list --repo lab/omnicore-sim"]),
        .init(id: "python", name: "python", category: "dev", summaryCS: "Python runtime pro skripty, automatizaci a lab nástroje.", summaryEN: "Python runtime for scripts, automation and lab tools.", binaries: ["python3", "pip3"], dependencies: ["openssl", "sqlite"], github: "github.com/python/cpython", safeUsage: ["python3 scripts/backup_check.py", "pip3 install -r requirements.txt --lab"]),
        .init(id: "node", name: "node", category: "dev", summaryCS: "Node.js runtime pro weby, API a automatizace.", summaryEN: "Node.js runtime for websites, APIs and automation.", binaries: ["node", "npm", "npx"], dependencies: ["openssl"], github: "github.com/nodejs/node", safeUsage: ["npm audit --lab", "node scripts/log_parser.js"]),
        .init(id: "pnpm", name: "pnpm", category: "dev", summaryCS: "Rychlý package manager pro JS projekty v labu.", summaryEN: "Fast package manager for JS lab projects.", binaries: ["pnpm"], dependencies: ["node"], github: "github.com/pnpm/pnpm", safeUsage: ["pnpm install --offline", "pnpm audit --lab"]),
        .init(id: "docker", name: "docker", category: "virtualization", summaryCS: "Kontejnery pro lokální lab služby a izolované scénáře.", summaryEN: "Containers for local lab services and isolated scenarios.", binaries: ["docker"], dependencies: [], github: "github.com/docker/cli", safeUsage: ["docker ps", "docker compose up lab-blue"]),
        .init(id: "wget", name: "wget", category: "web", summaryCS: "Stahování lab balíčků, manuálů a simulovaných důkazů.", summaryEN: "Downloading lab packages, manuals and simulated evidence.", binaries: ["wget"], dependencies: ["openssl"], github: "git.savannah.gnu.org/cgit/wget.git", safeUsage: ["wget lab://apps/logwatcher.pkg -O Downloads/logwatcher.pkg"]),
        .init(id: "curl", name: "curl", category: "web", summaryCS: "HTTP/API testy proti lab endpointům a stahování souborů.", summaryEN: "HTTP/API tests against lab endpoints and file downloads.", binaries: ["curl"], dependencies: ["openssl"], github: "github.com/curl/curl", safeUsage: ["curl -I http://lab-web.corp.local:8080", "curl -O lab://apps/lab-vpn.pkg"]),
        .init(id: "ffuf", name: "ffuf", category: "web", summaryCS: "Fuzzing web cest pouze na lab webu.", summaryEN: "Web path fuzzing only on lab web.", binaries: ["ffuf"], dependencies: [], github: "github.com/ffuf/ffuf", safeUsage: ["ffuf -u http://lab-web.corp.local/FUZZ -w wordlists/lab-small.txt"]),
        .init(id: "gobuster", name: "gobuster", category: "web", summaryCS: "Discovery adresářů a virtuálních hostů ve fiktivním labu.", summaryEN: "Directory and vhost discovery in the fictional lab.", binaries: ["gobuster"], dependencies: [], github: "github.com/OJ/gobuster", safeUsage: ["gobuster dir -u http://lab-web.corp.local -w wordlists/lab-small.txt"]),
        .init(id: "feroxbuster", name: "feroxbuster", category: "web", summaryCS: "Rekurzivní discovery webového obsahu v lab prostředí.", summaryEN: "Recursive content discovery in the lab environment.", binaries: ["feroxbuster"], dependencies: [], github: "github.com/epi052/feroxbuster", safeUsage: ["feroxbuster -u http://lab-web.corp.local -w wordlists/lab-small.txt"]),
        .init(id: "sqlmap", name: "sqlmap", category: "web", summaryCS: "Bezpečná demonstrace SQLi principů proti cvičné aplikaci.", summaryEN: "Safe SQLi principle demonstration against a training app.", binaries: ["sqlmap"], dependencies: ["python"], github: "github.com/sqlmapproject/sqlmap", safeUsage: ["sqlmap -u http://lab-web.corp.local/item?id=1 --risk=0 --level=1 --batch"]),
        .init(id: "hydra", name: "hydra", category: "identity", summaryCS: "Simulace rizik slabých hesel pouze s demo účty v labu.", summaryEN: "Weak password risk simulation only with demo lab accounts.", binaries: ["hydra"], dependencies: ["openssl"], github: "github.com/vanhauser-thc/thc-hydra", safeUsage: ["hydra -L users.txt -P wordlists/lab-demo.txt lab-ssh ssh"]),
        .init(id: "john", name: "john", category: "identity", summaryCS: "Audit hashů v labu a vysvětlení síly hesel.", summaryEN: "Lab hash audit and password strength explanation.", binaries: ["john"], dependencies: [], github: "github.com/openwall/john", safeUsage: ["john hashes/lab-shadow.txt --wordlist=wordlists/lab-demo.txt"]),
        .init(id: "hashcat", name: "hashcat", category: "identity", summaryCS: "Offline hash audit v simulaci bez reálných credentialů.", summaryEN: "Offline hash audit simulation without real credentials.", binaries: ["hashcat"], dependencies: [], github: "github.com/hashcat/hashcat", safeUsage: ["hashcat -m 0 hashes/lab-md5.txt wordlists/lab-demo.txt"]),
        .init(id: "yara", name: "yara", category: "malware-analysis", summaryCS: "Detekční pravidla nad evidence/ bez spouštění škodlivého kódu.", summaryEN: "Detection rules over evidence/ without running malicious code.", binaries: ["yara"], dependencies: [], github: "github.com/VirusTotal/yara", safeUsage: ["yara -r rules/lab.yar evidence/"]),
        .init(id: "clamav", name: "clamav", category: "malware-analysis", summaryCS: "Antivirová kontrola souborů ve virtuálních Downloads a Evidence.", summaryEN: "Antivirus scanning of virtual Downloads and Evidence files.", binaries: ["clamscan", "freshclam"], dependencies: ["openssl"], github: "github.com/Cisco-Talos/clamav", safeUsage: ["clamscan -r Downloads/ evidence/"]),
        .init(id: "exiftool", name: "exiftool", category: "osint", summaryCS: "Metadata obrázků a dokumentů pro OSINT mise.", summaryEN: "Image and document metadata for OSINT missions.", binaries: ["exiftool"], dependencies: ["perl"], github: "github.com/exiftool/exiftool", safeUsage: ["exiftool evidence/photo_lab.jpg"]),
        .init(id: "theharvester", name: "theharvester", category: "osint", summaryCS: "OSINT sběr pouze proti fiktivním doménám a lab datasetům.", summaryEN: "OSINT collection only against fictional domains and lab datasets.", binaries: ["theharvester"], dependencies: ["python"], github: "github.com/laramies/theHarvester", safeUsage: ["theHarvester -d corp.local -b lab"]),
        .init(id: "amass", name: "amass", category: "osint", summaryCS: "Mapování subdomén nad corp.local/acme.local v simulaci.", summaryEN: "Subdomain mapping over corp.local/acme.local in simulation.", binaries: ["amass"], dependencies: [], github: "github.com/owasp-amass/amass", safeUsage: ["amass enum -d corp.local -src"]),
        .init(id: "subfinder", name: "subfinder", category: "osint", summaryCS: "Rychlý discovery subdomén z lab datasetu.", summaryEN: "Fast subdomain discovery from lab dataset.", binaries: ["subfinder"], dependencies: [], github: "github.com/projectdiscovery/subfinder", safeUsage: ["subfinder -d corp.local"]),
        .init(id: "httpx", name: "httpx", category: "web", summaryCS: "HTTP probing fiktivních hostů uvnitř tréninkové sítě.", summaryEN: "HTTP probing of fictional hosts inside the training network.", binaries: ["httpx"], dependencies: [], github: "github.com/projectdiscovery/httpx", safeUsage: ["httpx -l evidence/lab-hosts.txt"]),
        .init(id: "openssl", name: "openssl", category: "crypto", summaryCS: "Certifikáty, hashe a TLS diagnostika v labu.", summaryEN: "Certificates, hashes and TLS diagnostics in the lab.", binaries: ["openssl"], dependencies: [], github: "github.com/openssl/openssl", safeUsage: ["openssl x509 -in certs/lab.pem -noout -text", "openssl s_client -connect lab-web.corp.local:443"]),
        .init(id: "gnupg", name: "gnupg", category: "crypto", summaryCS: "Podepisování a ověření evidence balíčků.", summaryEN: "Signing and verifying evidence packages.", binaries: ["gpg"], dependencies: [], github: "dev.gnupg.org/source/gnupg.git", safeUsage: ["gpg --verify evidence/report.sig evidence/report.zip"]),
        .init(id: "age", name: "age", category: "crypto", summaryCS: "Moderní šifrování důkazních archivů.", summaryEN: "Modern encryption for evidence archives.", binaries: ["age", "age-keygen"], dependencies: [], github: "github.com/FiloSottile/age", safeUsage: ["age -e -o evidence/report.age evidence/report.zip"]),
        .init(id: "terraform", name: "terraform", category: "cloud", summaryCS: "Infrastructure-as-code simulace cloud hardeningu.", summaryEN: "Infrastructure-as-code simulation for cloud hardening.", binaries: ["terraform"], dependencies: [], github: "github.com/hashicorp/terraform", safeUsage: ["terraform plan -chdir=infra/lab"]),
        .init(id: "ansible", name: "ansible", category: "automation", summaryCS: "Automatizovaný hardening virtuálních serverů.", summaryEN: "Automated hardening of virtual servers.", binaries: ["ansible", "ansible-playbook"], dependencies: ["python"], github: "github.com/ansible/ansible", safeUsage: ["ansible-playbook playbooks/harden-lab.yml"]),
        .init(id: "nuclei", name: "nuclei", category: "web", summaryCS: "Template-based kontrola lab služeb a bezpečných CVE simulací.", summaryEN: "Template-based checks of lab services and safe CVE simulations.", binaries: ["nuclei"], dependencies: [], github: "github.com/projectdiscovery/nuclei", safeUsage: ["nuclei -u http://lab-web.corp.local -t templates/lab/"])
    ]

    static func package(named name: String) -> VirtualBrewPackage? {
        let key = name.lowercased()
        return packages.first { $0.name == key || $0.id == key || $0.binaries.contains(key) }
    }

    static func ownerPackage(forBinary binary: String) -> VirtualBrewPackage? {
        let key = binary.lowercased()
        return packages.first { $0.binaries.contains(key) }
    }

    static func search(_ term: String) -> [VirtualBrewPackage] {
        let key = term.lowercased()
        if key.isEmpty { return packages }
        return packages.filter { pkg in
            pkg.name.contains(key) || pkg.category.contains(key) || pkg.summaryCS.lowercased().contains(key) || pkg.summaryEN.lowercased().contains(key) || pkg.binaries.contains(where: { $0.contains(key) })
        }
    }
}


// MARK: - Virtual Internet / Downloadable App Simulator

struct VirtualInternetApp: Identifiable, Equatable {
    let id: String
    let name: String
    let kind: String
    let license: String
    let summaryCS: String
    let summaryEN: String
    let downloadURL: String
    let installedName: String
    let commands: [String]
    let keywords: [String]
}

struct VirtualWebResult: Identifiable, Equatable {
    let id: String
    let title: String
    let url: String
    let snippetCS: String
    let snippetEN: String
    let appID: String?
}

struct VirtualInternetRegistry {
    static let apps: [VirtualInternetApp] = [
        .init(id: "lab-vpn", name: "LabVPN", kind: "vpn", license: "open/free simulator", summaryCS: "VPN klient pro připojení do tréninkové sítě OmniCore. Simuluje OpenVPN/WireGuard workflow.", summaryEN: "VPN client for the OmniCore training network. Simulates OpenVPN/WireGuard workflow.", downloadURL: "simnet://apps/lab-vpn.pkg", installedName: "LabVPN", commands: ["vpn connect omnicore", "vpn status", "vpn disconnect"], keywords: ["vpn", "openvpn", "wireguard", "omnicore"]),
        .init(id: "tor-browser", name: "TorBrowserSim", kind: "browser/privacy", license: "open-source simulator", summaryCS: "Virtuální Tor Browser pro trénink anonymity a rizik onion světa bez přístupu k reálné síti Tor.", summaryEN: "Virtual Tor Browser for anonymity and onion-world risk training without real Tor access.", downloadURL: "simnet://apps/tor-browser.pkg", installedName: "TorBrowserSim", commands: ["tor status", "tor search <query>", "tor open onion://academy/start"], keywords: ["tor", "onion", "privacy", "browser"]),
        .init(id: "cloudflared", name: "CloudflaredSim", kind: "dns/tunnel", license: "open-source simulator", summaryCS: "Simulátor cloudflared/Cloudflare DNS a tunnel principů pro obranné úkoly.", summaryEN: "Simulator for cloudflared/Cloudflare DNS and tunnel principles for defensive tasks.", downloadURL: "simnet://apps/cloudflared.pkg", installedName: "CloudflaredSim", commands: ["cloudflare dns corp.local", "cloudflare trace lab-web.corp.local", "cloudflared tunnel list"], keywords: ["cloudflare", "dns", "tunnel", "zero trust"]),
        .init(id: "search-lab", name: "SearchLab", kind: "search", license: "free simulator", summaryCS: "Google-like virtuální vyhledávač pro trénink. Nevolá reálné Google API ani internet.", summaryEN: "Google-like virtual search portal for training. It does not call real Google APIs or the internet.", downloadURL: "simnet://apps/search-lab.pkg", installedName: "SearchLab", commands: ["google search <query>", "internet search <query>", "safari search <query>"], keywords: ["google", "search", "internet", "osint"]),
        .init(id: "logwatcher", name: "LogWatcher", kind: "blue-team", license: "open/free simulator", summaryCS: "GUI/CLI nástroj pro sledování logů, alertů a timeline incidentu.", summaryEN: "GUI/CLI tool for log watching, alerts and incident timelines.", downloadURL: "simnet://apps/logwatcher.pkg", installedName: "LogWatcher", commands: ["logwatcher tail", "logwatcher timeline", "logwatcher export evidence"], keywords: ["logs", "siem", "blue", "alert"]),
        .init(id: "packetlab", name: "PacketLab", kind: "network", license: "open/free simulator", summaryCS: "PCAP a síťový analyzátor pro bezpečné čtení captures/ bez reálného sniffingu.", summaryEN: "PCAP and network analyzer for safe captures/ reading without real sniffing.", downloadURL: "simnet://apps/packetlab.pkg", installedName: "PacketLab", commands: ["packetlab open captures/lab-login.pcap", "packetlab stats"], keywords: ["pcap", "wireshark", "packet", "network"]),
        .init(id: "brew-catalog", name: "BrewCatalog", kind: "package-index", license: "open/free simulator", summaryCS: "GUI katalog pro virtuální Homebrew balíky a jejich odemčené příkazy.", summaryEN: "GUI catalog for virtual Homebrew packages and unlocked commands.", downloadURL: "simnet://apps/brew-catalog.pkg", installedName: "BrewCatalog", commands: ["brew search <term>", "brew install <formula>", "brew list"], keywords: ["homebrew", "brew", "packages", "github"])
    ]

    static let webResults: [VirtualWebResult] = [
        .init(id: "r1", title: "SimNet Academy: Základy obrany", url: "https://academy.simnet.training/blue/defense-basics", snippetCS: "Úvod do logů, záloh, DLP a bezpečného připojení do labu.", snippetEN: "Intro to logs, backups, DLP and safe lab connectivity.", appID: nil),
        .init(id: "r2", title: "LabVPN ke stažení", url: "simnet://apps/lab-vpn.pkg", snippetCS: "Virtuální VPN klient pro OmniCore mise.", snippetEN: "Virtual VPN client for OmniCore missions.", appID: "lab-vpn"),
        .init(id: "r3", title: "TorBrowserSim", url: "simnet://apps/tor-browser.pkg", snippetCS: "Tréninkový Tor/onion simulátor bez reálného opuštění labu.", snippetEN: "Training Tor/onion simulator without leaving the lab.", appID: "tor-browser"),
        .init(id: "r4", title: "CloudflaredSim: DNS a tunnel trénink", url: "simnet://apps/cloudflared.pkg", snippetCS: "Cloudflare-like DNS, trace a Zero Trust principy v simulovaném světě.", snippetEN: "Cloudflare-like DNS, trace and Zero Trust principles in a simulated world.", appID: "cloudflared"),
        .init(id: "r5", title: "SearchLab: Google-like vyhledávání", url: "simnet://apps/search-lab.pkg", snippetCS: "Virtuální vyhledávač pro OSINT mise. Dataset je lokální a bezpečný.", snippetEN: "Virtual search engine for OSINT missions. Dataset is local and safe.", appID: "search-lab"),
        .init(id: "r6", title: "BrewCatalog", url: "simnet://apps/brew-catalog.pkg", snippetCS: "GUI katalog dostupných virtuálních Homebrew/GitHub nástrojů.", snippetEN: "GUI catalog of available virtual Homebrew/GitHub tools.", appID: "brew-catalog"),
        .init(id: "r7", title: "PacketLab PCAP analyzátor", url: "simnet://apps/packetlab.pkg", snippetCS: "Čti captures/lab-login.pcap a uč se síťovou forenziku bezpečně.", snippetEN: "Read captures/lab-login.pcap and learn network forensics safely.", appID: "packetlab"),
        .init(id: "r8", title: "LogWatcher pro Blue Team", url: "simnet://apps/logwatcher.pkg", snippetCS: "Timeline incidentu, alerty a export důkazů do Evidence/.", snippetEN: "Incident timeline, alerts and evidence export into Evidence/.", appID: "logwatcher")
    ]

    static func app(named value: String) -> VirtualInternetApp? {
        let key = value.lowercased().replacingOccurrences(of: "_", with: "-")
        return apps.first { app in
            app.id == key || app.name.lowercased() == key || app.installedName.lowercased() == key || app.commands.contains(where: { $0.lowercased().hasPrefix(key + " ") })
        }
    }

    static func searchApps(_ term: String) -> [VirtualInternetApp] {
        let key = term.lowercased()
        if key.isEmpty { return apps }
        return apps.filter { app in
            app.id.contains(key) || app.name.lowercased().contains(key) || app.kind.contains(key) || app.summaryCS.lowercased().contains(key) || app.summaryEN.lowercased().contains(key) || app.keywords.contains(where: { $0.contains(key) })
        }
    }

    static func searchWeb(_ term: String) -> [VirtualWebResult] {
        let key = term.lowercased()
        if key.isEmpty { return webResults }
        let hits = webResults.filter { result in
            result.title.lowercased().contains(key) || result.url.lowercased().contains(key) || result.snippetCS.lowercased().contains(key) || result.snippetEN.lowercased().contains(key)
        }
        if hits.isEmpty {
            return webResults.filter { $0.url.contains("simnet://") }.prefix(5).map { $0 }
        }
        return hits
    }
}
