---
title: "Anskaffning"
description: "Checklista för beställare, kravställare och systemägare när öppen programvara övervägs eller väljs"
weight: 10
---

**Syfte:** Stöd för beställare, kravställare och systemägare när öppen programvara övervägs eller väljs.

**Avgränsning:** Checklistan listar bara det som är specifikt för öppen programvara. Generella upphandlingskrav förutsätts hanteras enligt era ordinarie processer och tas inte upp här.

När man upphandlar öppen programvara gäller andra spelregler än vid traditionell programvaruanskaffning: själva programvaran är fritt tillgänglig och det är tjänsterna runt den (implementation, support, underhåll, utbildning) som upphandlas. Kravställare/beställare kan därför namnge specifik öppen programvara direkt i underlaget; konkurrensen sker på tjänsterna istället för på produktvalet, vilket motverkar leverantörs­inlåsning.

Enligt Kammarkollegiets [vägledning för avrop från *Programvaror och tjänster*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf), sektion 3.3 "Programvara med öppen källkod":

> Kund får ställa ett obligatoriskt krav på specifik namngiven Programvara som i sin helhet är licensierad med en eller flera licenser godkända av Open Source Initiative (OSI), är gratis och fri för alla leverantörer att nyttja (det krävs ex. ingen återförsäljarstatus).
>
> Kund får ställa obligatoriska krav på standarder om standarden uppfyller kraven på en öppen standard enligt SOU 2009:86.

## A. Förberedelse – behov och krav

- [ ] **SKA**: Öppen programvara är övervägd som förstahandsval. Vid annat val finns dokumenterad motivering — gäller både när proprietär programvara väljs i stället och när öppen programvara inte är lämplig/möjlig (avstegsbeslut). Lämpliga grunder: funktionella, tekniska, säkerhetsmässiga eller ekonomiska skäl.
- [ ] **BÖR**: Diggs [Svenskt ramverk för digital samverkan](https://www.digg.se/kunskap-och-stod/svenskt-ramverk-for-digital-samverkan) och [Interoperabilitetsförordningen (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj) är konsulterade för öppna standarder och interoperabilitet.

## B. Grundläggande utvärdering av kandidatprojekt

Det projekt som väljs bör ha genomgått en grundläggande utvärdering — särskilt med avseende på projekthälsa (är det aktivt och välskött?), säkerhet (visar projektet goda säkerhetsförmågor?) och licensvillkoren (är de förenliga med era ändamål?). Punkterna nedan är utgångspunkter, inte en uttömmande granskning.

- [ ] **SKA**: Projektet uppdateras regelbundet ([incheckningar/kodändringar, utgåvor, ärenden](../../terminologi/)).
- [ ] **SKA**: Det finns en tydlig huvudaktör/organisation bakom projektet.
- [ ] **SKA**: Felrapporter och förbättringsförslag hanteras inom rimlig tid.
- [ ] **SKA**: Licensen är identifierad, OSI-godkänd och förenlig med hur organisationen avser att använda programvaran (drift, förändring, ev. egen publicering). Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Projektet visar upp goda säkerhetsförmågor. Exempel (inte alla behövs): dokumenterad säkerhetshantering (filen `SECURITY.md`, sårbarhetspolicy), redovisad SBOM (sammansättning), releasesignaturer (äkthet), tydligt stödfönster (hur länge säkerhetsuppdateras), eller en hälsobedömning som [OpenSSF Scorecard](https://scorecard.dev/) eller motsvarande.
- [ ] **SKA**: Programvarans "as is"-villkor och organisationens kvalitets- och riskansvar är förstådda. Öppen programvara levereras utan garantier; ansvaret för drift och kvalitet vilar på den som använder den.
- [ ] **BÖR**: Det finns en aktiv gemenskap/community kring projektet.
- [ ] **BÖR**: Det framgår hur man bidrar (filen `CONTRIBUTING.md`, governance, kodgranskning).

## C. Ytterligare stöd

- [Kammarkollegiets vägledning för avrop från *Programvaror och tjänster*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf): allmän vägledning för avrop, hänvisar till Kravkatalog och övriga avtalsdokument.
- Inköpsrådets artikelserie om upphandling och öppen programvara (fyra delar):
  - Del 1: [Dela kostnader och undvik inlåsningar](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/)
  - Del 2: [Hitta öppen källkod som klarar kraven](https://inkopsradet.se/upphandling/hitta-oppen-kallkod-som-klarar-kraven/)
  - Del 3: [Utvecklas och förvaltas tillsammans](https://inkopsradet.se/utvecklas-och-forvaltas-tillsammans/)
  - Del 4: [Undvik inlåsning vid it-upphandling](https://inkopsradet.se/undvik-inlasning-vid-it-upphandling/)
- [NOSAD: vägledning om upphandling och öppen programvara](https://nosad.se/upphandling-oss).
