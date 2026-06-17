import Foundation

enum GameData {
    static let missions: [Mission] = [
        Mission(
            id: "blue-story-000",
            category: .blueteam,
            titleCS: """
K1 Škola hard mode / mise 1: cat briefing/school-hard.txt
""",
            titleEN: """
K1 Škola hard mode / mise 1: cat briefing/school-hard.txt
""",
            objectiveCS: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: cat briefing/school-hard.txt
DOKONČENÍ: complete blue-story-000
""",
            objectiveEN: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: cat briefing/school-hard.txt
DOKONČENÍ: complete blue-story-000
""",
            allowedCommands: ["cat briefing/school-hard.txt", "complete blue-story-000"],
            completionCommand: "complete blue-story-000",
            rewardXP: 105,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-001",
            category: .blueteam,
            titleCS: """
K1 Škola hard mode / mise 2: school start hard
""",
            titleEN: """
K1 Škola hard mode / mise 2: school start hard
""",
            objectiveCS: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: school start hard
DOKONČENÍ: complete blue-story-001
""",
            objectiveEN: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: school start hard
DOKONČENÍ: complete blue-story-001
""",
            allowedCommands: ["school start hard", "complete blue-story-001"],
            completionCommand: "complete blue-story-001",
            rewardXP: 110,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-002",
            category: .blueteam,
            titleCS: """
K1 Škola hard mode / mise 3: siem tail school-lab
""",
            titleEN: """
K1 Škola hard mode / mise 3: siem tail school-lab
""",
            objectiveCS: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: siem tail school-lab
DOKONČENÍ: complete blue-story-002
""",
            objectiveEN: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: siem tail school-lab
DOKONČENÍ: complete blue-story-002
""",
            allowedCommands: ["siem tail school-lab", "complete blue-story-002"],
            completionCommand: "complete blue-story-002",
            rewardXP: 115,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-003",
            category: .blueteam,
            titleCS: """
K1 Škola hard mode / mise 4: attack wave phishing-sim
""",
            titleEN: """
K1 Škola hard mode / mise 4: attack wave phishing-sim
""",
            objectiveCS: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: attack wave phishing-sim
DOKONČENÍ: complete blue-story-003
""",
            objectiveEN: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: attack wave phishing-sim
DOKONČENÍ: complete blue-story-003
""",
            allowedCommands: ["attack wave phishing-sim", "complete blue-story-003"],
            completionCommand: "complete blue-story-003",
            rewardXP: 120,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-004",
            category: .blueteam,
            titleCS: """
K1 Škola hard mode / mise 5: lesson accept failure
""",
            titleEN: """
K1 Škola hard mode / mise 5: lesson accept failure
""",
            objectiveCS: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: lesson accept failure
DOKONČENÍ: complete blue-story-004
""",
            objectiveEN: """
KAPITOLA: K1 Škola hard mode
KONTEXT: Po škole nastupuješ do cvičení Kyberochránce. Útočník tě přetlačí phishingem, ransomware simulací a insider rizikem. Kapitola nejde vyhrát dokonale; učí pokoru, SIEM, časový tlak a proč obrana potřebuje proces.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: lesson accept failure
DOKONČENÍ: complete blue-story-004
""",
            allowedCommands: ["lesson accept failure", "complete blue-story-004"],
            completionCommand: "complete blue-story-004",
            rewardXP: 125,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-005",
            category: .blueteam,
            titleCS: """
K2 OmniCore Day 1 / mise 1: cat briefing/blue-day1.txt
""",
            titleEN: """
K2 OmniCore Day 1 / mise 1: cat briefing/blue-day1.txt
""",
            objectiveCS: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: cat briefing/blue-day1.txt
DOKONČENÍ: complete blue-story-005
""",
            objectiveEN: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: cat briefing/blue-day1.txt
DOKONČENÍ: complete blue-story-005
""",
            allowedCommands: ["cat briefing/blue-day1.txt", "complete blue-story-005"],
            completionCommand: "complete blue-story-005",
            rewardXP: 120,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-006",
            category: .blueteam,
            titleCS: """
K2 OmniCore Day 1 / mise 2: assets inventory omnicore
""",
            titleEN: """
K2 OmniCore Day 1 / mise 2: assets inventory omnicore
""",
            objectiveCS: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: assets inventory omnicore
DOKONČENÍ: complete blue-story-006
""",
            objectiveEN: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: assets inventory omnicore
DOKONČENÍ: complete blue-story-006
""",
            allowedCommands: ["assets inventory omnicore", "complete blue-story-006"],
            completionCommand: "complete blue-story-006",
            rewardXP: 125,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-007",
            category: .blueteam,
            titleCS: """
K2 OmniCore Day 1 / mise 3: server baseline prod-web-01
""",
            titleEN: """
K2 OmniCore Day 1 / mise 3: server baseline prod-web-01
""",
            objectiveCS: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: server baseline prod-web-01
DOKONČENÍ: complete blue-story-007
""",
            objectiveEN: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: server baseline prod-web-01
DOKONČENÍ: complete blue-story-007
""",
            allowedCommands: ["server baseline prod-web-01", "complete blue-story-007"],
            completionCommand: "complete blue-story-007",
            rewardXP: 130,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-008",
            category: .blueteam,
            titleCS: """
K2 OmniCore Day 1 / mise 4: patch plan prod-web-01
""",
            titleEN: """
K2 OmniCore Day 1 / mise 4: patch plan prod-web-01
""",
            objectiveCS: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: patch plan prod-web-01
DOKONČENÍ: complete blue-story-008
""",
            objectiveEN: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: patch plan prod-web-01
DOKONČENÍ: complete blue-story-008
""",
            allowedCommands: ["patch plan prod-web-01", "complete blue-story-008"],
            completionCommand: "complete blue-story-008",
            rewardXP: 135,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-009",
            category: .blueteam,
            titleCS: """
K2 OmniCore Day 1 / mise 5: siem dashboard omnicore
""",
            titleEN: """
K2 OmniCore Day 1 / mise 5: siem dashboard omnicore
""",
            objectiveCS: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: siem dashboard omnicore
DOKONČENÍ: complete blue-story-009
""",
            objectiveEN: """
KAPITOLA: K2 OmniCore Day 1
KONTEXT: Nastupuješ jako SOC analytik a správce serverů. Děláš inventář, baseline serveru, VPN, patch plán, dashboard a první pravidla pro provoz.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: siem dashboard omnicore
DOKONČENÍ: complete blue-story-009
""",
            allowedCommands: ["siem dashboard omnicore", "complete blue-story-009"],
            completionCommand: "complete blue-story-009",
            rewardXP: 140,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-010",
            category: .blueteam,
            titleCS: """
K3 Ztráta dat / mise 1: dlp trace client-ledger
""",
            titleEN: """
K3 Ztráta dat / mise 1: dlp trace client-ledger
""",
            objectiveCS: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: dlp trace client-ledger
DOKONČENÍ: complete blue-story-010
""",
            objectiveEN: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: dlp trace client-ledger
DOKONČENÍ: complete blue-story-010
""",
            allowedCommands: ["dlp trace client-ledger", "complete blue-story-010"],
            completionCommand: "complete blue-story-010",
            rewardXP: 135,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-011",
            category: .blueteam,
            titleCS: """
K3 Ztráta dat / mise 2: db access review omnicore-crm
""",
            titleEN: """
K3 Ztráta dat / mise 2: db access review omnicore-crm
""",
            objectiveCS: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: db access review omnicore-crm
DOKONČENÍ: complete blue-story-011
""",
            objectiveEN: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: db access review omnicore-crm
DOKONČENÍ: complete blue-story-011
""",
            allowedCommands: ["db access review omnicore-crm", "complete blue-story-011"],
            completionCommand: "complete blue-story-011",
            rewardXP: 140,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-012",
            category: .blueteam,
            titleCS: """
K3 Ztráta dat / mise 3: backup verify
""",
            titleEN: """
K3 Ztráta dat / mise 3: backup verify
""",
            objectiveCS: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete blue-story-012
""",
            objectiveEN: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete blue-story-012
""",
            allowedCommands: ["backup verify", "complete blue-story-012"],
            completionCommand: "complete blue-story-012",
            rewardXP: 145,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-013",
            category: .blueteam,
            titleCS: """
K3 Ztráta dat / mise 4: audit export evidence/omnicore-ledger.json
""",
            titleEN: """
K3 Ztráta dat / mise 4: audit export evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: audit export evidence/omnicore-ledger.json
DOKONČENÍ: complete blue-story-013
""",
            objectiveEN: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: audit export evidence/omnicore-ledger.json
DOKONČENÍ: complete blue-story-013
""",
            allowedCommands: ["audit export evidence/omnicore-ledger.json", "complete blue-story-013"],
            completionCommand: "complete blue-story-013",
            rewardXP: 150,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-014",
            category: .blueteam,
            titleCS: """
K3 Ztráta dat / mise 5: evidence label omnicore-ledger
""",
            titleEN: """
K3 Ztráta dat / mise 5: evidence label omnicore-ledger
""",
            objectiveCS: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: evidence label omnicore-ledger
DOKONČENÍ: complete blue-story-014
""",
            objectiveEN: """
KAPITOLA: K3 Ztráta dat
KONTEXT: Zjišťuješ, že OmniCore pracuje s klientskými daty špinavě. Sleduješ DLP stopu, kontroluješ DB přístupy, zálohy, integritu a právně čistý export důkazů.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: evidence label omnicore-ledger
DOKONČENÍ: complete blue-story-014
""",
            allowedCommands: ["evidence label omnicore-ledger", "complete blue-story-014"],
            completionCommand: "complete blue-story-014",
            rewardXP: 155,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-015",
            category: .blueteam,
            titleCS: """
K4 Cenzurní engine / mise 1: content-policy diff truth-index
""",
            titleEN: """
K4 Cenzurní engine / mise 1: content-policy diff truth-index
""",
            objectiveCS: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: content-policy diff truth-index
DOKONČENÍ: complete blue-story-015
""",
            objectiveEN: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: content-policy diff truth-index
DOKONČENÍ: complete blue-story-015
""",
            allowedCommands: ["content-policy diff truth-index", "complete blue-story-015"],
            completionCommand: "complete blue-story-015",
            rewardXP: 150,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-016",
            category: .blueteam,
            titleCS: """
K4 Cenzurní engine / mise 2: logs integrity verify
""",
            titleEN: """
K4 Cenzurní engine / mise 2: logs integrity verify
""",
            objectiveCS: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete blue-story-016
""",
            objectiveEN: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete blue-story-016
""",
            allowedCommands: ["logs integrity verify", "complete blue-story-016"],
            completionCommand: "complete blue-story-016",
            rewardXP: 155,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-017",
            category: .blueteam,
            titleCS: """
K4 Cenzurní engine / mise 3: exec key review truth-index
""",
            titleEN: """
K4 Cenzurní engine / mise 3: exec key review truth-index
""",
            objectiveCS: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: exec key review truth-index
DOKONČENÍ: complete blue-story-017
""",
            objectiveEN: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: exec key review truth-index
DOKONČENÍ: complete blue-story-017
""",
            allowedCommands: ["exec key review truth-index", "complete blue-story-017"],
            completionCommand: "complete blue-story-017",
            rewardXP: 160,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-018",
            category: .blueteam,
            titleCS: """
K4 Cenzurní engine / mise 4: timeline build omnicore
""",
            titleEN: """
K4 Cenzurní engine / mise 4: timeline build omnicore
""",
            objectiveCS: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: timeline build omnicore
DOKONČENÍ: complete blue-story-018
""",
            objectiveEN: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: timeline build omnicore
DOKONČENÍ: complete blue-story-018
""",
            allowedCommands: ["timeline build omnicore", "complete blue-story-018"],
            completionCommand: "complete blue-story-018",
            rewardXP: 165,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-019",
            category: .blueteam,
            titleCS: """
K4 Cenzurní engine / mise 5: whistle archive create
""",
            titleEN: """
K4 Cenzurní engine / mise 5: whistle archive create
""",
            objectiveCS: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: whistle archive create
DOKONČENÍ: complete blue-story-019
""",
            objectiveEN: """
KAPITOLA: K4 Cenzurní engine
KONTEXT: Firma manipuluje tok informací. Hledáš policy diff, executive override, log integrity, podpisy, timeline a bezpečný archiv bez úniku osobních dat.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: whistle archive create
DOKONČENÍ: complete blue-story-019
""",
            allowedCommands: ["whistle archive create", "complete blue-story-019"],
            completionCommand: "complete blue-story-019",
            rewardXP: 170,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-020",
            category: .blueteam,
            titleCS: """
K5 Nástroje, VPN a automatizace / mise 1: download app lab-vpn
""",
            titleEN: """
K5 Nástroje, VPN a automatizace / mise 1: download app lab-vpn
""",
            objectiveCS: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: download app lab-vpn
DOKONČENÍ: complete blue-story-020
""",
            objectiveEN: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: download app lab-vpn
DOKONČENÍ: complete blue-story-020
""",
            allowedCommands: ["download app lab-vpn", "complete blue-story-020"],
            completionCommand: "complete blue-story-020",
            rewardXP: 165,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-021",
            category: .blueteam,
            titleCS: """
K5 Nástroje, VPN a automatizace / mise 2: shasum -a 256 Downloads/lab-vpn.pkg
""",
            titleEN: """
K5 Nástroje, VPN a automatizace / mise 2: shasum -a 256 Downloads/lab-vpn.pkg
""",
            objectiveCS: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: shasum -a 256 Downloads/lab-vpn.pkg
DOKONČENÍ: complete blue-story-021
""",
            objectiveEN: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: shasum -a 256 Downloads/lab-vpn.pkg
DOKONČENÍ: complete blue-story-021
""",
            allowedCommands: ["shasum -a 256 Downloads/lab-vpn.pkg", "complete blue-story-021"],
            completionCommand: "complete blue-story-021",
            rewardXP: 170,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-022",
            category: .blueteam,
            titleCS: """
K5 Nástroje, VPN a automatizace / mise 3: install app lab-vpn
""",
            titleEN: """
K5 Nástroje, VPN a automatizace / mise 3: install app lab-vpn
""",
            objectiveCS: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: install app lab-vpn
DOKONČENÍ: complete blue-story-022
""",
            objectiveEN: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: install app lab-vpn
DOKONČENÍ: complete blue-story-022
""",
            allowedCommands: ["install app lab-vpn", "complete blue-story-022"],
            completionCommand: "complete blue-story-022",
            rewardXP: 175,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-023",
            category: .blueteam,
            titleCS: """
K5 Nástroje, VPN a automatizace / mise 4: run app lab-vpn
""",
            titleEN: """
K5 Nástroje, VPN a automatizace / mise 4: run app lab-vpn
""",
            objectiveCS: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: run app lab-vpn
DOKONČENÍ: complete blue-story-023
""",
            objectiveEN: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: run app lab-vpn
DOKONČENÍ: complete blue-story-023
""",
            allowedCommands: ["run app lab-vpn", "complete blue-story-023"],
            completionCommand: "complete blue-story-023",
            rewardXP: 180,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-024",
            category: .blueteam,
            titleCS: """
K5 Nástroje, VPN a automatizace / mise 5: vpn connect omnicore
""",
            titleEN: """
K5 Nástroje, VPN a automatizace / mise 5: vpn connect omnicore
""",
            objectiveCS: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: vpn connect omnicore
DOKONČENÍ: complete blue-story-024
""",
            objectiveEN: """
KAPITOLA: K5 Nástroje, VPN a automatizace
KONTEXT: Učíš se stahovat a ověřovat lab nástroje, instalovat VPN, spouštět logwatcher, psát skripty a dělat automatizace bez chaosu.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: vpn connect omnicore
DOKONČENÍ: complete blue-story-024
""",
            allowedCommands: ["vpn connect omnicore", "complete blue-story-024"],
            completionCommand: "complete blue-story-024",
            rewardXP: 185,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-025",
            category: .blueteam,
            titleCS: """
K6 Incident response / mise 1: download tool logwatcher
""",
            titleEN: """
K6 Incident response / mise 1: download tool logwatcher
""",
            objectiveCS: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: download tool logwatcher
DOKONČENÍ: complete blue-story-025
""",
            objectiveEN: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: download tool logwatcher
DOKONČENÍ: complete blue-story-025
""",
            allowedCommands: ["download tool logwatcher", "complete blue-story-025"],
            completionCommand: "complete blue-story-025",
            rewardXP: 180,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-026",
            category: .blueteam,
            titleCS: """
K6 Incident response / mise 2: install tool logwatcher
""",
            titleEN: """
K6 Incident response / mise 2: install tool logwatcher
""",
            objectiveCS: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: install tool logwatcher
DOKONČENÍ: complete blue-story-026
""",
            objectiveEN: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: install tool logwatcher
DOKONČENÍ: complete blue-story-026
""",
            allowedCommands: ["install tool logwatcher", "complete blue-story-026"],
            completionCommand: "complete blue-story-026",
            rewardXP: 185,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-027",
            category: .blueteam,
            titleCS: """
K6 Incident response / mise 3: create script backup-check
""",
            titleEN: """
K6 Incident response / mise 3: create script backup-check
""",
            objectiveCS: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete blue-story-027
""",
            objectiveEN: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete blue-story-027
""",
            allowedCommands: ["create script backup-check", "complete blue-story-027"],
            completionCommand: "complete blue-story-027",
            rewardXP: 190,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-028",
            category: .blueteam,
            titleCS: """
K6 Incident response / mise 4: chmod +x scripts/backup_check.sh
""",
            titleEN: """
K6 Incident response / mise 4: chmod +x scripts/backup_check.sh
""",
            objectiveCS: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: chmod +x scripts/backup_check.sh
DOKONČENÍ: complete blue-story-028
""",
            objectiveEN: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: chmod +x scripts/backup_check.sh
DOKONČENÍ: complete blue-story-028
""",
            allowedCommands: ["chmod +x scripts/backup_check.sh", "complete blue-story-028"],
            completionCommand: "complete blue-story-028",
            rewardXP: 195,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-029",
            category: .blueteam,
            titleCS: """
K6 Incident response / mise 5: ./scripts/backup_check.sh
""",
            titleEN: """
K6 Incident response / mise 5: ./scripts/backup_check.sh
""",
            objectiveCS: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete blue-story-029
""",
            objectiveEN: """
KAPITOLA: K6 Incident response
KONTEXT: Z běžného dne je incident. Třídíš alerty, izoluješ hosta, kontroluješ perzistenci, USB, certifikáty, viry-simulace a obnovu služeb.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete blue-story-029
""",
            allowedCommands: ["./scripts/backup_check.sh", "complete blue-story-029"],
            completionCommand: "complete blue-story-029",
            rewardXP: 200,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-030",
            category: .blueteam,
            titleCS: """
K7 Veřejný zájem / mise 1: ir triage lab-host
""",
            titleEN: """
K7 Veřejný zájem / mise 1: ir triage lab-host
""",
            objectiveCS: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: ir triage lab-host
DOKONČENÍ: complete blue-story-030
""",
            objectiveEN: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: ir triage lab-host
DOKONČENÍ: complete blue-story-030
""",
            allowedCommands: ["ir triage lab-host", "complete blue-story-030"],
            completionCommand: "complete blue-story-030",
            rewardXP: 195,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-031",
            category: .blueteam,
            titleCS: """
K7 Veřejný zájem / mise 2: sudo ufw deny from 10.10.10.66
""",
            titleEN: """
K7 Veřejný zájem / mise 2: sudo ufw deny from 10.10.10.66
""",
            objectiveCS: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: sudo ufw deny from 10.10.10.66
DOKONČENÍ: complete blue-story-031
""",
            objectiveEN: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: sudo ufw deny from 10.10.10.66
DOKONČENÍ: complete blue-story-031
""",
            allowedCommands: ["sudo ufw deny from 10.10.10.66", "complete blue-story-031"],
            completionCommand: "complete blue-story-031",
            rewardXP: 200,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-032",
            category: .blueteam,
            titleCS: """
K7 Veřejný zájem / mise 3: mac check persistence
""",
            titleEN: """
K7 Veřejný zájem / mise 3: mac check persistence
""",
            objectiveCS: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete blue-story-032
""",
            objectiveEN: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete blue-story-032
""",
            allowedCommands: ["mac check persistence", "complete blue-story-032"],
            completionCommand: "complete blue-story-032",
            rewardXP: 205,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-033",
            category: .blueteam,
            titleCS: """
K7 Veřejný zájem / mise 4: system_profiler SPUSBDataType
""",
            titleEN: """
K7 Veřejný zájem / mise 4: system_profiler SPUSBDataType
""",
            objectiveCS: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: system_profiler SPUSBDataType
DOKONČENÍ: complete blue-story-033
""",
            objectiveEN: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: system_profiler SPUSBDataType
DOKONČENÍ: complete blue-story-033
""",
            allowedCommands: ["system_profiler SPUSBDataType", "complete blue-story-033"],
            completionCommand: "complete blue-story-033",
            rewardXP: 210,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-034",
            category: .blueteam,
            titleCS: """
K7 Veřejný zájem / mise 5: restore dry-run
""",
            titleEN: """
K7 Veřejný zájem / mise 5: restore dry-run
""",
            objectiveCS: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete blue-story-034
""",
            objectiveEN: """
KAPITOLA: K7 Veřejný zájem
KONTEXT: Sbíráš důkazy proti firmě. Cíl není sabotáž, ale zákonné zastavení systému přes regulatorní balík, hash, řetězec důkazů a bezpečný public summary.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete blue-story-034
""",
            allowedCommands: ["restore dry-run", "complete blue-story-034"],
            completionCommand: "complete blue-story-034",
            rewardXP: 215,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-035",
            category: .blueteam,
            titleCS: """
K8 Real Mac Defender / mise 1: evidence chain build
""",
            titleEN: """
K8 Real Mac Defender / mise 1: evidence chain build
""",
            objectiveCS: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete blue-story-035
""",
            objectiveEN: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete blue-story-035
""",
            allowedCommands: ["evidence chain build", "complete blue-story-035"],
            completionCommand: "complete blue-story-035",
            rewardXP: 210,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-036",
            category: .blueteam,
            titleCS: """
K8 Real Mac Defender / mise 2: hash evidence/omnicore-ledger.json
""",
            titleEN: """
K8 Real Mac Defender / mise 2: hash evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete blue-story-036
""",
            objectiveEN: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete blue-story-036
""",
            allowedCommands: ["hash evidence/omnicore-ledger.json", "complete blue-story-036"],
            completionCommand: "complete blue-story-036",
            rewardXP: 215,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-037",
            category: .blueteam,
            titleCS: """
K8 Real Mac Defender / mise 3: regulator package prepare
""",
            titleEN: """
K8 Real Mac Defender / mise 3: regulator package prepare
""",
            objectiveCS: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete blue-story-037
""",
            objectiveEN: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete blue-story-037
""",
            allowedCommands: ["regulator package prepare", "complete blue-story-037"],
            completionCommand: "complete blue-story-037",
            rewardXP: 220,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-038",
            category: .blueteam,
            titleCS: """
K8 Real Mac Defender / mise 4: report public-interest
""",
            titleEN: """
K8 Real Mac Defender / mise 4: report public-interest
""",
            objectiveCS: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: report public-interest
DOKONČENÍ: complete blue-story-038
""",
            objectiveEN: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: report public-interest
DOKONČENÍ: complete blue-story-038
""",
            allowedCommands: ["report public-interest", "complete blue-story-038"],
            completionCommand: "complete blue-story-038",
            rewardXP: 225,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "blue-story-039",
            category: .blueteam,
            titleCS: """
K8 Real Mac Defender / mise 5: mac hardening checklist
""",
            titleEN: """
K8 Real Mac Defender / mise 5: mac hardening checklist
""",
            objectiveCS: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete blue-story-039
""",
            objectiveEN: """
KAPITOLA: K8 Real Mac Defender
KONTEXT: Finále převádí znalosti na vlastní Mac: FileVault, firewall, sdílení, privacy oprávnění, profily, autostart, zálohy, iCloud/2FA a checklist.
CO DĚLÁŠ: Pracuješ jako obránce/SOC analytik a správce virtuálního MacBooku a serverů OmniCore.
PROČ TO DĚLÁŠ: Cílem je pochopit obranu přes praxi: logy, data, identitu, zálohy, síť, aplikace a důkazní řetězec.
CO ZÍSKÁŠ: Získáš použitelný mentální model pro vlastní Mac: co zkontrolovat, proč to má smysl a jak poznat riziko.
CO ZTRATÍŠ/RISKUJEŠ: Když váháš nebo píšeš špatné příkazy, roste chaos: popupy, virus-sim, ztráta času a horší skóre.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete blue-story-039
""",
            allowedCommands: ["mac hardening checklist", "complete blue-story-039"],
            completionCommand: "complete blue-story-039",
            rewardXP: 230,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-000",
            category: .redteam,
            titleCS: """
K1 Samouk v homelabu / mise 1: cat briefing/red-origin.txt
""",
            titleEN: """
K1 Samouk v homelabu / mise 1: cat briefing/red-origin.txt
""",
            objectiveCS: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: cat briefing/red-origin.txt
DOKONČENÍ: complete red-story-000
""",
            objectiveEN: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: cat briefing/red-origin.txt
DOKONČENÍ: complete red-story-000
""",
            allowedCommands: ["cat briefing/red-origin.txt", "complete red-story-000"],
            completionCommand: "complete red-story-000",
            rewardXP: 105,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-001",
            category: .redteam,
            titleCS: """
K1 Samouk v homelabu / mise 2: homelab build
""",
            titleEN: """
K1 Samouk v homelabu / mise 2: homelab build
""",
            objectiveCS: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: homelab build
DOKONČENÍ: complete red-story-001
""",
            objectiveEN: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: homelab build
DOKONČENÍ: complete red-story-001
""",
            allowedCommands: ["homelab build", "complete red-story-001"],
            completionCommand: "complete red-story-001",
            rewardXP: 110,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-002",
            category: .redteam,
            titleCS: """
K1 Samouk v homelabu / mise 3: lab scope
""",
            titleEN: """
K1 Samouk v homelabu / mise 3: lab scope
""",
            objectiveCS: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete red-story-002
""",
            objectiveEN: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete red-story-002
""",
            allowedCommands: ["lab scope", "complete red-story-002"],
            completionCommand: "complete red-story-002",
            rewardXP: 115,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-003",
            category: .redteam,
            titleCS: """
K1 Samouk v homelabu / mise 4: world map
""",
            titleEN: """
K1 Samouk v homelabu / mise 4: world map
""",
            objectiveCS: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete red-story-003
""",
            objectiveEN: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete red-story-003
""",
            allowedCommands: ["world map", "complete red-story-003"],
            completionCommand: "complete red-story-003",
            rewardXP: 120,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-004",
            category: .redteam,
            titleCS: """
K1 Samouk v homelabu / mise 5: linux nav lab
""",
            titleEN: """
K1 Samouk v homelabu / mise 5: linux nav lab
""",
            objectiveCS: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: linux nav lab
DOKONČENÍ: complete red-story-004
""",
            objectiveEN: """
KAPITOLA: K1 Samouk v homelabu
KONTEXT: Začínáš doma. Stavíš lab, učíš se shell, síť, bezpečný scope a proč nestačí kopírovat příkazy.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: linux nav lab
DOKONČENÍ: complete red-story-004
""",
            allowedCommands: ["linux nav lab", "complete red-story-004"],
            completionCommand: "complete red-story-004",
            rewardXP: 125,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-005",
            category: .redteam,
            titleCS: """
K2 Unix/Linux OS / mise 1: ifconfig lab0
""",
            titleEN: """
K2 Unix/Linux OS / mise 1: ifconfig lab0
""",
            objectiveCS: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: ifconfig lab0
DOKONČENÍ: complete red-story-005
""",
            objectiveEN: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: ifconfig lab0
DOKONČENÍ: complete red-story-005
""",
            allowedCommands: ["ifconfig lab0", "complete red-story-005"],
            completionCommand: "complete red-story-005",
            rewardXP: 120,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-006",
            category: .redteam,
            titleCS: """
K2 Unix/Linux OS / mise 2: netstat -rn
""",
            titleEN: """
K2 Unix/Linux OS / mise 2: netstat -rn
""",
            objectiveCS: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: netstat -rn
DOKONČENÍ: complete red-story-006
""",
            objectiveEN: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: netstat -rn
DOKONČENÍ: complete red-story-006
""",
            allowedCommands: ["netstat -rn", "complete red-story-006"],
            completionCommand: "complete red-story-006",
            rewardXP: 125,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-007",
            category: .redteam,
            titleCS: """
K2 Unix/Linux OS / mise 3: journalctl -u lab-web --since "10 min ago"
""",
            titleEN: """
K2 Unix/Linux OS / mise 3: journalctl -u lab-web --since "10 min ago"
""",
            objectiveCS: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: journalctl -u lab-web --since "10 min ago"
DOKONČENÍ: complete red-story-007
""",
            objectiveEN: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: journalctl -u lab-web --since "10 min ago"
DOKONČENÍ: complete red-story-007
""",
            allowedCommands: ["journalctl -u lab-web --since \"10 min ago\"", "complete red-story-007"],
            completionCommand: "complete red-story-007",
            rewardXP: 130,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-008",
            category: .redteam,
            titleCS: """
K2 Unix/Linux OS / mise 4: grep "FAILED" logs/auth.log
""",
            titleEN: """
K2 Unix/Linux OS / mise 4: grep "FAILED" logs/auth.log
""",
            objectiveCS: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: grep "FAILED" logs/auth.log
DOKONČENÍ: complete red-story-008
""",
            objectiveEN: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: grep "FAILED" logs/auth.log
DOKONČENÍ: complete red-story-008
""",
            allowedCommands: ["grep \"FAILED\" logs/auth.log", "complete red-story-008"],
            completionCommand: "complete red-story-008",
            rewardXP: 135,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-009",
            category: .redteam,
            titleCS: """
K2 Unix/Linux OS / mise 5: report draft
""",
            titleEN: """
K2 Unix/Linux OS / mise 5: report draft
""",
            objectiveCS: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete red-story-009
""",
            objectiveEN: """
KAPITOLA: K2 Unix/Linux OS
KONTEXT: Pracuješ s adresáři, právy, logy, procesy, balíčky a službami. Hra vysvětluje, co děláš a jak to použít legálně.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete red-story-009
""",
            allowedCommands: ["report draft", "complete red-story-009"],
            completionCommand: "complete red-story-009",
            rewardXP: 140,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-010",
            category: .redteam,
            titleCS: """
K3 OSINT a stopa / mise 1: whois corp.local
""",
            titleEN: """
K3 OSINT a stopa / mise 1: whois corp.local
""",
            objectiveCS: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: whois corp.local
DOKONČENÍ: complete red-story-010
""",
            objectiveEN: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: whois corp.local
DOKONČENÍ: complete red-story-010
""",
            allowedCommands: ["whois corp.local", "complete red-story-010"],
            completionCommand: "complete red-story-010",
            rewardXP: 135,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-011",
            category: .redteam,
            titleCS: """
K3 OSINT a stopa / mise 2: dig corp.local mx
""",
            titleEN: """
K3 OSINT a stopa / mise 2: dig corp.local mx
""",
            objectiveCS: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: dig corp.local mx
DOKONČENÍ: complete red-story-011
""",
            objectiveEN: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: dig corp.local mx
DOKONČENÍ: complete red-story-011
""",
            allowedCommands: ["dig corp.local mx", "complete red-story-011"],
            completionCommand: "complete red-story-011",
            rewardXP: 140,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-012",
            category: .redteam,
            titleCS: """
K3 OSINT a stopa / mise 3: dig corp.local txt
""",
            titleEN: """
K3 OSINT a stopa / mise 3: dig corp.local txt
""",
            objectiveCS: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: dig corp.local txt
DOKONČENÍ: complete red-story-012
""",
            objectiveEN: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: dig corp.local txt
DOKONČENÍ: complete red-story-012
""",
            allowedCommands: ["dig corp.local txt", "complete red-story-012"],
            completionCommand: "complete red-story-012",
            rewardXP: 145,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-013",
            category: .redteam,
            titleCS: """
K3 OSINT a stopa / mise 4: theHarvester -d corp.local -b lab
""",
            titleEN: """
K3 OSINT a stopa / mise 4: theHarvester -d corp.local -b lab
""",
            objectiveCS: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: theHarvester -d corp.local -b lab
DOKONČENÍ: complete red-story-013
""",
            objectiveEN: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: theHarvester -d corp.local -b lab
DOKONČENÍ: complete red-story-013
""",
            allowedCommands: ["theHarvester -d corp.local -b lab", "complete red-story-013"],
            completionCommand: "complete red-story-013",
            rewardXP: 150,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-014",
            category: .redteam,
            titleCS: """
K3 OSINT a stopa / mise 5: exiftool evidence/photo_lab.jpg
""",
            titleEN: """
K3 OSINT a stopa / mise 5: exiftool evidence/photo_lab.jpg
""",
            objectiveCS: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: exiftool evidence/photo_lab.jpg
DOKONČENÍ: complete red-story-014
""",
            objectiveEN: """
KAPITOLA: K3 OSINT a stopa
KONTEXT: Učíš se číst metadata, DNS, mail povrch, veřejné profily a oddělit důkaz od domněnky.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: exiftool evidence/photo_lab.jpg
DOKONČENÍ: complete red-story-014
""",
            allowedCommands: ["exiftool evidence/photo_lab.jpg", "complete red-story-014"],
            completionCommand: "complete red-story-014",
            rewardXP: 155,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-015",
            category: .redteam,
            titleCS: """
K4 Lab recon a proof-only / mise 1: nmap -sV -Pn 10.10.10.20
""",
            titleEN: """
K4 Lab recon a proof-only / mise 1: nmap -sV -Pn 10.10.10.20
""",
            objectiveCS: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: nmap -sV -Pn 10.10.10.20
DOKONČENÍ: complete red-story-015
""",
            objectiveEN: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: nmap -sV -Pn 10.10.10.20
DOKONČENÍ: complete red-story-015
""",
            allowedCommands: ["nmap -sV -Pn 10.10.10.20", "complete red-story-015"],
            completionCommand: "complete red-story-015",
            rewardXP: 150,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-016",
            category: .redteam,
            titleCS: """
K4 Lab recon a proof-only / mise 2: curl -I http://lab-web.corp.local:8080
""",
            titleEN: """
K4 Lab recon a proof-only / mise 2: curl -I http://lab-web.corp.local:8080
""",
            objectiveCS: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: curl -I http://lab-web.corp.local:8080
DOKONČENÍ: complete red-story-016
""",
            objectiveEN: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: curl -I http://lab-web.corp.local:8080
DOKONČENÍ: complete red-story-016
""",
            allowedCommands: ["curl -I http://lab-web.corp.local:8080", "complete red-story-016"],
            completionCommand: "complete red-story-016",
            rewardXP: 155,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-017",
            category: .redteam,
            titleCS: """
K4 Lab recon a proof-only / mise 3: nmap --script vuln lab-web.corp.local
""",
            titleEN: """
K4 Lab recon a proof-only / mise 3: nmap --script vuln lab-web.corp.local
""",
            objectiveCS: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: nmap --script vuln lab-web.corp.local
DOKONČENÍ: complete red-story-017
""",
            objectiveEN: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: nmap --script vuln lab-web.corp.local
DOKONČENÍ: complete red-story-017
""",
            allowedCommands: ["nmap --script vuln lab-web.corp.local", "complete red-story-017"],
            completionCommand: "complete red-story-017",
            rewardXP: 160,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-018",
            category: .redteam,
            titleCS: """
K4 Lab recon a proof-only / mise 4: redteam report risk
""",
            titleEN: """
K4 Lab recon a proof-only / mise 4: redteam report risk
""",
            objectiveCS: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: redteam report risk
DOKONČENÍ: complete red-story-018
""",
            objectiveEN: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: redteam report risk
DOKONČENÍ: complete red-story-018
""",
            allowedCommands: ["redteam report risk", "complete red-story-018"],
            completionCommand: "complete red-story-018",
            rewardXP: 165,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-019",
            category: .redteam,
            titleCS: """
K4 Lab recon a proof-only / mise 5: greyteam review
""",
            titleEN: """
K4 Lab recon a proof-only / mise 5: greyteam review
""",
            objectiveCS: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete red-story-019
""",
            objectiveEN: """
KAPITOLA: K4 Lab recon a proof-only
KONTEXT: V lab síti mapuješ služby a dokazuješ slabinu bez zneužití. Cíl je report, ne škoda.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete red-story-019
""",
            allowedCommands: ["greyteam review", "complete red-story-019"],
            completionCommand: "complete red-story-019",
            rewardXP: 170,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-020",
            category: .redteam,
            titleCS: """
K5 GovSim průšvih / mise 1: govsim ethics warning
""",
            titleEN: """
K5 GovSim průšvih / mise 1: govsim ethics warning
""",
            objectiveCS: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim ethics warning
DOKONČENÍ: complete red-story-020
""",
            objectiveEN: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim ethics warning
DOKONČENÍ: complete red-story-020
""",
            allowedCommands: ["govsim ethics warning", "complete red-story-020"],
            completionCommand: "complete red-story-020",
            rewardXP: 165,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-021",
            category: .redteam,
            titleCS: """
K5 GovSim průšvih / mise 2: govsim recon perimeter
""",
            titleEN: """
K5 GovSim průšvih / mise 2: govsim recon perimeter
""",
            objectiveCS: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim recon perimeter
DOKONČENÍ: complete red-story-021
""",
            objectiveEN: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim recon perimeter
DOKONČENÍ: complete red-story-021
""",
            allowedCommands: ["govsim recon perimeter", "complete red-story-021"],
            completionCommand: "complete red-story-021",
            rewardXP: 170,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-022",
            category: .redteam,
            titleCS: """
K5 GovSim průšvih / mise 3: govsim proof misconfig
""",
            titleEN: """
K5 GovSim průšvih / mise 3: govsim proof misconfig
""",
            objectiveCS: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim proof misconfig
DOKONČENÍ: complete red-story-022
""",
            objectiveEN: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: govsim proof misconfig
DOKONČENÍ: complete red-story-022
""",
            allowedCommands: ["govsim proof misconfig", "complete red-story-022"],
            completionCommand: "complete red-story-022",
            rewardXP: 175,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-023",
            category: .redteam,
            titleCS: """
K5 GovSim průšvih / mise 4: forensic trace show
""",
            titleEN: """
K5 GovSim průšvih / mise 4: forensic trace show
""",
            objectiveCS: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete red-story-023
""",
            objectiveEN: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete red-story-023
""",
            allowedCommands: ["forensic trace show", "complete red-story-023"],
            completionCommand: "complete red-story-023",
            rewardXP: 180,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-024",
            category: .redteam,
            titleCS: """
K5 GovSim průšvih / mise 5: legal debrief accept
""",
            titleEN: """
K5 GovSim průšvih / mise 5: legal debrief accept
""",
            objectiveCS: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: legal debrief accept
DOKONČENÍ: complete red-story-024
""",
            objectiveEN: """
KAPITOLA: K5 GovSim průšvih
KONTEXT: Ve fiktivním vládním simulátoru překročíš hranici. Hra ukáže forenzní stopy, právní riziko a proč scope není formalita.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: legal debrief accept
DOKONČENÍ: complete red-story-024
""",
            allowedCommands: ["legal debrief accept", "complete red-story-024"],
            completionCommand: "complete red-story-024",
            rewardXP: 185,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-025",
            category: .redteam,
            titleCS: """
K6 Debrief a nábor / mise 1: ct briefing read
""",
            titleEN: """
K6 Debrief a nábor / mise 1: ct briefing read
""",
            objectiveCS: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: ct briefing read
DOKONČENÍ: complete red-story-025
""",
            objectiveEN: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: ct briefing read
DOKONČENÍ: complete red-story-025
""",
            allowedCommands: ["ct briefing read", "complete red-story-025"],
            completionCommand: "complete red-story-025",
            rewardXP: 180,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-026",
            category: .redteam,
            titleCS: """
K6 Debrief a nábor / mise 2: osint triage threat-cell
""",
            titleEN: """
K6 Debrief a nábor / mise 2: osint triage threat-cell
""",
            objectiveCS: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: osint triage threat-cell
DOKONČENÍ: complete red-story-026
""",
            objectiveEN: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: osint triage threat-cell
DOKONČENÍ: complete red-story-026
""",
            allowedCommands: ["osint triage threat-cell", "complete red-story-026"],
            completionCommand: "complete red-story-026",
            rewardXP: 185,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-027",
            category: .redteam,
            titleCS: """
K6 Debrief a nábor / mise 3: timeline build threat-cell
""",
            titleEN: """
K6 Debrief a nábor / mise 3: timeline build threat-cell
""",
            objectiveCS: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: timeline build threat-cell
DOKONČENÍ: complete red-story-027
""",
            objectiveEN: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: timeline build threat-cell
DOKONČENÍ: complete red-story-027
""",
            allowedCommands: ["timeline build threat-cell", "complete red-story-027"],
            completionCommand: "complete red-story-027",
            rewardXP: 190,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-028",
            category: .redteam,
            titleCS: """
K6 Debrief a nábor / mise 4: report ct-lead
""",
            titleEN: """
K6 Debrief a nábor / mise 4: report ct-lead
""",
            objectiveCS: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: report ct-lead
DOKONČENÍ: complete red-story-028
""",
            objectiveEN: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: report ct-lead
DOKONČENÍ: complete red-story-028
""",
            allowedCommands: ["report ct-lead", "complete red-story-028"],
            completionCommand: "complete red-story-028",
            rewardXP: 195,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-029",
            category: .redteam,
            titleCS: """
K6 Debrief a nábor / mise 5: evidence chain build
""",
            titleEN: """
K6 Debrief a nábor / mise 5: evidence chain build
""",
            objectiveCS: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete red-story-029
""",
            objectiveEN: """
KAPITOLA: K6 Debrief a nábor
KONTEXT: Místo romantiky hacku přichází dohled, pravidla, reportování a rozhodnutí, jestli zvládneš disciplínu.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete red-story-029
""",
            allowedCommands: ["evidence chain build", "complete red-story-029"],
            completionCommand: "complete red-story-029",
            rewardXP: 200,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-030",
            category: .redteam,
            titleCS: """
K7 Boj s terorismem / mise 1: case wannacry
""",
            titleEN: """
K7 Boj s terorismem / mise 1: case wannacry
""",
            objectiveCS: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case wannacry
DOKONČENÍ: complete red-story-030
""",
            objectiveEN: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case wannacry
DOKONČENÍ: complete red-story-030
""",
            allowedCommands: ["case wannacry", "complete red-story-030"],
            completionCommand: "complete red-story-030",
            rewardXP: 195,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-031",
            category: .redteam,
            titleCS: """
K7 Boj s terorismem / mise 2: lab patch smb
""",
            titleEN: """
K7 Boj s terorismem / mise 2: lab patch smb
""",
            objectiveCS: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab patch smb
DOKONČENÍ: complete red-story-031
""",
            objectiveEN: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab patch smb
DOKONČENÍ: complete red-story-031
""",
            allowedCommands: ["lab patch smb", "complete red-story-031"],
            completionCommand: "complete red-story-031",
            rewardXP: 200,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-032",
            category: .redteam,
            titleCS: """
K7 Boj s terorismem / mise 3: case notpetya
""",
            titleEN: """
K7 Boj s terorismem / mise 3: case notpetya
""",
            objectiveCS: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case notpetya
DOKONČENÍ: complete red-story-032
""",
            objectiveEN: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case notpetya
DOKONČENÍ: complete red-story-032
""",
            allowedCommands: ["case notpetya", "complete red-story-032"],
            completionCommand: "complete red-story-032",
            rewardXP: 205,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-033",
            category: .redteam,
            titleCS: """
K7 Boj s terorismem / mise 4: lab segment network
""",
            titleEN: """
K7 Boj s terorismem / mise 4: lab segment network
""",
            objectiveCS: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete red-story-033
""",
            objectiveEN: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete red-story-033
""",
            allowedCommands: ["lab segment network", "complete red-story-033"],
            completionCommand: "complete red-story-033",
            rewardXP: 210,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-034",
            category: .redteam,
            titleCS: """
K7 Boj s terorismem / mise 5: case equifax
""",
            titleEN: """
K7 Boj s terorismem / mise 5: case equifax
""",
            objectiveCS: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case equifax
DOKONČENÍ: complete red-story-034
""",
            objectiveEN: """
KAPITOLA: K7 Boj s terorismem
KONTEXT: Pracuješ pro obranu: OSINT triage, timeline, verifikace zdrojů, žádné doxxování nevinných, eskalace přes zákonné kanály.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case equifax
DOKONČENÍ: complete red-story-034
""",
            allowedCommands: ["case equifax", "complete red-story-034"],
            completionCommand: "complete red-story-034",
            rewardXP: 215,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-035",
            category: .redteam,
            titleCS: """
K8 Historické případy / mise 1: lab patch struts
""",
            titleEN: """
K8 Historické případy / mise 1: lab patch struts
""",
            objectiveCS: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab patch struts
DOKONČENÍ: complete red-story-035
""",
            objectiveEN: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab patch struts
DOKONČENÍ: complete red-story-035
""",
            allowedCommands: ["lab patch struts", "complete red-story-035"],
            completionCommand: "complete red-story-035",
            rewardXP: 210,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-036",
            category: .redteam,
            titleCS: """
K8 Historické případy / mise 2: case colonial
""",
            titleEN: """
K8 Historické případy / mise 2: case colonial
""",
            objectiveCS: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case colonial
DOKONČENÍ: complete red-story-036
""",
            objectiveEN: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case colonial
DOKONČENÍ: complete red-story-036
""",
            allowedCommands: ["case colonial", "complete red-story-036"],
            completionCommand: "complete red-story-036",
            rewardXP: 215,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-037",
            category: .redteam,
            titleCS: """
K8 Historické případy / mise 3: lab rotate vpn
""",
            titleEN: """
K8 Historické případy / mise 3: lab rotate vpn
""",
            objectiveCS: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab rotate vpn
DOKONČENÍ: complete red-story-037
""",
            objectiveEN: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab rotate vpn
DOKONČENÍ: complete red-story-037
""",
            allowedCommands: ["lab rotate vpn", "complete red-story-037"],
            completionCommand: "complete red-story-037",
            rewardXP: 220,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-038",
            category: .redteam,
            titleCS: """
K8 Historické případy / mise 4: case solarwinds
""",
            titleEN: """
K8 Historické případy / mise 4: case solarwinds
""",
            objectiveCS: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case solarwinds
DOKONČENÍ: complete red-story-038
""",
            objectiveEN: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: case solarwinds
DOKONČENÍ: complete red-story-038
""",
            allowedCommands: ["case solarwinds", "complete red-story-038"],
            completionCommand: "complete red-story-038",
            rewardXP: 225,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "red-story-039",
            category: .redteam,
            titleCS: """
K8 Historické případy / mise 5: lab sbom verify
""",
            titleEN: """
K8 Historické případy / mise 5: lab sbom verify
""",
            objectiveCS: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete red-story-039
""",
            objectiveEN: """
KAPITOLA: K8 Historické případy
KONTEXT: Reálné incidenty jsou převyprávěné jako bezpečné lab lekce: ransomware, supply-chain, identita, patching a report.
CO DĚLÁŠ: Hraješ útočnou perspektivu v uzavřeném labu, abys pochopil motivaci a postup útočníka bez reálné škody.
PROČ TO DĚLÁŠ: Obrana je silná až tehdy, když chápe, jak útočník přemýšlí, jak hledá slabinu a jaké stopy nechává.
CO ZÍSKÁŠ: Získáš schopnost číst riziko, psát proof-only report a respektovat scope místo hraní na hrdinu.
CO ZTRATÍŠ/RISKUJEŠ: Překročení scope v příběhu znamená právní debriefing, forenzní stopu a ztrátu důvěry.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete red-story-039
""",
            allowedCommands: ["lab sbom verify", "complete red-story-039"],
            completionCommand: "complete red-story-039",
            rewardXP: 230,
            levelRequired: 1,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-000",
            category: .greyteam,
            titleCS: """
K1 Scope a pravidla / mise 1: lab scope
""",
            titleEN: """
K1 Scope a pravidla / mise 1: lab scope
""",
            objectiveCS: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete grey-story-000
""",
            objectiveEN: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete grey-story-000
""",
            allowedCommands: ["lab scope", "complete grey-story-000"],
            completionCommand: "complete grey-story-000",
            rewardXP: 105,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-001",
            category: .greyteam,
            titleCS: """
K1 Scope a pravidla / mise 2: world map
""",
            titleEN: """
K1 Scope a pravidla / mise 2: world map
""",
            objectiveCS: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete grey-story-001
""",
            objectiveEN: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete grey-story-001
""",
            allowedCommands: ["world map", "complete grey-story-001"],
            completionCommand: "complete grey-story-001",
            rewardXP: 110,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-002",
            category: .greyteam,
            titleCS: """
K1 Scope a pravidla / mise 3: lab hosts
""",
            titleEN: """
K1 Scope a pravidla / mise 3: lab hosts
""",
            objectiveCS: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab hosts
DOKONČENÍ: complete grey-story-002
""",
            objectiveEN: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab hosts
DOKONČENÍ: complete grey-story-002
""",
            allowedCommands: ["lab hosts", "complete grey-story-002"],
            completionCommand: "complete grey-story-002",
            rewardXP: 115,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-003",
            category: .greyteam,
            titleCS: """
K1 Scope a pravidla / mise 4: lab services
""",
            titleEN: """
K1 Scope a pravidla / mise 4: lab services
""",
            objectiveCS: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab services
DOKONČENÍ: complete grey-story-003
""",
            objectiveEN: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab services
DOKONČENÍ: complete grey-story-003
""",
            allowedCommands: ["lab services", "complete grey-story-003"],
            completionCommand: "complete grey-story-003",
            rewardXP: 120,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-004",
            category: .greyteam,
            titleCS: """
K1 Scope a pravidla / mise 5: nmap -sV -Pn 10.10.10.20
""",
            titleEN: """
K1 Scope a pravidla / mise 5: nmap -sV -Pn 10.10.10.20
""",
            objectiveCS: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: nmap -sV -Pn 10.10.10.20
DOKONČENÍ: complete grey-story-004
""",
            objectiveEN: """
KAPITOLA: K1 Scope a pravidla
KONTEXT: Nastavuješ hranice testu a učíš se, že grey práce bez pravidel skončí chaosem.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: nmap -sV -Pn 10.10.10.20
DOKONČENÍ: complete grey-story-004
""",
            allowedCommands: ["nmap -sV -Pn 10.10.10.20", "complete grey-story-004"],
            completionCommand: "complete grey-story-004",
            rewardXP: 125,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-005",
            category: .greyteam,
            titleCS: """
K2 Kontrolovaný recon / mise 1: curl -I http://lab-web.corp.local:8080
""",
            titleEN: """
K2 Kontrolovaný recon / mise 1: curl -I http://lab-web.corp.local:8080
""",
            objectiveCS: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: curl -I http://lab-web.corp.local:8080
DOKONČENÍ: complete grey-story-005
""",
            objectiveEN: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: curl -I http://lab-web.corp.local:8080
DOKONČENÍ: complete grey-story-005
""",
            allowedCommands: ["curl -I http://lab-web.corp.local:8080", "complete grey-story-005"],
            completionCommand: "complete grey-story-005",
            rewardXP: 120,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-006",
            category: .greyteam,
            titleCS: """
K2 Kontrolovaný recon / mise 2: nmap --script vuln lab-web.corp.local
""",
            titleEN: """
K2 Kontrolovaný recon / mise 2: nmap --script vuln lab-web.corp.local
""",
            objectiveCS: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: nmap --script vuln lab-web.corp.local
DOKONČENÍ: complete grey-story-006
""",
            objectiveEN: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: nmap --script vuln lab-web.corp.local
DOKONČENÍ: complete grey-story-006
""",
            allowedCommands: ["nmap --script vuln lab-web.corp.local", "complete grey-story-006"],
            completionCommand: "complete grey-story-006",
            rewardXP: 125,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-007",
            category: .greyteam,
            titleCS: """
K2 Kontrolovaný recon / mise 3: greyteam review
""",
            titleEN: """
K2 Kontrolovaný recon / mise 3: greyteam review
""",
            objectiveCS: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete grey-story-007
""",
            objectiveEN: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete grey-story-007
""",
            allowedCommands: ["greyteam review", "complete grey-story-007"],
            completionCommand: "complete grey-story-007",
            rewardXP: 130,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-008",
            category: .greyteam,
            titleCS: """
K2 Kontrolovaný recon / mise 4: report draft
""",
            titleEN: """
K2 Kontrolovaný recon / mise 4: report draft
""",
            objectiveCS: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete grey-story-008
""",
            objectiveEN: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete grey-story-008
""",
            allowedCommands: ["report draft", "complete grey-story-008"],
            completionCommand: "complete grey-story-008",
            rewardXP: 135,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-009",
            category: .greyteam,
            titleCS: """
K2 Kontrolovaný recon / mise 5: patch plan prod-web-01
""",
            titleEN: """
K2 Kontrolovaný recon / mise 5: patch plan prod-web-01
""",
            objectiveCS: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: patch plan prod-web-01
DOKONČENÍ: complete grey-story-009
""",
            objectiveEN: """
KAPITOLA: K2 Kontrolovaný recon
KONTEXT: Mapuješ lab služby a hned píšeš obranné poznámky.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: patch plan prod-web-01
DOKONČENÍ: complete grey-story-009
""",
            allowedCommands: ["patch plan prod-web-01", "complete grey-story-009"],
            completionCommand: "complete grey-story-009",
            rewardXP: 140,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-010",
            category: .greyteam,
            titleCS: """
K3 Validace bez škody / mise 1: sudo ufw status verbose
""",
            titleEN: """
K3 Validace bez škody / mise 1: sudo ufw status verbose
""",
            objectiveCS: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw status verbose
DOKONČENÍ: complete grey-story-010
""",
            objectiveEN: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw status verbose
DOKONČENÍ: complete grey-story-010
""",
            allowedCommands: ["sudo ufw status verbose", "complete grey-story-010"],
            completionCommand: "complete grey-story-010",
            rewardXP: 135,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-011",
            category: .greyteam,
            titleCS: """
K3 Validace bez škody / mise 2: sudo ufw deny from 10.10.10.66
""",
            titleEN: """
K3 Validace bez škody / mise 2: sudo ufw deny from 10.10.10.66
""",
            objectiveCS: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw deny from 10.10.10.66
DOKONČENÍ: complete grey-story-011
""",
            objectiveEN: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw deny from 10.10.10.66
DOKONČENÍ: complete grey-story-011
""",
            allowedCommands: ["sudo ufw deny from 10.10.10.66", "complete grey-story-011"],
            completionCommand: "complete grey-story-011",
            rewardXP: 140,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-012",
            category: .greyteam,
            titleCS: """
K3 Validace bez škody / mise 3: sudo ufw allow 443/tcp
""",
            titleEN: """
K3 Validace bez škody / mise 3: sudo ufw allow 443/tcp
""",
            objectiveCS: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw allow 443/tcp
DOKONČENÍ: complete grey-story-012
""",
            objectiveEN: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: sudo ufw allow 443/tcp
DOKONČENÍ: complete grey-story-012
""",
            allowedCommands: ["sudo ufw allow 443/tcp", "complete grey-story-012"],
            completionCommand: "complete grey-story-012",
            rewardXP: 145,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-013",
            category: .greyteam,
            titleCS: """
K3 Validace bez škody / mise 4: journalctl -u lab-web --since "10 min ago"
""",
            titleEN: """
K3 Validace bez škody / mise 4: journalctl -u lab-web --since "10 min ago"
""",
            objectiveCS: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: journalctl -u lab-web --since "10 min ago"
DOKONČENÍ: complete grey-story-013
""",
            objectiveEN: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: journalctl -u lab-web --since "10 min ago"
DOKONČENÍ: complete grey-story-013
""",
            allowedCommands: ["journalctl -u lab-web --since \"10 min ago\"", "complete grey-story-013"],
            completionCommand: "complete grey-story-013",
            rewardXP: 150,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-014",
            category: .greyteam,
            titleCS: """
K3 Validace bez škody / mise 5: grep "FAILED" logs/auth.log
""",
            titleEN: """
K3 Validace bez škody / mise 5: grep "FAILED" logs/auth.log
""",
            objectiveCS: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: grep "FAILED" logs/auth.log
DOKONČENÍ: complete grey-story-014
""",
            objectiveEN: """
KAPITOLA: K3 Validace bez škody
KONTEXT: Ověřuješ slabinu proof-only a nikdy nespouštíš destruktivní krok.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: grep "FAILED" logs/auth.log
DOKONČENÍ: complete grey-story-014
""",
            allowedCommands: ["grep \"FAILED\" logs/auth.log", "complete grey-story-014"],
            completionCommand: "complete grey-story-014",
            rewardXP: 155,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-015",
            category: .greyteam,
            titleCS: """
K4 Mitigace / mise 1: create script backup-check
""",
            titleEN: """
K4 Mitigace / mise 1: create script backup-check
""",
            objectiveCS: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete grey-story-015
""",
            objectiveEN: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete grey-story-015
""",
            allowedCommands: ["create script backup-check", "complete grey-story-015"],
            completionCommand: "complete grey-story-015",
            rewardXP: 150,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-016",
            category: .greyteam,
            titleCS: """
K4 Mitigace / mise 2: chmod +x scripts/backup_check.sh
""",
            titleEN: """
K4 Mitigace / mise 2: chmod +x scripts/backup_check.sh
""",
            objectiveCS: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: chmod +x scripts/backup_check.sh
DOKONČENÍ: complete grey-story-016
""",
            objectiveEN: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: chmod +x scripts/backup_check.sh
DOKONČENÍ: complete grey-story-016
""",
            allowedCommands: ["chmod +x scripts/backup_check.sh", "complete grey-story-016"],
            completionCommand: "complete grey-story-016",
            rewardXP: 155,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-017",
            category: .greyteam,
            titleCS: """
K4 Mitigace / mise 3: ./scripts/backup_check.sh
""",
            titleEN: """
K4 Mitigace / mise 3: ./scripts/backup_check.sh
""",
            objectiveCS: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete grey-story-017
""",
            objectiveEN: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete grey-story-017
""",
            allowedCommands: ["./scripts/backup_check.sh", "complete grey-story-017"],
            completionCommand: "complete grey-story-017",
            rewardXP: 160,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-018",
            category: .greyteam,
            titleCS: """
K4 Mitigace / mise 4: npm audit --lab
""",
            titleEN: """
K4 Mitigace / mise 4: npm audit --lab
""",
            objectiveCS: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: npm audit --lab
DOKONČENÍ: complete grey-story-018
""",
            objectiveEN: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: npm audit --lab
DOKONČENÍ: complete grey-story-018
""",
            allowedCommands: ["npm audit --lab", "complete grey-story-018"],
            completionCommand: "complete grey-story-018",
            rewardXP: 165,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-019",
            category: .greyteam,
            titleCS: """
K4 Mitigace / mise 5: pip-audit -r requirements.txt
""",
            titleEN: """
K4 Mitigace / mise 5: pip-audit -r requirements.txt
""",
            objectiveCS: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: pip-audit -r requirements.txt
DOKONČENÍ: complete grey-story-019
""",
            objectiveEN: """
KAPITOLA: K4 Mitigace
KONTEXT: Překlápíš zjištění do pravidel firewallu, patchů a logů.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: pip-audit -r requirements.txt
DOKONČENÍ: complete grey-story-019
""",
            allowedCommands: ["pip-audit -r requirements.txt", "complete grey-story-019"],
            completionCommand: "complete grey-story-019",
            rewardXP: 170,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-020",
            category: .greyteam,
            titleCS: """
K5 Automatizace / mise 1: forensic trace show
""",
            titleEN: """
K5 Automatizace / mise 1: forensic trace show
""",
            objectiveCS: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete grey-story-020
""",
            objectiveEN: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete grey-story-020
""",
            allowedCommands: ["forensic trace show", "complete grey-story-020"],
            completionCommand: "complete grey-story-020",
            rewardXP: 165,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-021",
            category: .greyteam,
            titleCS: """
K5 Automatizace / mise 2: logs integrity verify
""",
            titleEN: """
K5 Automatizace / mise 2: logs integrity verify
""",
            objectiveCS: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete grey-story-021
""",
            objectiveEN: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete grey-story-021
""",
            allowedCommands: ["logs integrity verify", "complete grey-story-021"],
            completionCommand: "complete grey-story-021",
            rewardXP: 170,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-022",
            category: .greyteam,
            titleCS: """
K5 Automatizace / mise 3: evidence chain build
""",
            titleEN: """
K5 Automatizace / mise 3: evidence chain build
""",
            objectiveCS: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete grey-story-022
""",
            objectiveEN: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete grey-story-022
""",
            allowedCommands: ["evidence chain build", "complete grey-story-022"],
            completionCommand: "complete grey-story-022",
            rewardXP: 175,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-023",
            category: .greyteam,
            titleCS: """
K5 Automatizace / mise 4: hash evidence/omnicore-ledger.json
""",
            titleEN: """
K5 Automatizace / mise 4: hash evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete grey-story-023
""",
            objectiveEN: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete grey-story-023
""",
            allowedCommands: ["hash evidence/omnicore-ledger.json", "complete grey-story-023"],
            completionCommand: "complete grey-story-023",
            rewardXP: 180,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-024",
            category: .greyteam,
            titleCS: """
K5 Automatizace / mise 5: ir triage lab-host
""",
            titleEN: """
K5 Automatizace / mise 5: ir triage lab-host
""",
            objectiveCS: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ir triage lab-host
DOKONČENÍ: complete grey-story-024
""",
            objectiveEN: """
KAPITOLA: K5 Automatizace
KONTEXT: Píšeš kontrolní skripty, které pomáhají obraně, ne škodě.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ir triage lab-host
DOKONČENÍ: complete grey-story-024
""",
            allowedCommands: ["ir triage lab-host", "complete grey-story-024"],
            completionCommand: "complete grey-story-024",
            rewardXP: 185,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-025",
            category: .greyteam,
            titleCS: """
K6 Forenzní stopa / mise 1: ir contain lab-host
""",
            titleEN: """
K6 Forenzní stopa / mise 1: ir contain lab-host
""",
            objectiveCS: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ir contain lab-host
DOKONČENÍ: complete grey-story-025
""",
            objectiveEN: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: ir contain lab-host
DOKONČENÍ: complete grey-story-025
""",
            allowedCommands: ["ir contain lab-host", "complete grey-story-025"],
            completionCommand: "complete grey-story-025",
            rewardXP: 180,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-026",
            category: .greyteam,
            titleCS: """
K6 Forenzní stopa / mise 2: backup verify
""",
            titleEN: """
K6 Forenzní stopa / mise 2: backup verify
""",
            objectiveCS: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete grey-story-026
""",
            objectiveEN: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete grey-story-026
""",
            allowedCommands: ["backup verify", "complete grey-story-026"],
            completionCommand: "complete grey-story-026",
            rewardXP: 185,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-027",
            category: .greyteam,
            titleCS: """
K6 Forenzní stopa / mise 3: restore dry-run
""",
            titleEN: """
K6 Forenzní stopa / mise 3: restore dry-run
""",
            objectiveCS: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete grey-story-027
""",
            objectiveEN: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete grey-story-027
""",
            allowedCommands: ["restore dry-run", "complete grey-story-027"],
            completionCommand: "complete grey-story-027",
            rewardXP: 190,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-028",
            category: .greyteam,
            titleCS: """
K6 Forenzní stopa / mise 4: lab ioc hunt
""",
            titleEN: """
K6 Forenzní stopa / mise 4: lab ioc hunt
""",
            objectiveCS: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab ioc hunt
DOKONČENÍ: complete grey-story-028
""",
            objectiveEN: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab ioc hunt
DOKONČENÍ: complete grey-story-028
""",
            allowedCommands: ["lab ioc hunt", "complete grey-story-028"],
            completionCommand: "complete grey-story-028",
            rewardXP: 195,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-029",
            category: .greyteam,
            titleCS: """
K6 Forenzní stopa / mise 5: lab segment network
""",
            titleEN: """
K6 Forenzní stopa / mise 5: lab segment network
""",
            objectiveCS: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete grey-story-029
""",
            objectiveEN: """
KAPITOLA: K6 Forenzní stopa
KONTEXT: Kontroluješ, jak by tvé kroky vypadaly v logu.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete grey-story-029
""",
            allowedCommands: ["lab segment network", "complete grey-story-029"],
            completionCommand: "complete grey-story-029",
            rewardXP: 200,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-030",
            category: .greyteam,
            titleCS: """
K7 Komunikace / mise 1: lab mfa enforce
""",
            titleEN: """
K7 Komunikace / mise 1: lab mfa enforce
""",
            objectiveCS: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab mfa enforce
DOKONČENÍ: complete grey-story-030
""",
            objectiveEN: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab mfa enforce
DOKONČENÍ: complete grey-story-030
""",
            allowedCommands: ["lab mfa enforce", "complete grey-story-030"],
            completionCommand: "complete grey-story-030",
            rewardXP: 195,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-031",
            category: .greyteam,
            titleCS: """
K7 Komunikace / mise 2: lab sbom verify
""",
            titleEN: """
K7 Komunikace / mise 2: lab sbom verify
""",
            objectiveCS: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete grey-story-031
""",
            objectiveEN: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete grey-story-031
""",
            allowedCommands: ["lab sbom verify", "complete grey-story-031"],
            completionCommand: "complete grey-story-031",
            rewardXP: 200,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-032",
            category: .greyteam,
            titleCS: """
K7 Komunikace / mise 3: lab vendor isolate
""",
            titleEN: """
K7 Komunikace / mise 3: lab vendor isolate
""",
            objectiveCS: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab vendor isolate
DOKONČENÍ: complete grey-story-032
""",
            objectiveEN: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab vendor isolate
DOKONČENÍ: complete grey-story-032
""",
            allowedCommands: ["lab vendor isolate", "complete grey-story-032"],
            completionCommand: "complete grey-story-032",
            rewardXP: 205,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-033",
            category: .greyteam,
            titleCS: """
K7 Komunikace / mise 4: lab verify backups
""",
            titleEN: """
K7 Komunikace / mise 4: lab verify backups
""",
            objectiveCS: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab verify backups
DOKONČENÍ: complete grey-story-033
""",
            objectiveEN: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: lab verify backups
DOKONČENÍ: complete grey-story-033
""",
            allowedCommands: ["lab verify backups", "complete grey-story-033"],
            completionCommand: "complete grey-story-033",
            rewardXP: 210,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-034",
            category: .greyteam,
            titleCS: """
K7 Komunikace / mise 5: redteam report risk
""",
            titleEN: """
K7 Komunikace / mise 5: redteam report risk
""",
            objectiveCS: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: redteam report risk
DOKONČENÍ: complete grey-story-034
""",
            objectiveEN: """
KAPITOLA: K7 Komunikace
KONTEXT: Učíš se psát report, který pochopí technik i manažer.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: redteam report risk
DOKONČENÍ: complete grey-story-034
""",
            allowedCommands: ["redteam report risk", "complete grey-story-034"],
            completionCommand: "complete grey-story-034",
            rewardXP: 215,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-035",
            category: .greyteam,
            titleCS: """
K8 Retest / mise 1: regulator package prepare
""",
            titleEN: """
K8 Retest / mise 1: regulator package prepare
""",
            objectiveCS: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete grey-story-035
""",
            objectiveEN: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete grey-story-035
""",
            allowedCommands: ["regulator package prepare", "complete grey-story-035"],
            completionCommand: "complete grey-story-035",
            rewardXP: 210,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-036",
            category: .greyteam,
            titleCS: """
K8 Retest / mise 2: journalist safe-summary
""",
            titleEN: """
K8 Retest / mise 2: journalist safe-summary
""",
            objectiveCS: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete grey-story-036
""",
            objectiveEN: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete grey-story-036
""",
            allowedCommands: ["journalist safe-summary", "complete grey-story-036"],
            completionCommand: "complete grey-story-036",
            rewardXP: 215,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-037",
            category: .greyteam,
            titleCS: """
K8 Retest / mise 3: mac check persistence
""",
            titleEN: """
K8 Retest / mise 3: mac check persistence
""",
            objectiveCS: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete grey-story-037
""",
            objectiveEN: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete grey-story-037
""",
            allowedCommands: ["mac check persistence", "complete grey-story-037"],
            completionCommand: "complete grey-story-037",
            rewardXP: 220,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-038",
            category: .greyteam,
            titleCS: """
K8 Retest / mise 4: mac check firewall
""",
            titleEN: """
K8 Retest / mise 4: mac check firewall
""",
            objectiveCS: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac check firewall
DOKONČENÍ: complete grey-story-038
""",
            objectiveEN: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac check firewall
DOKONČENÍ: complete grey-story-038
""",
            allowedCommands: ["mac check firewall", "complete grey-story-038"],
            completionCommand: "complete grey-story-038",
            rewardXP: 225,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "grey-story-039",
            category: .greyteam,
            titleCS: """
K8 Retest / mise 5: mac hardening checklist
""",
            titleEN: """
K8 Retest / mise 5: mac hardening checklist
""",
            objectiveCS: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete grey-story-039
""",
            objectiveEN: """
KAPITOLA: K8 Retest
KONTEXT: Ověřuješ, že oprava skutečně zmenšila riziko.
CO DĚLÁŠ: Testuješ slabinu a hned navrhuješ obranu. Každý krok musí mít útočný i obranný smysl.
PROČ TO DĚLÁŠ: Grey Team učí překládat technický nález do mitigace, retestu a reportu.
CO ZÍSKÁŠ: Získáš rovnováhu mezi technickým testem, zodpovědností a praktickou opravou.
CO ZTRATÍŠ/RISKUJEŠ: Bez dokumentace a retestu zůstane jen chaos a neověřený pocit bezpečí.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete grey-story-039
""",
            allowedCommands: ["mac hardening checklist", "complete grey-story-039"],
            completionCommand: "complete grey-story-039",
            rewardXP: 230,
            levelRequired: 3,
            isCompleted: false
        ),
        Mission(
            id: "white-story-000",
            category: .whiteteam,
            titleCS: """
K1 Etický rámec / mise 1: lab scope
""",
            titleEN: """
K1 Etický rámec / mise 1: lab scope
""",
            objectiveCS: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete white-story-000
""",
            objectiveEN: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete white-story-000
""",
            allowedCommands: ["lab scope", "complete white-story-000"],
            completionCommand: "complete white-story-000",
            rewardXP: 105,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-001",
            category: .whiteteam,
            titleCS: """
K1 Etický rámec / mise 2: assets inventory omnicore
""",
            titleEN: """
K1 Etický rámec / mise 2: assets inventory omnicore
""",
            objectiveCS: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: assets inventory omnicore
DOKONČENÍ: complete white-story-001
""",
            objectiveEN: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: assets inventory omnicore
DOKONČENÍ: complete white-story-001
""",
            allowedCommands: ["assets inventory omnicore", "complete white-story-001"],
            completionCommand: "complete white-story-001",
            rewardXP: 110,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-002",
            category: .whiteteam,
            titleCS: """
K1 Etický rámec / mise 3: server baseline prod-web-01
""",
            titleEN: """
K1 Etický rámec / mise 3: server baseline prod-web-01
""",
            objectiveCS: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: server baseline prod-web-01
DOKONČENÍ: complete white-story-002
""",
            objectiveEN: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: server baseline prod-web-01
DOKONČENÍ: complete white-story-002
""",
            allowedCommands: ["server baseline prod-web-01", "complete white-story-002"],
            completionCommand: "complete white-story-002",
            rewardXP: 115,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-003",
            category: .whiteteam,
            titleCS: """
K1 Etický rámec / mise 4: db access review omnicore-crm
""",
            titleEN: """
K1 Etický rámec / mise 4: db access review omnicore-crm
""",
            objectiveCS: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: db access review omnicore-crm
DOKONČENÍ: complete white-story-003
""",
            objectiveEN: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: db access review omnicore-crm
DOKONČENÍ: complete white-story-003
""",
            allowedCommands: ["db access review omnicore-crm", "complete white-story-003"],
            completionCommand: "complete white-story-003",
            rewardXP: 120,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-004",
            category: .whiteteam,
            titleCS: """
K1 Etický rámec / mise 5: dlp classify
""",
            titleEN: """
K1 Etický rámec / mise 5: dlp classify
""",
            objectiveCS: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: dlp classify
DOKONČENÍ: complete white-story-004
""",
            objectiveEN: """
KAPITOLA: K1 Etický rámec
KONTEXT: Určíš pravidla, odpovědnost a dokumentaci.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: dlp classify
DOKONČENÍ: complete white-story-004
""",
            allowedCommands: ["dlp classify", "complete white-story-004"],
            completionCommand: "complete white-story-004",
            rewardXP: 125,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-005",
            category: .whiteteam,
            titleCS: """
K2 Audit aktiv / mise 1: dlp policy enable
""",
            titleEN: """
K2 Audit aktiv / mise 1: dlp policy enable
""",
            objectiveCS: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: dlp policy enable
DOKONČENÍ: complete white-story-005
""",
            objectiveEN: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: dlp policy enable
DOKONČENÍ: complete white-story-005
""",
            allowedCommands: ["dlp policy enable", "complete white-story-005"],
            completionCommand: "complete white-story-005",
            rewardXP: 120,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-006",
            category: .whiteteam,
            titleCS: """
K2 Audit aktiv / mise 2: audit export evidence/omnicore-ledger.json
""",
            titleEN: """
K2 Audit aktiv / mise 2: audit export evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: audit export evidence/omnicore-ledger.json
DOKONČENÍ: complete white-story-006
""",
            objectiveEN: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: audit export evidence/omnicore-ledger.json
DOKONČENÍ: complete white-story-006
""",
            allowedCommands: ["audit export evidence/omnicore-ledger.json", "complete white-story-006"],
            completionCommand: "complete white-story-006",
            rewardXP: 125,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-007",
            category: .whiteteam,
            titleCS: """
K2 Audit aktiv / mise 3: evidence label omnicore-ledger
""",
            titleEN: """
K2 Audit aktiv / mise 3: evidence label omnicore-ledger
""",
            objectiveCS: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: evidence label omnicore-ledger
DOKONČENÍ: complete white-story-007
""",
            objectiveEN: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: evidence label omnicore-ledger
DOKONČENÍ: complete white-story-007
""",
            allowedCommands: ["evidence label omnicore-ledger", "complete white-story-007"],
            completionCommand: "complete white-story-007",
            rewardXP: 130,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-008",
            category: .whiteteam,
            titleCS: """
K2 Audit aktiv / mise 4: logs integrity verify
""",
            titleEN: """
K2 Audit aktiv / mise 4: logs integrity verify
""",
            objectiveCS: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete white-story-008
""",
            objectiveEN: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: logs integrity verify
DOKONČENÍ: complete white-story-008
""",
            allowedCommands: ["logs integrity verify", "complete white-story-008"],
            completionCommand: "complete white-story-008",
            rewardXP: 135,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-009",
            category: .whiteteam,
            titleCS: """
K2 Audit aktiv / mise 5: evidence chain build
""",
            titleEN: """
K2 Audit aktiv / mise 5: evidence chain build
""",
            objectiveCS: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete white-story-009
""",
            objectiveEN: """
KAPITOLA: K2 Audit aktiv
KONTEXT: Zjišťuješ, co firma vlastně provozuje a kde leží riziko.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete white-story-009
""",
            allowedCommands: ["evidence chain build", "complete white-story-009"],
            completionCommand: "complete white-story-009",
            rewardXP: 140,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-010",
            category: .whiteteam,
            titleCS: """
K3 Důkazní řetězec / mise 1: hash evidence/omnicore-ledger.json
""",
            titleEN: """
K3 Důkazní řetězec / mise 1: hash evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete white-story-010
""",
            objectiveEN: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete white-story-010
""",
            allowedCommands: ["hash evidence/omnicore-ledger.json", "complete white-story-010"],
            completionCommand: "complete white-story-010",
            rewardXP: 135,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-011",
            category: .whiteteam,
            titleCS: """
K3 Důkazní řetězec / mise 2: lab sbom verify
""",
            titleEN: """
K3 Důkazní řetězec / mise 2: lab sbom verify
""",
            objectiveCS: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete white-story-011
""",
            objectiveEN: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete white-story-011
""",
            allowedCommands: ["lab sbom verify", "complete white-story-011"],
            completionCommand: "complete white-story-011",
            rewardXP: 140,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-012",
            category: .whiteteam,
            titleCS: """
K3 Důkazní řetězec / mise 3: lab vendor isolate
""",
            titleEN: """
K3 Důkazní řetězec / mise 3: lab vendor isolate
""",
            objectiveCS: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab vendor isolate
DOKONČENÍ: complete white-story-012
""",
            objectiveEN: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab vendor isolate
DOKONČENÍ: complete white-story-012
""",
            allowedCommands: ["lab vendor isolate", "complete white-story-012"],
            completionCommand: "complete white-story-012",
            rewardXP: 145,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-013",
            category: .whiteteam,
            titleCS: """
K3 Důkazní řetězec / mise 4: lab ioc hunt
""",
            titleEN: """
K3 Důkazní řetězec / mise 4: lab ioc hunt
""",
            objectiveCS: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab ioc hunt
DOKONČENÍ: complete white-story-013
""",
            objectiveEN: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: lab ioc hunt
DOKONČENÍ: complete white-story-013
""",
            allowedCommands: ["lab ioc hunt", "complete white-story-013"],
            completionCommand: "complete white-story-013",
            rewardXP: 150,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-014",
            category: .whiteteam,
            titleCS: """
K3 Důkazní řetězec / mise 5: backup verify
""",
            titleEN: """
K3 Důkazní řetězec / mise 5: backup verify
""",
            objectiveCS: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete white-story-014
""",
            objectiveEN: """
KAPITOLA: K3 Důkazní řetězec
KONTEXT: Buduješ důkaz bez úniku dat.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete white-story-014
""",
            allowedCommands: ["backup verify", "complete white-story-014"],
            completionCommand: "complete white-story-014",
            rewardXP: 155,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-015",
            category: .whiteteam,
            titleCS: """
K4 Privacy a DLP / mise 1: restore dry-run
""",
            titleEN: """
K4 Privacy a DLP / mise 1: restore dry-run
""",
            objectiveCS: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete white-story-015
""",
            objectiveEN: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete white-story-015
""",
            allowedCommands: ["restore dry-run", "complete white-story-015"],
            completionCommand: "complete white-story-015",
            rewardXP: 150,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-016",
            category: .whiteteam,
            titleCS: """
K4 Privacy a DLP / mise 2: regulator package prepare
""",
            titleEN: """
K4 Privacy a DLP / mise 2: regulator package prepare
""",
            objectiveCS: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete white-story-016
""",
            objectiveEN: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete white-story-016
""",
            allowedCommands: ["regulator package prepare", "complete white-story-016"],
            completionCommand: "complete white-story-016",
            rewardXP: 155,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-017",
            category: .whiteteam,
            titleCS: """
K4 Privacy a DLP / mise 3: report public-interest
""",
            titleEN: """
K4 Privacy a DLP / mise 3: report public-interest
""",
            objectiveCS: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: report public-interest
DOKONČENÍ: complete white-story-017
""",
            objectiveEN: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: report public-interest
DOKONČENÍ: complete white-story-017
""",
            allowedCommands: ["report public-interest", "complete white-story-017"],
            completionCommand: "complete white-story-017",
            rewardXP: 160,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-018",
            category: .whiteteam,
            titleCS: """
K4 Privacy a DLP / mise 4: journalist safe-summary
""",
            titleEN: """
K4 Privacy a DLP / mise 4: journalist safe-summary
""",
            objectiveCS: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete white-story-018
""",
            objectiveEN: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete white-story-018
""",
            allowedCommands: ["journalist safe-summary", "complete white-story-018"],
            completionCommand: "complete white-story-018",
            rewardXP: 165,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-019",
            category: .whiteteam,
            titleCS: """
K4 Privacy a DLP / mise 5: shutdown legal-motion
""",
            titleEN: """
K4 Privacy a DLP / mise 5: shutdown legal-motion
""",
            objectiveCS: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: shutdown legal-motion
DOKONČENÍ: complete white-story-019
""",
            objectiveEN: """
KAPITOLA: K4 Privacy a DLP
KONTEXT: Kontroluješ, kdo sahá na citlivé informace.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: shutdown legal-motion
DOKONČENÍ: complete white-story-019
""",
            allowedCommands: ["shutdown legal-motion", "complete white-story-019"],
            completionCommand: "complete white-story-019",
            rewardXP: 170,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-020",
            category: .whiteteam,
            titleCS: """
K5 Vendor a supply-chain / mise 1: content-policy diff truth-index
""",
            titleEN: """
K5 Vendor a supply-chain / mise 1: content-policy diff truth-index
""",
            objectiveCS: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: content-policy diff truth-index
DOKONČENÍ: complete white-story-020
""",
            objectiveEN: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: content-policy diff truth-index
DOKONČENÍ: complete white-story-020
""",
            allowedCommands: ["content-policy diff truth-index", "complete white-story-020"],
            completionCommand: "complete white-story-020",
            rewardXP: 165,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-021",
            category: .whiteteam,
            titleCS: """
K5 Vendor a supply-chain / mise 2: exec key review truth-index
""",
            titleEN: """
K5 Vendor a supply-chain / mise 2: exec key review truth-index
""",
            objectiveCS: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: exec key review truth-index
DOKONČENÍ: complete white-story-021
""",
            objectiveEN: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: exec key review truth-index
DOKONČENÍ: complete white-story-021
""",
            allowedCommands: ["exec key review truth-index", "complete white-story-021"],
            completionCommand: "complete white-story-021",
            rewardXP: 170,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-022",
            category: .whiteteam,
            titleCS: """
K5 Vendor a supply-chain / mise 3: whistle archive create
""",
            titleEN: """
K5 Vendor a supply-chain / mise 3: whistle archive create
""",
            objectiveCS: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: whistle archive create
DOKONČENÍ: complete white-story-022
""",
            objectiveEN: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: whistle archive create
DOKONČENÍ: complete white-story-022
""",
            allowedCommands: ["whistle archive create", "complete white-story-022"],
            completionCommand: "complete white-story-022",
            rewardXP: 175,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-023",
            category: .whiteteam,
            titleCS: """
K5 Vendor a supply-chain / mise 4: mac audit overview
""",
            titleEN: """
K5 Vendor a supply-chain / mise 4: mac audit overview
""",
            objectiveCS: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac audit overview
DOKONČENÍ: complete white-story-023
""",
            objectiveEN: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac audit overview
DOKONČENÍ: complete white-story-023
""",
            allowedCommands: ["mac audit overview", "complete white-story-023"],
            completionCommand: "complete white-story-023",
            rewardXP: 180,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-024",
            category: .whiteteam,
            titleCS: """
K5 Vendor a supply-chain / mise 5: mac check filevault
""",
            titleEN: """
K5 Vendor a supply-chain / mise 5: mac check filevault
""",
            objectiveCS: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check filevault
DOKONČENÍ: complete white-story-024
""",
            objectiveEN: """
KAPITOLA: K5 Vendor a supply-chain
KONTEXT: Ověřuješ dodavatele, podpisy a SBOM.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check filevault
DOKONČENÍ: complete white-story-024
""",
            allowedCommands: ["mac check filevault", "complete white-story-024"],
            completionCommand: "complete white-story-024",
            rewardXP: 185,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-025",
            category: .whiteteam,
            titleCS: """
K6 Incident governance / mise 1: fdesetup status
""",
            titleEN: """
K6 Incident governance / mise 1: fdesetup status
""",
            objectiveCS: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: fdesetup status
DOKONČENÍ: complete white-story-025
""",
            objectiveEN: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: fdesetup status
DOKONČENÍ: complete white-story-025
""",
            allowedCommands: ["fdesetup status", "complete white-story-025"],
            completionCommand: "complete white-story-025",
            rewardXP: 180,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-026",
            category: .whiteteam,
            titleCS: """
K6 Incident governance / mise 2: mac check firewall
""",
            titleEN: """
K6 Incident governance / mise 2: mac check firewall
""",
            objectiveCS: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check firewall
DOKONČENÍ: complete white-story-026
""",
            objectiveEN: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check firewall
DOKONČENÍ: complete white-story-026
""",
            allowedCommands: ["mac check firewall", "complete white-story-026"],
            completionCommand: "complete white-story-026",
            rewardXP: 185,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-027",
            category: .whiteteam,
            titleCS: """
K6 Incident governance / mise 3: mac check sharing
""",
            titleEN: """
K6 Incident governance / mise 3: mac check sharing
""",
            objectiveCS: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check sharing
DOKONČENÍ: complete white-story-027
""",
            objectiveEN: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check sharing
DOKONČENÍ: complete white-story-027
""",
            allowedCommands: ["mac check sharing", "complete white-story-027"],
            completionCommand: "complete white-story-027",
            rewardXP: 190,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-028",
            category: .whiteteam,
            titleCS: """
K6 Incident governance / mise 4: mac check privacy
""",
            titleEN: """
K6 Incident governance / mise 4: mac check privacy
""",
            objectiveCS: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check privacy
DOKONČENÍ: complete white-story-028
""",
            objectiveEN: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check privacy
DOKONČENÍ: complete white-story-028
""",
            allowedCommands: ["mac check privacy", "complete white-story-028"],
            completionCommand: "complete white-story-028",
            rewardXP: 195,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-029",
            category: .whiteteam,
            titleCS: """
K6 Incident governance / mise 5: mac check persistence
""",
            titleEN: """
K6 Incident governance / mise 5: mac check persistence
""",
            objectiveCS: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete white-story-029
""",
            objectiveEN: """
KAPITOLA: K6 Incident governance
KONTEXT: Rozhoduješ, kdy eskalovat a komu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete white-story-029
""",
            allowedCommands: ["mac check persistence", "complete white-story-029"],
            completionCommand: "complete white-story-029",
            rewardXP: 200,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-030",
            category: .whiteteam,
            titleCS: """
K7 Regulátor a veřejný zájem / mise 1: mac hardening checklist
""",
            titleEN: """
K7 Regulátor a veřejný zájem / mise 1: mac hardening checklist
""",
            objectiveCS: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete white-story-030
""",
            objectiveEN: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete white-story-030
""",
            allowedCommands: ["mac hardening checklist", "complete white-story-030"],
            completionCommand: "complete white-story-030",
            rewardXP: 195,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-031",
            category: .whiteteam,
            titleCS: """
K7 Regulátor a veřejný zájem / mise 2: download tool logwatcher
""",
            titleEN: """
K7 Regulátor a veřejný zájem / mise 2: download tool logwatcher
""",
            objectiveCS: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: download tool logwatcher
DOKONČENÍ: complete white-story-031
""",
            objectiveEN: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: download tool logwatcher
DOKONČENÍ: complete white-story-031
""",
            allowedCommands: ["download tool logwatcher", "complete white-story-031"],
            completionCommand: "complete white-story-031",
            rewardXP: 200,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-032",
            category: .whiteteam,
            titleCS: """
K7 Regulátor a veřejný zájem / mise 3: install tool logwatcher
""",
            titleEN: """
K7 Regulátor a veřejný zájem / mise 3: install tool logwatcher
""",
            objectiveCS: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: install tool logwatcher
DOKONČENÍ: complete white-story-032
""",
            objectiveEN: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: install tool logwatcher
DOKONČENÍ: complete white-story-032
""",
            allowedCommands: ["install tool logwatcher", "complete white-story-032"],
            completionCommand: "complete white-story-032",
            rewardXP: 205,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-033",
            category: .whiteteam,
            titleCS: """
K7 Regulátor a veřejný zájem / mise 4: create script backup-check
""",
            titleEN: """
K7 Regulátor a veřejný zájem / mise 4: create script backup-check
""",
            objectiveCS: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete white-story-033
""",
            objectiveEN: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: create script backup-check
DOKONČENÍ: complete white-story-033
""",
            allowedCommands: ["create script backup-check", "complete white-story-033"],
            completionCommand: "complete white-story-033",
            rewardXP: 210,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-034",
            category: .whiteteam,
            titleCS: """
K7 Regulátor a veřejný zájem / mise 5: ./scripts/backup_check.sh
""",
            titleEN: """
K7 Regulátor a veřejný zájem / mise 5: ./scripts/backup_check.sh
""",
            objectiveCS: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete white-story-034
""",
            objectiveEN: """
KAPITOLA: K7 Regulátor a veřejný zájem
KONTEXT: Připravuješ balík důkazů bez vigilantismu.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: ./scripts/backup_check.sh
DOKONČENÍ: complete white-story-034
""",
            allowedCommands: ["./scripts/backup_check.sh", "complete white-story-034"],
            completionCommand: "complete white-story-034",
            rewardXP: 215,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-035",
            category: .whiteteam,
            titleCS: """
K8 Mac jako pracovní stanice auditora / mise 1: icloud status
""",
            titleEN: """
K8 Mac jako pracovní stanice auditora / mise 1: icloud status
""",
            objectiveCS: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: icloud status
DOKONČENÍ: complete white-story-035
""",
            objectiveEN: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: icloud status
DOKONČENÍ: complete white-story-035
""",
            allowedCommands: ["icloud status", "complete white-story-035"],
            completionCommand: "complete white-story-035",
            rewardXP: 210,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-036",
            category: .whiteteam,
            titleCS: """
K8 Mac jako pracovní stanice auditora / mise 2: icloud sync
""",
            titleEN: """
K8 Mac jako pracovní stanice auditora / mise 2: icloud sync
""",
            objectiveCS: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: icloud sync
DOKONČENÍ: complete white-story-036
""",
            objectiveEN: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: icloud sync
DOKONČENÍ: complete white-story-036
""",
            allowedCommands: ["icloud sync", "complete white-story-036"],
            completionCommand: "complete white-story-036",
            rewardXP: 215,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-037",
            category: .whiteteam,
            titleCS: """
K8 Mac jako pracovní stanice auditora / mise 3: docs open mission
""",
            titleEN: """
K8 Mac jako pracovní stanice auditora / mise 3: docs open mission
""",
            objectiveCS: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: docs open mission
DOKONČENÍ: complete white-story-037
""",
            objectiveEN: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: docs open mission
DOKONČENÍ: complete white-story-037
""",
            allowedCommands: ["docs open mission", "complete white-story-037"],
            completionCommand: "complete white-story-037",
            rewardXP: 220,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-038",
            category: .whiteteam,
            titleCS: """
K8 Mac jako pracovní stanice auditora / mise 4: docs ls
""",
            titleEN: """
K8 Mac jako pracovní stanice auditora / mise 4: docs ls
""",
            objectiveCS: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: docs ls
DOKONČENÍ: complete white-story-038
""",
            objectiveEN: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: docs ls
DOKONČENÍ: complete white-story-038
""",
            allowedCommands: ["docs ls", "complete white-story-038"],
            completionCommand: "complete white-story-038",
            rewardXP: 225,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "white-story-039",
            category: .whiteteam,
            titleCS: """
K8 Mac jako pracovní stanice auditora / mise 5: mail archive current
""",
            titleEN: """
K8 Mac jako pracovní stanice auditora / mise 5: mail archive current
""",
            objectiveCS: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mail archive current
DOKONČENÍ: complete white-story-039
""",
            objectiveEN: """
KAPITOLA: K8 Mac jako pracovní stanice auditora
KONTEXT: Zabezpečíš vlastní stroj jako důkazní pracovní nástroj.
CO DĚLÁŠ: Auditorem chráníš lidi, důkazy a zákonný postup. Neřešíš ego, ale odpovědnost.
PROČ TO DĚLÁŠ: White Team učí, že bezpečnost není jen technika; je to proces, důkaz, komunikace a právní rámec.
CO ZÍSKÁŠ: Získáš schopnost připravit čistý report, který může použít firma, regulátor nebo veřejný zájem.
CO ZTRATÍŠ/RISKUJEŠ: Špatně zacházený důkaz může poškodit klienty nebo zničit důvěryhodnost celé akce.
AKCE V TERMINÁLU: mail archive current
DOKONČENÍ: complete white-story-039
""",
            allowedCommands: ["mail archive current", "complete white-story-039"],
            completionCommand: "complete white-story-039",
            rewardXP: 230,
            levelRequired: 4,
            isCompleted: false
        ),
        Mission(
            id: "black-story-000",
            category: .blackteam,
            titleCS: """
K1 Pokušení / mise 1: blackteam trace
""",
            titleEN: """
K1 Pokušení / mise 1: blackteam trace
""",
            objectiveCS: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: blackteam trace
DOKONČENÍ: complete black-story-000
""",
            objectiveEN: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: blackteam trace
DOKONČENÍ: complete black-story-000
""",
            allowedCommands: ["blackteam trace", "complete black-story-000"],
            completionCommand: "complete black-story-000",
            rewardXP: 105,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-001",
            category: .blackteam,
            titleCS: """
K1 Pokušení / mise 2: forensic trace show
""",
            titleEN: """
K1 Pokušení / mise 2: forensic trace show
""",
            objectiveCS: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete black-story-001
""",
            objectiveEN: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: forensic trace show
DOKONČENÍ: complete black-story-001
""",
            allowedCommands: ["forensic trace show", "complete black-story-001"],
            completionCommand: "complete black-story-001",
            rewardXP: 110,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-002",
            category: .blackteam,
            titleCS: """
K1 Pokušení / mise 3: lab impact simulate data-loss
""",
            titleEN: """
K1 Pokušení / mise 3: lab impact simulate data-loss
""",
            objectiveCS: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab impact simulate data-loss
DOKONČENÍ: complete black-story-002
""",
            objectiveEN: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab impact simulate data-loss
DOKONČENÍ: complete black-story-002
""",
            allowedCommands: ["lab impact simulate data-loss", "complete black-story-002"],
            completionCommand: "complete black-story-002",
            rewardXP: 115,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-003",
            category: .blackteam,
            titleCS: """
K1 Pokušení / mise 4: logs show
""",
            titleEN: """
K1 Pokušení / mise 4: logs show
""",
            objectiveCS: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: logs show
DOKONČENÍ: complete black-story-003
""",
            objectiveEN: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: logs show
DOKONČENÍ: complete black-story-003
""",
            allowedCommands: ["logs show", "complete black-story-003"],
            completionCommand: "complete black-story-003",
            rewardXP: 120,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-004",
            category: .blackteam,
            titleCS: """
K1 Pokušení / mise 5: defense alert
""",
            titleEN: """
K1 Pokušení / mise 5: defense alert
""",
            objectiveCS: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: defense alert
DOKONČENÍ: complete black-story-004
""",
            objectiveEN: """
KAPITOLA: K1 Pokušení
KONTEXT: Hra ukazuje motivace, ego a zkratky. Každá zkratka zvyšuje právní a forenzní riziko.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: defense alert
DOKONČENÍ: complete black-story-004
""",
            allowedCommands: ["defense alert", "complete black-story-004"],
            completionCommand: "complete black-story-004",
            rewardXP: 125,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-005",
            category: .blackteam,
            titleCS: """
K2 Stopy / mise 1: dlp classify
""",
            titleEN: """
K2 Stopy / mise 1: dlp classify
""",
            objectiveCS: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: dlp classify
DOKONČENÍ: complete black-story-005
""",
            objectiveEN: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: dlp classify
DOKONČENÍ: complete black-story-005
""",
            allowedCommands: ["dlp classify", "complete black-story-005"],
            completionCommand: "complete black-story-005",
            rewardXP: 120,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-006",
            category: .blackteam,
            titleCS: """
K2 Stopy / mise 2: dlp policy enable
""",
            titleEN: """
K2 Stopy / mise 2: dlp policy enable
""",
            objectiveCS: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: dlp policy enable
DOKONČENÍ: complete black-story-006
""",
            objectiveEN: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: dlp policy enable
DOKONČENÍ: complete black-story-006
""",
            allowedCommands: ["dlp policy enable", "complete black-story-006"],
            completionCommand: "complete black-story-006",
            rewardXP: 125,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-007",
            category: .blackteam,
            titleCS: """
K2 Stopy / mise 3: backup verify
""",
            titleEN: """
K2 Stopy / mise 3: backup verify
""",
            objectiveCS: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete black-story-007
""",
            objectiveEN: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: backup verify
DOKONČENÍ: complete black-story-007
""",
            allowedCommands: ["backup verify", "complete black-story-007"],
            completionCommand: "complete black-story-007",
            rewardXP: 130,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-008",
            category: .blackteam,
            titleCS: """
K2 Stopy / mise 4: restore dry-run
""",
            titleEN: """
K2 Stopy / mise 4: restore dry-run
""",
            objectiveCS: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete black-story-008
""",
            objectiveEN: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: restore dry-run
DOKONČENÍ: complete black-story-008
""",
            allowedCommands: ["restore dry-run", "complete black-story-008"],
            completionCommand: "complete black-story-008",
            rewardXP: 135,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-009",
            category: .blackteam,
            titleCS: """
K2 Stopy / mise 5: ir contain lab-host
""",
            titleEN: """
K2 Stopy / mise 5: ir contain lab-host
""",
            objectiveCS: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: ir contain lab-host
DOKONČENÍ: complete black-story-009
""",
            objectiveEN: """
KAPITOLA: K2 Stopy
KONTEXT: Vidíš, že každý krok vytváří log, timing a korelaci.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: ir contain lab-host
DOKONČENÍ: complete black-story-009
""",
            allowedCommands: ["ir contain lab-host", "complete black-story-009"],
            completionCommand: "complete black-story-009",
            rewardXP: 140,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-010",
            category: .blackteam,
            titleCS: """
K3 Sociální chaos / mise 1: legal debrief accept
""",
            titleEN: """
K3 Sociální chaos / mise 1: legal debrief accept
""",
            objectiveCS: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: legal debrief accept
DOKONČENÍ: complete black-story-010
""",
            objectiveEN: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: legal debrief accept
DOKONČENÍ: complete black-story-010
""",
            allowedCommands: ["legal debrief accept", "complete black-story-010"],
            completionCommand: "complete black-story-010",
            rewardXP: 135,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-011",
            category: .blackteam,
            titleCS: """
K3 Sociální chaos / mise 2: lab scope
""",
            titleEN: """
K3 Sociální chaos / mise 2: lab scope
""",
            objectiveCS: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete black-story-011
""",
            objectiveEN: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab scope
DOKONČENÍ: complete black-story-011
""",
            allowedCommands: ["lab scope", "complete black-story-011"],
            completionCommand: "complete black-story-011",
            rewardXP: 140,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-012",
            category: .blackteam,
            titleCS: """
K3 Sociální chaos / mise 3: redteam plan
""",
            titleEN: """
K3 Sociální chaos / mise 3: redteam plan
""",
            objectiveCS: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam plan
DOKONČENÍ: complete black-story-012
""",
            objectiveEN: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam plan
DOKONČENÍ: complete black-story-012
""",
            allowedCommands: ["redteam plan", "complete black-story-012"],
            completionCommand: "complete black-story-012",
            rewardXP: 145,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-013",
            category: .blackteam,
            titleCS: """
K3 Sociální chaos / mise 4: redteam cred-sim lab-mail
""",
            titleEN: """
K3 Sociální chaos / mise 4: redteam cred-sim lab-mail
""",
            objectiveCS: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam cred-sim lab-mail
DOKONČENÍ: complete black-story-013
""",
            objectiveEN: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam cred-sim lab-mail
DOKONČENÍ: complete black-story-013
""",
            allowedCommands: ["redteam cred-sim lab-mail", "complete black-story-013"],
            completionCommand: "complete black-story-013",
            rewardXP: 150,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-014",
            category: .blackteam,
            titleCS: """
K3 Sociální chaos / mise 5: redteam exploit lab-web --proof
""",
            titleEN: """
K3 Sociální chaos / mise 5: redteam exploit lab-web --proof
""",
            objectiveCS: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam exploit lab-web --proof
DOKONČENÍ: complete black-story-014
""",
            objectiveEN: """
KAPITOLA: K3 Sociální chaos
KONTEXT: Simuluje se panika, falešné alerty a dopad na lidi — bez návodu k reálnému útoku.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam exploit lab-web --proof
DOKONČENÍ: complete black-story-014
""",
            allowedCommands: ["redteam exploit lab-web --proof", "complete black-story-014"],
            completionCommand: "complete black-story-014",
            rewardXP: 155,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-015",
            category: .blackteam,
            titleCS: """
K4 Data-loss simulace / mise 1: redteam exfil-sim lab-files
""",
            titleEN: """
K4 Data-loss simulace / mise 1: redteam exfil-sim lab-files
""",
            objectiveCS: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam exfil-sim lab-files
DOKONČENÍ: complete black-story-015
""",
            objectiveEN: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: redteam exfil-sim lab-files
DOKONČENÍ: complete black-story-015
""",
            allowedCommands: ["redteam exfil-sim lab-files", "complete black-story-015"],
            completionCommand: "complete black-story-015",
            rewardXP: 150,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-016",
            category: .blackteam,
            titleCS: """
K4 Data-loss simulace / mise 2: greyteam review
""",
            titleEN: """
K4 Data-loss simulace / mise 2: greyteam review
""",
            objectiveCS: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete black-story-016
""",
            objectiveEN: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: greyteam review
DOKONČENÍ: complete black-story-016
""",
            allowedCommands: ["greyteam review", "complete black-story-016"],
            completionCommand: "complete black-story-016",
            rewardXP: 155,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-017",
            category: .blackteam,
            titleCS: """
K4 Data-loss simulace / mise 3: report draft
""",
            titleEN: """
K4 Data-loss simulace / mise 3: report draft
""",
            objectiveCS: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete black-story-017
""",
            objectiveEN: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: report draft
DOKONČENÍ: complete black-story-017
""",
            allowedCommands: ["report draft", "complete black-story-017"],
            completionCommand: "complete black-story-017",
            rewardXP: 160,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-018",
            category: .blackteam,
            titleCS: """
K4 Data-loss simulace / mise 4: evidence chain build
""",
            titleEN: """
K4 Data-loss simulace / mise 4: evidence chain build
""",
            objectiveCS: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete black-story-018
""",
            objectiveEN: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: evidence chain build
DOKONČENÍ: complete black-story-018
""",
            allowedCommands: ["evidence chain build", "complete black-story-018"],
            completionCommand: "complete black-story-018",
            rewardXP: 165,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-019",
            category: .blackteam,
            titleCS: """
K4 Data-loss simulace / mise 5: hash evidence/omnicore-ledger.json
""",
            titleEN: """
K4 Data-loss simulace / mise 5: hash evidence/omnicore-ledger.json
""",
            objectiveCS: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete black-story-019
""",
            objectiveEN: """
KAPITOLA: K4 Data-loss simulace
KONTEXT: Vidíš škodu z úniku dat a proč DLP a zálohy chrání lidi.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: hash evidence/omnicore-ledger.json
DOKONČENÍ: complete black-story-019
""",
            allowedCommands: ["hash evidence/omnicore-ledger.json", "complete black-story-019"],
            completionCommand: "complete black-story-019",
            rewardXP: 170,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-020",
            category: .blackteam,
            titleCS: """
K5 Právní pád / mise 1: journalist safe-summary
""",
            titleEN: """
K5 Právní pád / mise 1: journalist safe-summary
""",
            objectiveCS: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete black-story-020
""",
            objectiveEN: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: journalist safe-summary
DOKONČENÍ: complete black-story-020
""",
            allowedCommands: ["journalist safe-summary", "complete black-story-020"],
            completionCommand: "complete black-story-020",
            rewardXP: 165,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-021",
            category: .blackteam,
            titleCS: """
K5 Právní pád / mise 2: regulator package prepare
""",
            titleEN: """
K5 Právní pád / mise 2: regulator package prepare
""",
            objectiveCS: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete black-story-021
""",
            objectiveEN: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: regulator package prepare
DOKONČENÍ: complete black-story-021
""",
            allowedCommands: ["regulator package prepare", "complete black-story-021"],
            completionCommand: "complete black-story-021",
            rewardXP: 170,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-022",
            category: .blackteam,
            titleCS: """
K5 Právní pád / mise 3: shutdown legal-motion
""",
            titleEN: """
K5 Právní pád / mise 3: shutdown legal-motion
""",
            objectiveCS: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: shutdown legal-motion
DOKONČENÍ: complete black-story-022
""",
            objectiveEN: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: shutdown legal-motion
DOKONČENÍ: complete black-story-022
""",
            allowedCommands: ["shutdown legal-motion", "complete black-story-022"],
            completionCommand: "complete black-story-022",
            rewardXP: 175,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-023",
            category: .blackteam,
            titleCS: """
K5 Právní pád / mise 4: case wannacry
""",
            titleEN: """
K5 Právní pád / mise 4: case wannacry
""",
            objectiveCS: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case wannacry
DOKONČENÍ: complete black-story-023
""",
            objectiveEN: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case wannacry
DOKONČENÍ: complete black-story-023
""",
            allowedCommands: ["case wannacry", "complete black-story-023"],
            completionCommand: "complete black-story-023",
            rewardXP: 180,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-024",
            category: .blackteam,
            titleCS: """
K5 Právní pád / mise 5: case notpetya
""",
            titleEN: """
K5 Právní pád / mise 5: case notpetya
""",
            objectiveCS: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case notpetya
DOKONČENÍ: complete black-story-024
""",
            objectiveEN: """
KAPITOLA: K5 Právní pád
KONTEXT: Špatné rozhodnutí spouští virtuální vyšetřování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case notpetya
DOKONČENÍ: complete black-story-024
""",
            allowedCommands: ["case notpetya", "complete black-story-024"],
            completionCommand: "complete black-story-024",
            rewardXP: 185,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-025",
            category: .blackteam,
            titleCS: """
K6 Obrat / mise 1: case equifax
""",
            titleEN: """
K6 Obrat / mise 1: case equifax
""",
            objectiveCS: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case equifax
DOKONČENÍ: complete black-story-025
""",
            objectiveEN: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case equifax
DOKONČENÍ: complete black-story-025
""",
            allowedCommands: ["case equifax", "complete black-story-025"],
            completionCommand: "complete black-story-025",
            rewardXP: 180,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-026",
            category: .blackteam,
            titleCS: """
K6 Obrat / mise 2: case colonial
""",
            titleEN: """
K6 Obrat / mise 2: case colonial
""",
            objectiveCS: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case colonial
DOKONČENÍ: complete black-story-026
""",
            objectiveEN: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case colonial
DOKONČENÍ: complete black-story-026
""",
            allowedCommands: ["case colonial", "complete black-story-026"],
            completionCommand: "complete black-story-026",
            rewardXP: 185,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-027",
            category: .blackteam,
            titleCS: """
K6 Obrat / mise 3: case solarwinds
""",
            titleEN: """
K6 Obrat / mise 3: case solarwinds
""",
            objectiveCS: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case solarwinds
DOKONČENÍ: complete black-story-027
""",
            objectiveEN: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: case solarwinds
DOKONČENÍ: complete black-story-027
""",
            allowedCommands: ["case solarwinds", "complete black-story-027"],
            completionCommand: "complete black-story-027",
            rewardXP: 190,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-028",
            category: .blackteam,
            titleCS: """
K6 Obrat / mise 4: lab segment network
""",
            titleEN: """
K6 Obrat / mise 4: lab segment network
""",
            objectiveCS: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete black-story-028
""",
            objectiveEN: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab segment network
DOKONČENÍ: complete black-story-028
""",
            allowedCommands: ["lab segment network", "complete black-story-028"],
            completionCommand: "complete black-story-028",
            rewardXP: 195,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-029",
            category: .blackteam,
            titleCS: """
K6 Obrat / mise 5: lab mfa enforce
""",
            titleEN: """
K6 Obrat / mise 5: lab mfa enforce
""",
            objectiveCS: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab mfa enforce
DOKONČENÍ: complete black-story-029
""",
            objectiveEN: """
KAPITOLA: K6 Obrat
KONTEXT: Můžeš pokračovat jen přijetím pravidel scope a reportování.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab mfa enforce
DOKONČENÍ: complete black-story-029
""",
            allowedCommands: ["lab mfa enforce", "complete black-story-029"],
            completionCommand: "complete black-story-029",
            rewardXP: 200,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-030",
            category: .blackteam,
            titleCS: """
K7 Reparace / mise 1: lab sbom verify
""",
            titleEN: """
K7 Reparace / mise 1: lab sbom verify
""",
            objectiveCS: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete black-story-030
""",
            objectiveEN: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab sbom verify
DOKONČENÍ: complete black-story-030
""",
            allowedCommands: ["lab sbom verify", "complete black-story-030"],
            completionCommand: "complete black-story-030",
            rewardXP: 195,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-031",
            category: .blackteam,
            titleCS: """
K7 Reparace / mise 2: lab verify backups
""",
            titleEN: """
K7 Reparace / mise 2: lab verify backups
""",
            objectiveCS: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab verify backups
DOKONČENÍ: complete black-story-031
""",
            objectiveEN: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab verify backups
DOKONČENÍ: complete black-story-031
""",
            allowedCommands: ["lab verify backups", "complete black-story-031"],
            completionCommand: "complete black-story-031",
            rewardXP: 200,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-032",
            category: .blackteam,
            titleCS: """
K7 Reparace / mise 3: mac check persistence
""",
            titleEN: """
K7 Reparace / mise 3: mac check persistence
""",
            objectiveCS: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete black-story-032
""",
            objectiveEN: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac check persistence
DOKONČENÍ: complete black-story-032
""",
            allowedCommands: ["mac check persistence", "complete black-story-032"],
            completionCommand: "complete black-story-032",
            rewardXP: 205,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-033",
            category: .blackteam,
            titleCS: """
K7 Reparace / mise 4: mac check privacy
""",
            titleEN: """
K7 Reparace / mise 4: mac check privacy
""",
            objectiveCS: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac check privacy
DOKONČENÍ: complete black-story-033
""",
            objectiveEN: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac check privacy
DOKONČENÍ: complete black-story-033
""",
            allowedCommands: ["mac check privacy", "complete black-story-033"],
            completionCommand: "complete black-story-033",
            rewardXP: 210,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-034",
            category: .blackteam,
            titleCS: """
K7 Reparace / mise 5: mac hardening checklist
""",
            titleEN: """
K7 Reparace / mise 5: mac hardening checklist
""",
            objectiveCS: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete black-story-034
""",
            objectiveEN: """
KAPITOLA: K7 Reparace
KONTEXT: Pomáháš Blue Teamu pochopit motivace útoku a opravit systém.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mac hardening checklist
DOKONČENÍ: complete black-story-034
""",
            allowedCommands: ["mac hardening checklist", "complete black-story-034"],
            completionCommand: "complete black-story-034",
            rewardXP: 215,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-035",
            category: .blackteam,
            titleCS: """
K8 Redemption report / mise 1: open mobile
""",
            titleEN: """
K8 Redemption report / mise 1: open mobile
""",
            objectiveCS: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: open mobile
DOKONČENÍ: complete black-story-035
""",
            objectiveEN: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: open mobile
DOKONČENÍ: complete black-story-035
""",
            allowedCommands: ["open mobile", "complete black-story-035"],
            completionCommand: "complete black-story-035",
            rewardXP: 210,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-036",
            category: .blackteam,
            titleCS: """
K8 Redemption report / mise 2: mobile launch authenticator
""",
            titleEN: """
K8 Redemption report / mise 2: mobile launch authenticator
""",
            objectiveCS: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mobile launch authenticator
DOKONČENÍ: complete black-story-036
""",
            objectiveEN: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: mobile launch authenticator
DOKONČENÍ: complete black-story-036
""",
            allowedCommands: ["mobile launch authenticator", "complete black-story-036"],
            completionCommand: "complete black-story-036",
            rewardXP: 215,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-037",
            category: .blackteam,
            titleCS: """
K8 Redemption report / mise 3: world map
""",
            titleEN: """
K8 Redemption report / mise 3: world map
""",
            objectiveCS: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete black-story-037
""",
            objectiveEN: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: world map
DOKONČENÍ: complete black-story-037
""",
            allowedCommands: ["world map", "complete black-story-037"],
            completionCommand: "complete black-story-037",
            rewardXP: 220,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-038",
            category: .blackteam,
            titleCS: """
K8 Redemption report / mise 4: lab hosts
""",
            titleEN: """
K8 Redemption report / mise 4: lab hosts
""",
            objectiveCS: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab hosts
DOKONČENÍ: complete black-story-038
""",
            objectiveEN: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab hosts
DOKONČENÍ: complete black-story-038
""",
            allowedCommands: ["lab hosts", "complete black-story-038"],
            completionCommand: "complete black-story-038",
            rewardXP: 225,
            levelRequired: 5,
            isCompleted: false
        ),
        Mission(
            id: "black-story-039",
            category: .blackteam,
            titleCS: """
K8 Redemption report / mise 5: lab services
""",
            titleEN: """
K8 Redemption report / mise 5: lab services
""",
            objectiveCS: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab services
DOKONČENÍ: complete black-story-039
""",
            objectiveEN: """
KAPITOLA: K8 Redemption report
KONTEXT: Finále je důkaz, report a mitigace — ne destrukce.
CO DĚLÁŠ: Sleduješ temnou sandbox simulaci následků špatných rozhodnutí, bez reálného škodlivého dopadu.
PROČ TO DĚLÁŠ: Cílem je pochopit motivace, stopy, škodu a právní pád, aby hráč věděl, proč destruktivní cesta prohrává.
CO ZÍSKÁŠ: Získáš tvrdou lekci o důsledcích a schopnost převést riziko do obrany.
CO ZTRATÍŠ/RISKUJEŠ: Každá zkratka zvyšuje chaos, virus-sim penalizaci, forenzní stopu a horší konečné hodnocení.
AKCE V TERMINÁLU: lab services
DOKONČENÍ: complete black-story-039
""",
            allowedCommands: ["lab services", "complete black-story-039"],
            completionCommand: "complete black-story-039",
            rewardXP: 230,
            levelRequired: 5,
            isCompleted: false
        )
    ]

    static let achievements: [Achievement] = [
        Achievement(id: "first-task", titleCS: "První krok", titleEN: "First step", descriptionCS: "Dokončil jsi první misi.", descriptionEN: "You completed your first mission.", unlocked: false),
        Achievement(id: "blue-campaign", titleCS: "Blue Guardian", titleEN: "Blue Guardian", descriptionCS: "Dokončil jsi Blue Team linku.", descriptionEN: "You completed the Blue Team line.", unlocked: false),
        Achievement(id: "red-campaign", titleCS: "Scoped Red", titleEN: "Scoped Red", descriptionCS: "Dokončil jsi Red Team sandbox bez reálné škody.", descriptionEN: "You completed the Red Team sandbox.", unlocked: false),
        Achievement(id: "grey-campaign", titleCS: "Grey Operator", titleEN: "Grey Operator", descriptionCS: "Dokončil jsi Grey Team retest linku.", descriptionEN: "You completed the Grey Team retest line.", unlocked: false),
        Achievement(id: "white-campaign", titleCS: "Public Interest", titleEN: "Public Interest", descriptionCS: "Dokončil jsi White Team důkazní linku.", descriptionEN: "You completed the White Team evidence line.", unlocked: false),
        Achievement(id: "black-campaign", titleCS: "Redemption", titleEN: "Redemption", descriptionCS: "Dokončil jsi Black Team sandbox následků.", descriptionEN: "You completed the Black Team consequence sandbox.", unlocked: false),
        Achievement(id: "lab-only", titleCS: "Scope Keeper", titleEN: "Scope Keeper", descriptionCS: "Zastavil jsi pokus mimo lab scope.", descriptionEN: "You blocked an out-of-scope attempt.", unlocked: false),
        Achievement(id: "mac-defender", titleCS: "Mac Defender", titleEN: "Mac Defender", descriptionCS: "Došel jsi k reálnému hardening checklistu Macu.", descriptionEN: "You reached the real Mac hardening checklist.", unlocked: false),
        Achievement(id: "forensic-mind", titleCS: "Forensic Mind", titleEN: "Forensic Mind", descriptionCS: "Pracuješ s důkazy, hashy a timeline.", descriptionEN: "You work with evidence, hashes, and timeline.", unlocked: false),
        Achievement(id: "toolsmith", titleCS: "Toolsmith", titleEN: "Toolsmith", descriptionCS: "Stáhl, ověřil, nainstaloval nebo spustil lab nástroj.", descriptionEN: "You downloaded, verified, installed, or ran a lab tool.", unlocked: false)
    ]

    static let campaignPathsCS: [String: [String]] = [
        "Blue Team cybersec": [
            "1. Výhra: čteš mail, archivuješ, otevřeš dokumentaci, použiješ správný příkaz, dokončíš včas.",
            "2. Pád: ignoruješ mail a začneš hádat příkazy — roste chaos a penalizace.",
            "3. Výhra: ověříš stažený balík hashem před instalací.",
            "4. Pád: spustíš appku bez ověření — virus-sim popup a ztráta skóre.",
            "5. Výhra: DLP stopu uložíš jako důkaz bez exportu klientských dat.",
            "6. Pád: řešíš incident bez timeline — report je slabý a mise má horší hodnocení.",
            "7. Výhra: izoluješ hosta a ověříš zálohu před obnovou.",
            "8. Pád: pleteš si public interest s doxxingem — hra tě vrací k zákonné cestě.",
            "9. Výhra: na konci chápeš FileVault/firewall/privacy/persistence na vlastním Macu.",
            "10. Pád: bezpečnost bereš jako jeden button — finální checklist není splněn."
        ],
        "Red Team cybercrime sandbox": [
            "1. Výhra: držíš scope a dokazuješ riziko bez škody.",
            "2. Pád: překročíš GovSim hranici — přichází právní debriefing.",
            "3. Výhra: používáš OSINT k verifikaci, ne k lovu lidí.",
            "4. Pád: věříš jedné stopě bez ověření — timeline je špatná.",
            "5. Výhra: proof-only nález končí reportem a mitigací.",
            "6. Pád: honíš ego místo důkazu — ztrácíš důvěru.",
            "7. Výhra: přijmeš dohled a pracuješ pro obranu.",
            "8. Pád: ignoruješ logy — forenzní stopa tě usvědčí.",
            "9. Výhra: historický případ převedeš na obrannou lekci.",
            "10. Pád: romantizuješ útok — hra ukáže dopad na lidi a provoz."
        ],
        "Grey Team": ["10 cest: scope, recon, proof-only, mitigace, retest, logy, report, automatizace, management, retest sign-off."],
        "White Team": ["10 cest: etika, audit, DLP, evidence, SBOM, governance, regulátor, public summary, Mac hardening, closure."],
        "Black Team sandbox": ["10 pádů: ego, stopa, chaos, data-loss, právní pád, scope, reparace, důkaz, report, redemption."]
    ]
}
