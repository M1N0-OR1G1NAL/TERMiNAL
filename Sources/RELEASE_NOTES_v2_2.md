# TerminalOpsGame v2.2 — Virtual Homebrew Package Engine

## Added

- Virtual Homebrew/GitHub package simulation engine.
- `brew search`, `brew info`, `brew install`, `brew list`, `brew deps`, `brew doctor`, `brew update`, `brew tap`, `brew uninstall`.
- Command unlocking through installed packages.
- `which <binary>`, `man <binary>`, `<binary> --help`.
- Seed registry of security/dev packages commonly used in labs: nmap, rustscan, masscan, tcpdump, wireshark/tshark, jq, yq, git, gh, python, node, pnpm, docker, curl, wget, ffuf, gobuster, feroxbuster, sqlmap, hydra, john, hashcat, yara, clamav, exiftool, theHarvester, amass, subfinder, httpx, openssl, gpg, age, terraform, ansible, nuclei.
- Dynamic fallback for unknown formulae: the simulator can record them as installed virtual formulae without unlocking real commands until a manifest is added.

## Safety

All package commands are simulated. Network, web, OSINT, identity and malware-analysis tools are guarded to lab-only targets such as `lab-*`, `corp.local`, `acme.local`, `10.10.x.x`, `10.13.37.x`, and local virtual paths like `logs/`, `captures/`, `evidence/`, `Downloads/`, `Scripts/`.

## Example flow

```bash
brew search network
brew info nmap
brew install nmap
which nmap
nmap --help
nmap -sV -Pn 10.10.10.20
brew install jq
jq '.event.action' logs/security.json
brew install yara
yara -r rules/lab.yar evidence/
```
