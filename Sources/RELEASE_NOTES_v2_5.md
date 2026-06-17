# TerminalOpsGame v2.5 — Virtual Mail Mission Engine

## Hlavní změna

Přidán Engine aplikace **Mail**, který propojuje herní příběhové linie, kapitoly, mise a úkoly do jednoho časového workflow:

- přijatá zpráva = aktivní úkol v konkrétní kapitole a misi,
- splnění úkolu automaticky doručí další zprávu ve stejné herní linii,
- další mail se nedoručí, dokud hráč nedokončí aktuální misi,
- Mail umí číst zprávy, archivovat je do Dokumentů, stahovat přílohy a otevírat odkazy v Safari/Finderu,
- každá herní linie má vlastní odesílatele a kapitolové názvy,
- stav mailů se ukládá lokálně: doručené, přečtené, archivované, stažené přílohy a otevřené odkazy.

## Nové příkazy

```bash
mail inbox
mail list
mail open current
mail open <mission-id>
mail archive current
mail attachments
mail download current
mail download <attachment-id>
mail links
mail open link
mail open link <link-id>
open link <link-id>
mail timeline
mail status
```

## Herní dopad

Hráč už nedostává úkoly jako suchý seznam v terminálu. Hra teď simuluje reálný pracovní postup:

1. přijde mail od Mission Control / mentora / audit office,
2. hráč otevře Mail přes Dock nebo terminál,
3. přečte úkol,
4. stáhne briefing / důkazní template / VPN profil,
5. otevře link v Safari nebo Dokumentech,
6. provede příkazy v Terminálu,
7. dokončí misi,
8. engine doručí další mail.

## Bezpečnost

Veškeré odkazy a soubory jsou pouze virtuální:

- `simnet://mail/...`
- `simnet://apps/...`
- `https://academy.simnet.training/...`

Nic nevolá reálné externí služby a nic nestahuje reálné soubory.
