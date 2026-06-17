# TerminalOpsGame v2.6 — Full Training Scenario Engine

Přidán plný výukový scénářový engine pro virtuální svět hry:

- Redhat: 8 kapitol × 5 misí = 40 misí
- Bluehat: 8 kapitol × 5 misí = 40 misí
- Blackhat Timeline: 8 historicko-výukových událostí × 12 misí = 96 misí
- Celkem: 176 nových scénářových misí generovaných enginem
- Každá mise má:
  - příběh
  - výukový cíl
  - příběhový mail
  - odkazy do virtuálního internetu
  - stažitelné simnet:// balíky
  - 10–20 úkolů pro útočnou/adversarial i obrannou roli
  - povolené virtuální příkazy
  - success condition
  - failure consequence

## Nové příkazy

```bash
academy help
academy lines
line redhat
line bluehat
line blackhat
chapters redhat
chapter bluehat-ch01
missions bluehat-ch01
mission bluehat-ch01-m01
mail bluehat-ch01-m01
tasks bluehat-ch01-m01
commands bluehat-ch01-m01
download links bluehat-ch01-m01
download mission bluehat-ch01-m01
play redhat
play bluehat
play blackhat
```

## Bezpečnost

Útočné části jsou pouze proof-only v labu. Engine neobsahuje reálné exploitační kroky proti skutečným cílům. Každá adversarial mise končí obrannou analýzou, mitigací a reportem.
