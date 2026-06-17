# TerminalOpsGame v2.4 — MacBook Pro Keyboard Interface Engine

## Přidáno

- Engine pro landscape-only virtuální MacBook Pro rozhraní.
- Vysouvací a schovávací virtuální klávesnice.
- Vizuální MacBook Pro keyboard deck s tmavým tělem, podsvícením, klávesami a trackpadem.
- Vizuální neklekatelný Touch Bar.
- Animace stisku klávesy: glow, zmenšení, zvýraznění.
- Klávesy zapisují přímo do virtuálního terminálu.
- ENTER spouští příkaz.
- DELETE maže znak.
- TAB doplňuje bezpečné simulátorové příkazy.
- iMouse / touchpad zóna pro budoucí drag/cursor interakce.
- Spodní handle pro vysunutí/schování klávesnice.
- Pravý mini panel Show Keyboard / Hide Keyboard / Hide Dock.
- Schovávací Dock s příkazy z terminálu.

## Nové příkazy

```bash
keyboard show
keyboard hide
dock show
dock hide
```

České varianty:

```bash
vysunout klávesnici
schovat klávesnici
schovat dock
zobrazit dock
```

## Poznámka

Vše je vizuální engine uvnitř SwiftUI. Nepoužívá reálné systémové klávesnice ani žádné privátní Apple API. Je připravené pro iOS/iPadOS landscape deployment.
