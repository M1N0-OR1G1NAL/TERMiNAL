# Red Team and Blue Team helper spec

## Blue Team helper

Blue Team helper je výuková vrstva, která studentovi pomáhá pochopit obranné kroky bez toho, aby mu automaticky vyřešila misi.

Funkce:

- vysvětlení logů a alertů,
- nápověda ke scope,
- checklist evidence handling,
- doporučení bezpečného dalšího kroku,
- upozornění na chybějící archivaci důkazu,
- krátký post-mission feedback.

Zakázané:

- generovat hotový report bez práce studenta,
- obcházet completion gate,
- tvrdit, že simulovaný výstup je reálný systémový výstup.

## Red Team sandbox helper

Red Team sandbox helper učí legální testování. Jeho práce je držet studenta v autorizovaném labu a převádět útok na obranou hodnotu.

Funkce:

- kontrola scope před akcí,
- vysvětlení rozdílu mezi recon, proof a exploitací,
- nápověda k reportu rizika,
- návrh mitigace po každém testu,
- varování při pokusu o veřejný cíl.

Zakázané:

- radit útok na veřejný cíl,
- poskytovat instrukce pro reálný phishing, malware, ransomware nebo credential attack,
- odměňovat exfiltraci nebo škodu,
- obcházet bezpečnostní guard terminálu.

## UI pravidlo

Helper nesmí být chatbot, který přebije hru. Má být malý kontextový panel ve virtuálním MacBooku:

- jedna věta k cíli,
- jedna věta k riziku,
- jeden doporučený bezpečný další krok,
- odkaz na dokumentaci mise.
