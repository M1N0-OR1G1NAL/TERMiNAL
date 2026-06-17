# TerminalOpsGame v2.1 — MacBook Pro Simulator UI

## Hotové změny

- Appka je nastavená jako **landscape-only** přes `Info.plist`.
- Herní prostředí je převedené na **virtuální MacBook Pro simulátor**:
  - černý rámeček displeje,
  - horní macOS-like menu bar,
  - Apple menu vlevo,
  - Dock dole,
  - Matrix/binary-rain tapeta plochy,
  - otevřená okna Mail, Finder, Terminal, Safari a stavové panely.
- Základní Dock aplikace:
  - Mail,
  - Finder,
  - Terminal,
  - Safari,
  - Nastavení.
- Další aplikace v Docku se zobrazují podle `installedApps` a `virtualMobileRunning`.
- Story Lines GUI se otevírá přes:
  - kliknutí na Apple logo vlevo nahoře,
  - položku **Uspat**,
  - nebo terminálové příkazy `story lines`, `apple sleep`, `sleep`, `uspat`.
- Story Lines okno má:
  - 5 linií: Blue / Red / Grey / White / Black,
  - odemčené popisy jen pro dostupné linie,
  - zamčené linie se zámky a nečitelným/utlumeným obsahem,
  - kapitoly 1–8,
  - progress, odměny a tlačítko Pokračovat.
- Terminál umí nově otevřít:
  - `open finder`,
  - `open safari`,
  - `open settings`,
  - `story lines`,
  - `uspat`.

## Poznámka

V sandboxu není Xcode, takže plný iOS build nebylo možné spustit. Swift soubory prošly přes `swiftc -parse` společně.
