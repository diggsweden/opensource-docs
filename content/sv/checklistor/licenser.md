---
title: "Licensval och licenskompatibilitet"
description: "Checklista för licensval, REUSE/SPDX-märkning och kompatibilitetsbedömning i projekt"
weight: 40
---

**Syfte:** Stöd vid val av licens och hantering av licenser i projekt.

## A. Bidrag till ett befintligt projekt?

- [ ] **SKA**: Det är identifierat om detta är ett bidrag till ett existerande open source-projekt.
- [ ] **SKA**: Om ja: projektets befintliga licens är känd och bedömd som acceptabel för organisationen.
- [ ] **SKA**: Copyleft-effekter på organisationens användning är bedömda. Copyleft (t.ex. GPL) kräver att vidareutveckling delas under samma licens, vilket kan smitta av sig på er egen kod.

## B. Nytt projekt – val av licensmodell

Digg-riktlinjen säger att licensvalet ska göras utifrån projektets syfte: *"ibland är det viktigast att säkerställa att vidareutveckling förblir öppen, ibland att möjliggöra både öppen och sluten vidareutveckling"*.
Den här checklistans rekommendationer:

1. **När vidareutveckling ska förbli öppen** (typiskt plattform/infrastruktur): copyleft-licens, i prioriteringsordning **EUPL 1.2**, GPL-3.0, AGPL-3.0.
2. **När både öppen och sluten vidareutveckling ska tillåtas**: tillåtande licens, MIT eller Apache License 2.0.

- [ ] **SKA**: Beslut är fattat om copyleft-strategi (vidareutveckling tvingas öppen, eller får vara både öppen och sluten).
- [ ] **SKA**: Vald licens är OSI-godkänd, det vill säga listad som öppen programvara av Open Source Initiative. Se [opensource.org/licenses](https://opensource.org/licenses)).
- [ ] **BÖR**: För plattform/infrastruktur har EUPL 1.2 (European Union Public Licence) övervägts. Den är juridiskt bindande på svenska, kompatibel med flera medlemsstaters lagstiftning och hanterar SaaS-distribution.
- [ ] **SKA**: Licensvalet är dokumenterat **innan** utvecklingsarbetet påbörjas, så att bidragsgivare vet villkoren från första incheckning.
- [ ] **BÖR**: Juridik/OSPO är konsulterad vid behov.

## C. Beroenden och kompatibilitet

- [ ] **SKA**: Alla tredjepartsbibliotek och beroenden är inventerade med sina licenser.
- [ ] **SKA**: Kompatibilitetsbedömning är gjord, t.ex. att copyleft-beroenden inte tvingar er huvudlicens till copyleft. Verktyg: [Joinup Licence Compatibility Checker](https://joinup.ec.europa.eu/collection/eupl/solution/joinup-licensing-assistant).
- [ ] **SKA**: Det är dokumenterat hur tredjeparts licensinformation ska ges (t.ex. `NOTICE`-fil med upphovsangivelser).
- [ ] **BÖR**: För GPL: version (v2/v3) är aktivt vald och konsekvent.
- [ ] **BÖR**: För AGPL: nätverksklausulens konsekvenser för SaaS-användning är förstådda. AGPL kräver att källkod tillgängliggörs även för användare som bara når tjänsten över nätverk.

## D. Copyright och märkning (REUSE/SPDX)

- [ ] **SKA**: Projektet följer [REUSE-specifikationen](https://reuse.software/): varje fil har `SPDX-License-Identifier` (vilken licens) och `SPDX-FileCopyrightText` (vem äger upphovsrätten). REUSE/SPDX är maskinläsbara standarder för fil-nivå-märkning.
- [ ] **SKA**: Projektet har tydliga copyright-angivelser (årtal, organisation, ev. medförfattare).
- [ ] **SKA**: Licensfil (`LICENSE`) finns på rotnivå.
- [ ] **SKA**: `NOTICE`-fil finns där det krävs (t.ex. för Apache 2.0 med tredjepartsattribution).
- [ ] **BÖR**: Projektet strävar efter att uppfylla [ISO/IEC 5230 (OpenChain)](https://www.iso.org/standard/81039.html) för licenshantering där det är rimligt. Det är en internationell standard för organisationers licensefterlevnad.

## E. Dokumentation och övrigt material

- [ ] **SKA**: Licens för dokumentation, exempel och konfiguration är vald och tydlig. Kod-licensen täcker normalt inte text och illustrationer.
- [ ] **SKA**: Dokumentation ges ut under en tillåtande licens (t.ex. CC0, CC BY 4.0, CC BY-SA 4.0).

## F. Stöd och eskalering

- [ ] **SKA**: Kontaktväg för licensfrågor (juridik, OSPO) är känd.
- [ ] **SKA**: Beslut om licens är dokumenterat (t.ex. i projektbeskrivning kopplad till diarienummer; se [Diarieföring och arkivering](../diarie-arkiv/)).
