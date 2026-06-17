# TerminalOpsGame v2.3 — Virtual Internet + App Simulator Engine

## Přidáno

- Virtual Internet Engine pro simulovaný svět internetu uvnitř hry.
- Safari GUI workflow + CLI příkazy pro vyhledávání.
- Google-like SearchLab simulátor bez reálného Google API.
- Cloudflare/cloudflared simulátor pro DNS, trace a tunnel principy.
- TorBrowserSim simulátor bez připojení do reálné Tor/onion sítě.
- SimNet Store katalog volně dostupných / open-source inspirovaných virtuálních aplikací.
- Stažení, kontrola hashe, instalace a spuštění virtuálních aplikací přes terminál.
- Dock teď filtruje brew balíky a ukazuje jen skutečné instalované aplikace.

## Nové příkazy

```bash
internet help
safari search vpn
google search incident response
internet search tor
app search vpn
app info tor-browser
download app tor-browser
shasum -a 256 Downloads/tor-browser.pkg
install app tor-browser
run app tor-browser
tor status
tor search privacy
app search cloudflare
download app cloudflared
install app cloudflared
cloudflare dns corp.local
cloudflare trace lab-web.corp.local
app search brew
download app brew-catalog
install app brew-catalog
```

## Bezpečnost

Všechno je lokální simulace. Engine nevolá reálný Google, Cloudflare ani Tor síť. Stahování funguje pouze přes `simnet://apps/...` a výsledky hledání jsou z lokálního datasetu hry.
