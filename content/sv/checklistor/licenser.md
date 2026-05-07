---
title: "Licensval och licenskompatibilitet"
description: "Checklista för licensval, REUSE/SPDX-märkning och kompatibilitetsbedömning i projekt"
weight: 40
---

**Syfte:** Stöd vid val av licens och hantering av licenser i projekt.

## Befintligt projekt

Vid bidrag till ett existerande projekt har projektet OSI-godkänd licens (eller [Creative Commons](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt) / motsvarande för öppna data) och kräver ingen CLA.

## Nytt projekt

Digg-riktlinjen säger att licensvalet ska göras utifrån projektets syfte: *"ibland är det viktigast att säkerställa att vidareutveckling förblir öppen, ibland att möjliggöra både öppen och sluten vidareutveckling"*.
Den här checklistans rekommendationer:

1. **När vidareutveckling ska garanteras vara fortsatt öppen** (typiskt plattform/infrastruktur): copyleft-licens, i prioriteringsordning EUPL, GPL, AGPL. EUPL (European Union Public Licence) är juridiskt bindande på svenska, kompatibel med flera medlemsstaters lagstiftning och hanterar SaaS-distribution.
2. **När både öppen och sluten vidareutveckling ska tillåtas**: tillåtande licens, MIT eller Apache License 2.0.
3. **När ekosystemet har en etablerad licenskonvention**: väg in den i valet — t.ex. LGPL för ett ffmpeg-relaterat bibliotek, Apache 2.0 för en Spring-extension, MIT för en JavaScript-komponent. Att matcha ekosystemet underlättar adoption och integrering.

Kod-licensen täcker normalt inte text och illustrationer. För dokumentation, exempel och konfiguration väljs en separat tillåtande licens (t.ex. CC0, CC BY 4.0, CC BY-SA 4.0); se [Diggs rekommendation om öppna licenser och immaterialrätt](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt).

Vald licens ska vara OSI-godkänd, det vill säga listad av [Open Source Initiative](https://opensource.org/licenses). Licensvalet dokumenteras innan utvecklingsarbetet påbörjas, så att bidragsgivare vet villkoren från första incheckning. Konsultera juridik eller OSPO vid behov.

