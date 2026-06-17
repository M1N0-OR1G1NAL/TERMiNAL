# TERMiNAL

**Tron1k's Games** presents **TERMiNAL**, a cinematic iOS/iPadOS SwiftUI training simulator inspired by a virtual MacBook Pro desktop, terminal missions, story-line selection, and safe cyber lab workflows.

> Educational simulation only. The game blocks real-world targets and keeps all missions inside fictional lab scopes.

![Story Lines reference](Presentation/ReferenceScreens/hlavní_menu_hry.png)

## Flow

1. Sign in with Apple / iCloud progress sync, with local offline fallback.
2. Choose language: Czech or English.
3. Pick game mode and story line.
4. Watch the intro cinematic.
5. Start missions in the virtual desktop through Mail, Finder, Terminal, Safari, Settings, and Story Lines.

## Positioning

TERMiNAL is a presentation-ready Apple-native cyber education game aimed at schools, IT programs, youth cyber clubs, CTF platforms, HTB-style partners, red/blue team mentors and App Store review. It teaches cyber safety through a fictional virtual world where offensive strategy, cybercrime consequences and defensive security practice are always contained inside safe lab scope.

## Story Lines

- **REDTEAM**: closed red-team sandbox, proof-only objectives, scoped fake targets.
- **BLUETEAM**: cyber defense, logs, DLP, backups, firewall, incident response.
- **BLACK**: unlockable dark sandbox focused on consequences, traces, and risk.
- **WHITE**: ethical audit, compliance, evidence, reporting, responsible fixes.
- **GREY**: combined attack/defense loop with immediate mitigation.

The current data set includes 5 campaigns, 8 chapters per campaign, and 256 mission entries.

## Full Training Lines

- **Redhat**: attacker mindset in a permissioned lab, proof-only validation, scope discipline and defensive reporting.
- **Bluehat**: SOC defense, asset inventory, SIEM, DLP, incident response, recovery and Mac hardening.
- **Blackhat**: historical incident timeline where offensive steps are fictionalized and paired with real defensive lessons.
- **Greyhat**: test, mitigation, retest and risk-register workflow for purple-team learning.
- **Whitehat**: ethical audit, consent, privacy, compliance, responsible disclosure and App Store readiness.

## Core Features

- Final integrated engine set from v1.0 through v2.7.
- SwiftUI Xcode project for iOS and iPadOS.
- Apple sign-in entry screen plus iCloud key-value progress syncing.
- Czech/English language selection.
- MacBook-style game desktop based on the supplied visual references.
- Story Lines menu with campaign, chapter, mission progress, and rewards.
- Terminal command engine with safe-scope filtering.
- Virtual Machine Internet/IO Engine for simulated host, localhost, Wi-Fi, Bluetooth, Thunderbolt, LiFi, AirPlay, iCloud, USB, GNU userland, system policy, debug, crack-lab and forensic interfaces.
- Virtual Homebrew/GitHub package engine with `brew search`, `brew install`, `which`, `man`, package unlocks and guarded tool execution.
- Virtual Internet/App Engine with Safari/GoogleSim/TorSim/CloudflareSim, downloadable app packages and guarded virtual app execution.
- MacBook Pro Keyboard Engine with slide-in keyboard, Touch Bar, touchpad/iMouse area and dock show/hide commands.
- Animated GUI icon system for Dock, desktop launchers, Finder folders, Safari app cards and real-engine control panels.
- Open-window interfaces for Defend Security, Network Monitor, Package Center, Syntax Lab, Forensic Desk, Keyboard Engine and iCloud Progress.
- GUI modules for Network Monitor, Package Center, Syntax Lab, Forensic Desk and Defend Security.
- Virtual Mail Mission Engine with delivered mission e-mails, attachments, links, archiving and mail timeline.
- Full Training Scenario Engine with Redhat, Bluehat, Blackhat, Greyhat and Whitehat training lines, 8 chapters per line and scenario commands.
- Syntax extensions for `defend`, `attack-sim`, `evidence`, `trace` and `policy` commands.
- Mail/document/evidence workflow for mission progression.
- Local save fallback via `UserDefaults`.

## Safe Lab Scope

Allowed in-game targets:

```text
lab-*
corp.local
acme.local
10.10.10.0/24
10.13.37.0/24
local folders: logs/, evidence/, captures/, backups/, restore/
```

The simulator intentionally blocks public IP scanning, live exploitation, malware, phishing, credential attacks, exfiltration, and real third-party targets.

## Open in Xcode

1. Open `TerminalOpsGame.xcodeproj`.
2. Select the `TerminalOpsGame` target.
3. Set your Apple Developer Team in Signing & Capabilities.
4. Enable iCloud Key-value storage for a real device build.
5. Build for iPhone or iPad with iOS/iPadOS 17+.

## Useful Commands In Game

```bash
open mail
mail inbox
mail archive current
open documents
docs ls
open terminal
search vpn
download app lab-vpn
install app lab-vpn
run app lab-vpn
vpn connect omnicore
mission
complete blue-story-000
campaign
status
icloud status
vm status
net interfaces
traffic show
traffic defend
io list
gui list
pkg list
syntax list
forensics timeline
brew search network
brew install nmap
nmap -sV -Pn 10.10.10.20
internet help
academy help
academy lines
chapters bluehat
chapters greyhat
chapters whitehat
mission bluehat-ch01-m01
mail bluehat-ch01-m01
tasks bluehat-ch01-m01
safari search vpn
download app tor-browser
install app tor-browser
keyboard show
dock hide
```

## App Name

The Xcode product name and iOS/iPadOS display name are set to `TERMiNAL`.

## Repository Name Note

GitHub repository names cannot contain `/` inside a single repo name. Use:

- Owner/organization: `PENTEST_CRACK_SIMULATOR`
- Repository/display project: `Tron1ks-Games` or `pentest-crack-simulator`

This local package keeps the project folder as `PENTEST_CRACK_SIMULATOR` and identifies the brand as **Tron1k's Games**.
