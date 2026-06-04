---
title: "Hantering av ärenden, frågor och externa bidrag"
description: "Checklista för team som hanterar ärenden, frågor och ändringsförfrågningar i öppna projekt"
weight: 90
---

**Syfte:** Stöd för hur team hanterar ärenden (issues), frågor och ändringsförfrågningar (PR/MR) i öppna projekt.

## A. Bevaka ärenden

- [ ] **SKA**: Ärendehanteraren är publik och påslagen så länge tjänsten är aktivt utvecklad.
- [ ] **SKA**: Det finns en överenskommen frekvens för genomgång av ärenden och ändringsförfrågningar (t.ex. veckovis).
- [ ] **SKA**: Nya ärenden kategoriseras (programfel, förbättring, fråga, annat).
- [ ] **SKA**: Nya ärenden får en första återkoppling inom rimlig tid (rekommenderat: ≤ 5 arbetsdagar). Bekräftar att rapporten är läst, även om åtgärden dröjer.
- [ ] **SKA**: Ärenden med potentiella säkerhetsimplikationer hanteras enligt sårbarhetsrutiner. Se [Säkerhet](../sakerhet/).

## B. Frågor och kontaktvägar

- [ ] **SKA**: Produkt- och projektrelaterade frågor besvaras av ansvarigt team via ärendehanteraren eller motsvarande.
- [ ] **SKA**: Generella frågor om öppen programvara hänvisas till överenskommen funktion (t.ex. OSPO eller gemenskap/community).
- [ ] **SKA**: Allmänna frågor om organisationens verksamhet hänvisas till ordinarie kontaktvägar (t.ex. info/registrator).
- [ ] **SKA**: Dessa kontaktvägar framgår i README eller dokumentationen, så att frågor styrs rätt redan från början.

## C. Externa bidrag (ändringsförfrågningar)

- [ ] **SKA**: Externa ändringsförfrågningar (PR/MR) välkomnas och granskas systematiskt enligt [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Bidrag granskas genom samma flöden som övrig utveckling: granskning, tester, kontroll av beroenden, både manuella och automatiserade kvalitetskontroller.
- [ ] **SKA**: Tydliga riktlinjer i `CONTRIBUTING.md` avgränsar omfattning och kvalitetskrav. AI-genererade bidrag bedöms på samma grunder som övriga; automatiska kontroller och tydliga ramar är särskilt viktiga.
- [ ] **SKA**: Kodkvalitet, stil och testbarhet kontrolleras.
- [ ] **SKA**: Säkerhetspåverkan bedöms (särskilt vid ändringar nära gränssnitt eller behörighetshantering).
- [ ] **SKA**: Licens- och copyrightfrågor för bidraget är godtagbara; bidragsgivare har intygat rätten att bidra (DCO eller CLA). Se [Förberedelse inför publicering](../publicering-forvaltning/) för projektets policy kring DCO/CLA.
- [ ] **SKA**: Påverkan på projektets inriktning är bedömd i förhållande till dokumenterade mål och roadmap.
- [ ] **SKA**: Bidrag kan nekas om de inte följer rutiner, mallar, krav eller bedöms passa projektets riktning. Avslag kommuniceras respektfullt och begripligt.
- [ ] **BÖR**: Contributor Covenant eller motsvarande uppförandekod används. Sätter sociala spelregler för gemenskapen/communityn.

## D. Avslutade/arkiverade projekt

- [ ] **SKA**: Om projektet inte längre förvaltas aktivt är detta tydligt i README.
- [ ] **SKA**: Projektet är markerat som arkiverat eller liknande i plattformen.
- [ ] **SKA**: Öppna ärenden och ändringsförfrågningar hanteras (stängs eller kommenteras) med motivering.
