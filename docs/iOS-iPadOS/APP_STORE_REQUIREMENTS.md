# iOS/iPadOS App Store Requirements - TERMiNAL Simulator

**Dokument Status:** Compliance Requirements for TERMiNAL iOS/iPadOS Release
**Verze:** 1.0
**Aktualizován:** 2026-06-17

---

## 1. Základní App Store Kritéria

### 1.1 App Review Guidelines
- **Oficiální zdroj:** [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- **Kategorie aplikace:** Games > Educational & Simulation
- **Věková klasifikace:** PEGI 12+ nebo ESRB E10+
  - *Důvod:* Edukační obsah o cybersecurity, simulované hacking scénáře (bez grafické násilnosti)

### 1.2 Metadata Požadavky

#### App Name
```
TERMiNAL - Cyber Training Simulator
```

#### Subtitle (30 znaků max)
```
Master OSINT & Defense
```

#### Keywords (5-20 slov, oddělená čárkami)
```
cybersecurity, simulator, osint, terminal, ethical hacking, education, cyber training, incident response, defense, red team, blue team
```

#### Description (4000 znaků)
```
TERMiNAL is a cinematic cyber-training simulator set inside a virtual MacBook Pro environment. Master cybersecurity through engaging storylines across five career paths:

🔴 Red Team - Explore adversarial thinking
🔵 Blue Team - Master defensive security  
⚪ White Team - Balanced operations
🟤 Grey Team - Complex scenarios
⚫ Black Team - Advanced challenges

FEATURES:
• Virtual Terminal with 150+ realistic commands
• Complete macOS UI simulation (Finder, Mail, Safari)
• Network traffic visualization & monitoring
• Package management (Homebrew, Cask simulation)
• 200+ carefully crafted missions across 5 teams
• Real-world OSINT, incident analysis & response techniques
• Educational content with real security principles
• VPN configuration and monitoring
• Evidence collection and reporting

GAMEPLAY:
Execute terminal commands, solve security puzzles, respond to incidents, analyze evidence, and complete missions. Time management and accuracy affect your final score.

EDUCATIONAL VALUE:
Designed for cybersecurity students, IT professionals, and security enthusiasts. Learn practical terminal skills in a safe, contained environment.

All simulated attacks and scenarios occur only within the virtual lab environment (lab-*, corp.local, acme.local). Real-world systems and IP addresses are blocked.

All ages welcome - contains educational cybersecurity content.
```

#### Support URL
```
https://tron1k.cz/TERMiNAL/support
```

#### Privacy Policy URL
```
https://tron1k.cz/TERMiNAL/privacy
```

#### App Preview Video (30 sec recommended)
- Showcase virtual terminal interface
- Demonstrate mission gameplay
- Show network visualization
- Highlight educational aspects

---

## 2. Privacy a Data Protection

### 2.1 Privacy Policy Požadavky
Musíte zahrnout:

```markdown
## Collected Data
- Anonymous gameplay statistics (mission completion, average completion time)
- Device information (iOS version, device model) for optimization
- Crash reports (via TestFlight/Sentry - optional)

## NOT Collected
- Personal identification data
- Real network traffic or system information
- User location data
- User contacts or identifiers
- Camera/microphone access (not used)

## Data Retention
- Gameplay data: 90 days
- Device info: 30 days
- Users can delete local data anytime via Settings

## GDPR Compliance
- Right to access personal data (export function)
- Right to deletion (clear app data)
- Transparent privacy practices
```

### 2.2 App Privacy Label (musí být vyplněna v App Store Connect)

**Collected Data Types:**
- [ ] Health & Fitness
- [ ] Financial Info
- [ ] Location
- [ ] Sensitive Info
- [x] **Diagnostics** (Crash logs, performance metrics)
- [ ] Contact Info
- [ ] User ID
- [ ] Browsing History
- [ ] Search History

**Purposes:**
- [x] App Functionality
- [x] App Performance
- [x] Diagnostics

**Data Linked to You:**
- [ ] No - Data is not linked to you

**Data Tracking:**
- [ ] Third-party advertising
- [ ] Third-party analytics

**Encryption:**
- [x] Data in transit (encrypted)
- [ ] Data at rest option (optional)

---

## 3. Technical Requirements

### 3.1 Deployment Target & Compatibility

```
Minimum iOS: 14.0
Target iOS: 17.0+
iPad OS: 14.0+
Supported Devices: iPhone 11+, iPad (5th gen)+
Architectures: arm64
```

### 3.2 Frameworks & Capabilities

**Required Frameworks:**
```swift
// SwiftUI/UIKit
import SwiftUI
import UIKit

// Networking
import Network
import NetworkExtension (for VPN simulation - LIMITED USE)

// Data
import CoreData
import SQLite

// Graphics
import Metal
import SceneKit
import SpriteKit

// System
import Foundation
import CryptoKit (for password hashing - simulation only)
```

**Requested Capabilities (Info.plist):**

```xml
<!-- Network Status -->
<key>NSLocalNetworkUsageDescription</key>
<string>TERMiNAL simulates network connections within the app's virtual environment.</string>

<!-- Bonjour Service -->
<key>NSBonjourServices</key>
<array>
    <string>_terminal-sim._tcp</string>
</array>

<!-- Document Types -->
<key>CFBundleDocumentTypes</key>
<array>
    <dict>
        <key>CFBundleTypeName</key>
        <string>TERMiNAL Mission File</string>
        <key>CFBundleTypeExtensions</key>
        <array><string>terminal-mission</string></array>
    </dict>
</array>
```

---

## 4. Content Guidelines Compliance

### 4.1 Harmful Content Policy
✅ **ALLOWED (všechny simulované ve virtuálním prostředí):**
- Simulated hacking/penetration testing
- Fictional malware simulation
- Network attack scenarios (DDoS, Man-in-the-Middle - simulované)
- Social engineering examples (educational)
- Ransomware simulation (demonstrační)
- Password cracking education (hashcat simulation)

❌ **NOT ALLOWED:**
- Real exploits targeting real systems
- Real malware distribution
- Real network attacks
- Doxing tools or techniques
- Actual credential harvesting
- Real vulnerability disclosure (must be coordinated)

**Compliance Statement:**
```
"All potentially sensitive activities (network attacks, malware, exploits, 
social engineering) are completely virtualized and simulated. The application 
blocks all real-world targets and only operates within defined safe domains 
(lab-*, corp.local, acme.local, 10.10.10.0/24, 10.13.37.0/24)."
```

### 4.2 Educational Content Compliance
- Všechny scénáře jsou zaměřeny na vzdělávání
- Zahrnuje real security best practices
- Vyrovnaný obsah (Red + Blue team)
- Etické pokyny pro všechny týmy
- References ke skutečným NIST/OWASP/SANS standardům

---

## 5. Performance & Quality Indicators

### 5.1 App Performance Standards
```
• Launch Time: < 3 seconds (target < 2s)
• Memory: < 300MB (on-device models), < 500MB (iPad)
• Battery: < 2% per hour of gameplay (target)
• Network: Works offline after initial cache (optional)
```

### 5.2 Compatibility Testing

**Minimum Test Devices:**
- iPhone 11 (2GB RAM baseline)
- iPhone 14 Pro (6GB+ RAM, A16)
- iPad Air (4th gen or later)
- iPad Pro 12.9" (latest)

**Screen Sizes:**
- 5.4" (iPhone mini)
- 6.1" (iPhone standard)
- 6.7" (iPhone Pro Max)
- 7.9" (iPad mini)
- 10.5" - 12.9" (iPad/Pro)

---

## 6. Secure Coding Practices

### 6.1 Required Security Implementation

```swift
// 1. Input Validation - všechny command inputs
func validateTerminalCommand(_ input: String) -> Bool {
    let blockedPatterns = [
        "rm -rf /", "sudo", "dd if=/dev/", "format", 
        "fdisk", "parted", "mkfs"
    ]
    // Musí blokovat reálné destruktivní příkazy
    for pattern in blockedPatterns {
        if input.lowercased().contains(pattern) {
            logSecurityEvent("Blocked real command attempt: \(input)")
            return false
        }
    }
    return true
}

// 2. Encryption - hesla v databázi
import CryptoKit

func hashPassword(_ password: String) -> String {
    let data = Data(password.utf8)
    let digest = SHA256.hash(data: data)
    return digest.withUnsafeBytes { bytes in
        bytes.map { String(format: "%02x", $0) }.joined()
    }
}

// 3. Secure Storage - iCloud Keychain
import Security

func saveToKeychain(key: String, value: String) {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: key,
        kSecValueData as String: value.data(using: .utf8)!,
        kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
    ]
    SecItemAdd(query as CFDictionary, nil)
}

// 4. Network Security
import Network

func createSecureConnection() -> NWConnection {
    let params = NWParameters.tls
    params.requiredInterface = .wifi // Simulace sítě
    return NWConnection(host: "lab-server.local", port: 443, using: params)
}
```

### 6.2 OWASP Top 10 Compliance

| OWASP | Implementace | Status |
|-------|-------------|--------|
| Injection | Input validation, command allowlist | ✅ |
| Broken Auth | Simulated auth, no real credentials | ✅ |
| Sensitive Data | Encrypted storage, no PII collected | ✅ |
| XML/XXE | No XML parsing of user input | ✅ |
| Broken Access Control | Role-based (Red/Blue/White/Grey/Black) | ✅ |
| SSRF | Blocked external networks | ✅ |
| Insecure Deserialization | Custom safe format | ✅ |
| Using Components with Known Vulns | Dependency audit (CocoaPods/SPM) | ✅ |
| Insufficient Logging | Security event logging | ✅ |
| Broken Cryptography | TLS 1.3+, SHA256+ hashing | ✅ |

---

## 7. App Store Connect Configuration

### 7.1 Build Number Strategy
```
Version Format: MAJOR.MINOR.PATCH
Build Number: YYYYMMDD.N (e.g., 20260617.1)

Current: 1.0.0 (Build: 20260617.1)
```

### 7.2 Beta Testing (TestFlight)
```
Internal Testers: Dev team
External Testers: 10,000 max

Testing Focus:
- Performance on iPhone SE, 11, 14 Pro
- Landscape/portrait on iPad
- Network simulation reliability
- Command parsing accuracy
- Save/load integrity
```

### 7.3 Release Strategy
```
Phase 1: TestFlight (2 weeks)
- Performance benchmarking
- Crash reporting
- User feedback collection

Phase 2: Soft Launch (select regions)
- UK, CZ, EU release
- Monitor App Analytics

Phase 3: Global Release
- Full App Store promotion
- Marketing campaign
```

---

## 8. Compliance Checklist

- [ ] Privacy Policy (aktualizovaná a linkovaná)
- [ ] Terms of Service
- [ ] In-app purchase compliance (pokud je)
- [ ] GDPR compliance (EU users)
- [ ] Age Rating (PEGI/ESRB)
- [ ] Parental Controls support (if under 12+)
- [ ] Accessibility (VoiceOver support for key screens)
- [ ] Localization (podporované jazyky)
  - [ ] English
  - [ ] Czech
  - [ ] German
  - [ ] French
- [ ] Screenshots (6x per device)
- [ ] Preview Video
- [ ] Support page (working URL)
- [ ] Marketing asset guidelines compliance
- [ ] No external links to sensitive hacking resources
- [ ] Security event logging (for Apple audit)
- [ ] Crash reporting integration (optional but recommended)

---

## 9. Rejection Risk Mitigation

### Možné důvody odmítnutí a prevence:

| Risk | Prevention | Compliance |
|------|-----------|-----------|
| "Glorifies hacking" | Zdůrazněte educational aspect, ethical guidelines | ✅ Add ethics guardrails doc |
| "Malware simulation" | Vysvětlete, že je 100% simulované, blocked real targets | ✅ Add technical safety doc |
| "Social engineering teaching" | Frame jako awareness training, defensive perspective | ✅ Add curriculum alignment |
| "Performance issues" | Extensive TestFlight, performance monitoring | ✅ Benchmark on SE/11 |
| "Vague metadata" | Clear description, specific feature list | ✅ Professional screenshots |
| "Data collection unclear" | Transparent privacy policy, labeled data collection | ✅ Privacy audit |

---

## 10. Post-Launch Support

### 10.1 Version Updates
```
Minor Updates (bug fixes, UI improvements): Every 2-4 weeks
Feature Updates: Quarterly (new missions, storylines)
Major Updates: Biannually (new teams, curriculum)
```

### 10.2 Monitoring & Metrics
```
KPIs to track:
- Daily/Monthly Active Users (DAU/MAU)
- Average Session Length (target: 30+ min)
- Mission Completion Rate (target: 70%+)
- Crash Rate (target: < 0.1%)
- User Retention Day 1/7/30 (target: 40%/25%/10%)
- App Store Rating (target: 4.5+ stars)
```

---

## References

- [Apple App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [App Privacy - Apple Developer](https://developer.apple.com/app-store/privacy/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [iOS Security Documentation](https://developer.apple.com/security/)
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)

---

**Dokument Owner:** M1N0-OR1G1NAL  
**Poslední Aktualizace:** 2026-06-17  
**Status:** 🟢 Ready for Implementation
