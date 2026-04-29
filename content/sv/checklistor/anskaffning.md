---
title: "Anskaffning"
description: "Checklista för beställare, kravställare och systemägare när öppen programvara övervägs eller väljs"
weight: 10
---

**Syfte:** Stöd för beställare, kravställare och systemägare när öppen programvara övervägs eller väljs.

## A. Förberedelse – behov och krav

- [ ] **SKA**: Verksamhetsbehovet är beskrivet (vad, för vem, i vilken miljö).
- [ ] **SKA**: Vid anskaffning av öppen programvara upphandlas tjänster (implementation, support, underhåll, utbildning), inte själva programvaran (som är fritt tillgänglig).
- [ ] **SKA**: Kravställare/beställare föreslår specifik öppen programvara i upphandlingsunderlaget. Det underlättar upphandlingen och motverkar leverantörs­inlåsning.
- [ ] **SKA**: Kammarkollegiets vägledning är konsulterad: obligatoriskt krav på specifik namngiven öppen programvara med OSI-godkänd licens får ställas vid upphandling.
- [ ] **SKA**: Krav på informationssäkerhet är identifierade (informationsklassning).
- [ ] **SKA**: Krav på it-säkerhet är identifierade (loggning, programfixar/patchning, driftmiljö).
- [ ] **SKA**: Krav på interoperabilitet och öppna standarder är formulerade enligt [Interoperabilitetsförordningen (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj) och European Interoperability Framework (EIF). Diggs policy och riktlinje refererar förordningen explicit.
- [ ] **SKA**: Öppen programvara är övervägd som förstahandsval. Vid annat val finns motivering.

## B. Val av projekt/lösning

### Funktionalitet och passform

- [ ] **SKA**: Den öppna lösningen uppfyller centrala funktionella krav.
- [ ] **SKA**: Lösningen kan fungera i organisationens tekniska miljö (plattformar, integrationer).

### Projektets hälsa

- [ ] **SKA**: Projektet uppdateras regelbundet (incheckningar, utgåvor, ärenden).
- [ ] **SKA**: Det finns en tydlig huvudaktör/organisation bakom projektet.
- [ ] **SKA**: Felrapporter och förbättringsförslag hanteras inom rimlig tid.
- [ ] **SKA**: Projektet har dokumenterad säkerhetshantering (`SECURITY.md`, sårbarhetspolicy).
- [ ] **BÖR**: Projektet redovisar SBOM (sammansättning), releasesignaturer (äkthet) och stödfönster (hur länge säkerhetsuppdateras).
- [ ] **BÖR**: OpenSSF Scorecard-poäng eller motsvarande hälsobedömning är granskad. Scorecard ger en automatisk poäng på projektets säkerhetspraxis.

### Community och governance

- [ ] **SKA**: Det finns en aktiv community/gemenskap kring projektet.
- [ ] **SKA**: Det framgår hur man bidrar (`CONTRIBUTING.md`, governance, kodgranskning).

## C. Licens, villkor och ansvar

- [ ] **SKA**: Licensen är identifierad och OSI-godkänd. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Licensen är förenlig med hur organisationen avser att använda programvaran (drift, förändring, ev. egen publicering).
- [ ] **SKA**: Tredjepartslicenser är identifierade och bedömda för kompatibilitet.
- [ ] **SKA**: Programvarans "as is"-villkor och organisationens kvalitets- och riskansvar är förstådda. Öppen programvara levereras utan garantier; ansvaret för drift och kvalitet vilar på den som använder den.

## D. Säkerhet och drift

För djupare bedömnings­kriterier kring öppen programvaras säkerhet, se [Säkerhet](../sakerhet/).

- [ ] **SKA**: Rutiner för bevakning och hantering av sårbarheter och säkerhetsuppdateringar är klargjorda.
- [ ] **SKA**: Det finns stöd för loggning, övervakning och drift i organisationens IT-miljö.
- [ ] **SKA**: Lösningen passar in i organisationens arkitektur (integrationer, beroenden, nätverk).
- [ ] **BÖR**: Total Cost of Ownership (TCO) över livscykeln är skattad. TCO inkluderar inte bara licens utan också drift, integration, kompetens och förvaltning.
- [ ] **BÖR**: Exit-/migrationsplan finns även om alternativet är öppen programvara. Inlåsning kan uppstå även mot specifika öppna programvaruprojekt.

## E. Dokumentation av beslut

- [ ] **SKA**: Bedömning och val/avstående är dokumenterat.
- [ ] **SKA**: Om proprietär programvara väljs istället för öppen: beslutet är motiverat och dokumenterat (funktionella, tekniska, säkerhetsmässiga eller ekonomiska skäl).
- [ ] **SKA**: När öppen programvara inte är lämplig eller möjlig finns en dokumenterad motivering (avstegsbeslut).
- [ ] **SKA**: Systemägare/produktägare är utsedd och informerad.
- [ ] **SKA**: Beslutet är diariefört. Se [Diarieföring och arkivering](../diarie-arkiv/).

## F. Upphandlingsregler för öppen programvara

- [ ] **SKA**: Kammarkollegiets ramavtal *Programvaror och tjänster* tillåter obligatoriska krav på specifik namngiven programvara med OSI-godkänd licens som är gratis och fri för alla leverantörer att nyttja. Detta är förstått.
- [ ] **SKA**: Obligatoriska krav på öppna standarder får ställas om standarden uppfyller kraven enligt SOU 2009:86. Detta är förstått.

## G. Stöd och vägledning

- [ ] **SKA**: Kammarkollegiets vägledning för avrop från *Programvaror och tjänster* är konsulterad (innehåller fullständigt citat i bilaga "Kravkatalog").
- [ ] **SKA**: [NOSAD:s vägledning om upphandling och öppen programvara](https://nosad.se/upphandling-oss) är konsulterad.
- [ ] **BÖR**: Inköpsrådets artikelserie om upphandling och öppen programvara är konsulterad: [Dela kostnader och undvik inlåsningar](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/) (del 1).

---

> **Bilaga ur Kammarkollegiets vägledning:**
> Kund får ställa ett obligatoriskt krav på specifik namngiven Programvara som i sin helhet
> - är licensierad med en eller flera licenser godkända av Open Source Initiative (OSI),
> - är gratis och fri för alla leverantörer att nyttja (det krävs ex. ingen återförsäljarstatus).
>
> Kund får ställa obligatoriska krav på standarder om standarden uppfyller kraven på en öppen standard enligt SOU 2009:86.
