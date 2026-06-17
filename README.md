# Terminal Ops Game — Apple cyber training simulator

Prezentační a vývojářský repozitář pro spolupráci se školami, CTF/cyber vzdělávacími platformami a Apple vývojáři. Hra převádí bezpečnost, bezpečný vývoj a incident response do simulovaného virtuálního MacBook prostředí pro mládež a studenty IT.

Aktuální zdroj hry vychází z dodaného balíčku `TerminalOpsGame_v2_1_MacBookPro_UI.zip`. Starší `v2_0` je uložená v `reference/v2_0/` pro porovnání a původní ZIPy jsou v `packages/` v lokálním handoff balíku.

## Virtual Terminal School

Tento repozitář je připravený jako GitHub projekt `TERMiNAL`: prezentační a vývojový základ pro bezpečný Apple-native simulátor terminálové kyberbezpečnostní výuky. Cílí na školy, IT studia, mládež, CTF platformy, Hack The Box-like partnery a red/blue team mentory.

Klíčové materiály:

- [Virtual Terminal School overview](docs/virtual-terminal-school/README_CS.md)
- [Curriculum tracks](docs/virtual-terminal-school/CURRICULUM_TRACKS_CS.md)
- [Red/Blue helper spec](docs/virtual-terminal-school/RED_BLUE_HELPERS_SPEC.md)
- [GitHub repository plan](docs/virtual-terminal-school/GITHUB_REPOSITORY_PLAN.md)

## Herní flow

1. Vybereš jazyk.
2. Vybereš stranu hráče.
3. Proběhne intro do hry.
4. Otevře se virtuální monitor/MacBook.
5. V Mailu přijde označený e-mail s misí.
6. Dokumenty drží archiv e-mailů, učebnice, manuály, systémové složky, Downloads, Applications, Evidence, Logs, Certificates, PasswordVault.
7. Terminal je root aplikace: umí otevírat aplikace, hledat, stahovat, instalovat, spouštět nástroje, vytvářet skripty, VPN, mobil, důkazní reporty a lab příkazy.
8. Splnění mise se hodnotí podle času, chybných příkazů, práce s důkazy, archivace, instalace nástroje a virus/chaos penalizací.

## Obsah hry

- Blue Team cybersec — 8 kapitol / 40 misí
- Red Team cybercrime sandbox — 8 kapitol / 40 misí
- Grey Team — 8 kapitol / 40 misí
- White Team — 8 kapitol / 40 misí
- Black Team sandbox — 8 kapitol / 40 misí

Celkem: 200 misí/mailů.

## Partnerské materiály

- [Partnerský brief](docs/PARTNERSHIP_BRIEF_CS.md)
- [Apple developer roadmap](docs/APPLE_DEVELOPER_ROADMAP.md)
- [Školní program](docs/SCHOOL_PROGRAM_CS.md)
- [Security and ethics guardrails](docs/SECURITY_AND_ETHICS.md)
- [Struktura repozitáře](docs/REPOSITORY_STRUCTURE.md)

## Bezpečnostní design

Všechny útoky, viry, ransomware, datové úniky, GovSim a historické případy jsou pouze simulované ve virtuálním lab světě. Hra záměrně blokuje reálné veřejné cíle, veřejné IP, live exploitaci, malware, phishing, exfiltraci a reálné credential útoky.

Povolený svět hry: `lab-*`, `corp.local`, `acme.local`, `10.10.10.0/24`, `10.13.37.0/24`, lokální složky `logs/`, `evidence/`, `captures/`, `backups/`, `restore/`.

## Základní příkazy

```bash
open mail
mail inbox
mail open current
mail archive current
open documents
docs ls
docs open mission
open terminal
open mobile
search vpn
download app lab-vpn
shasum -a 256 Downloads/lab-vpn.pkg
install app lab-vpn
run app lab-vpn
vpn connect omnicore
mission
complete blue-story-000
campaign
status
icloud status
```

## Xcode

1. Otevři `TerminalOpsGame.xcodeproj` z lokálního handoff balíku.
2. Target → Signing & Capabilities → nastav svůj Team.
3. iCloud capability: Key-value storage.
4. Product → Clean Build Folder.
5. Před testem smaž starou appku ze simulátoru/zařízení.

## Stav GitHub uploadu

Textová prezentační kostra je nahraná přímo přes GitHub connector. Lokální workspace obsahuje kompletní Swift/Xcode projekt, PPTX a ZIP handoff; přímý `git push` selhal na lokální GitHub autentizaci, takže binární a velké zdrojové soubory je potřeba dopushovat z lokálního Git klienta po nastavení credentials.
