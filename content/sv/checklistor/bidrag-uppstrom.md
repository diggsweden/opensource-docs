---
title: "Bidrag uppströms"
description: "Checklista för anställda som bidrar med programfixar till externa öppen programvara-bibliotek"
weight: 30
---

**Syfte:** Stöd när du som anställd bidrar med programfixar (patches) till ett externt open source-bibliotek som vi använder internt.

## A. Innan du skriver någon kod

- [ ] **SKA**: Intern policy är konsulterad: bidrag till projektet på arbetstid är tillåtet.
- [ ] **SKA**: Godkännande från chef eller uppdragsansvarig finns vid behov.
- [ ] **SKA**: Exakt uppströms-kodförråd och version som används internt är identifierade.
- [ ] **SKA**: Projektets licens är OSI-godkänd.
- [ ] **SKA**: Licensen är kompatibel med hur vi använder biblioteket. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Vid minsta tvekan kring licensfrågor: juridik/Legal är kontaktad för go/no-go.
- [ ] **SKA**: Det är klargjort om projektet kräver CLA (Contributor License Agreement) eller DCO (Developer Certificate of Origin).
- [ ] **SKA**: Det är klargjort om ett företags- eller myndighets-CLA redan finns på plats.
- [ ] **SKA**: Ingen CLA är signerad utan att juridik eller behörig person tillfrågats.
- [ ] **SKA**: Projektets `CONTRIBUTING.md`, utvecklingsguide eller wiki är genomläst.
- [ ] **SKA**: Projektets grenstrategi och målbranch (`main`, `develop`, etc.) är förstådd.
- [ ] **SKA**: Hur tester och linters körs enligt projektets instruktioner är känt.

## B. Avgränsa ändringen

- [ ] **SKA**: Befintliga ärenden (issues) och ändringsförfrågningar (PR/MR) för samma programfel eller funktion är genomsökta.
- [ ] **SKA**: Duplicerat arbete är undvikit (befintlig diskussion är kommenterad eller ansluten till).
- [ ] **SKA**: Ärende eller kommentar som beskriver problemet och föreslagen lösning är öppnad.
- [ ] **SKA**: Underhållsansvarigas intresse för den här typen av ändring är bekräftat.
- [ ] **SKA**: Programfixen exponerar ingen intern eller känslig information:
  - [ ] Inga interna URL:er, IP-adresser eller systemnamn.
  - [ ] Ingen kund- eller användardata.
  - [ ] Inga interna loggar eller stack traces med känsligt innehåll.

## C. Genomföra programfixen

- [ ] **SKA**: Projektets kodstil och konventioner följs.
- [ ] **SKA**: Projektets formatterare och linter-konfiguration används.
- [ ] **SKA**: Ändringen är så liten och fokuserad som möjligt (inga orelaterade refactors).
- [ ] **SKA**: Tester som täcker ändringen är tillagda eller uppdaterade.
- [ ] **SKA**: Hela testsviten är körd lokalt.
- [ ] **SKA**: Dokumentation eller kommentarer är uppdaterade om beteendet ändras.

## D. Förbereda ändringsförfrågan (PR/MR)

- [ ] **SKA**: Senaste ändringarna i uppströms målbranch är synkade.
- [ ] **SKA**: Alla sammanslagningskonflikter är snyggt lösta.
- [ ] **SKA**: Commithistoriken är städad (squashad eller ordnad vid behov).
- [ ] **SKA**: Incheckningsmeddelanden är tydliga (imperativ form, referera ärende vid behov).
- [ ] **SKA**: Ändringsförfrågans titel är tydlig och beskrivande.
- [ ] **SKA**: Beskrivningen inkluderar:
  - [ ] Problembeskrivning (vad är fel eller vad saknas?).
  - [ ] Sammanfattning av lösningen (hur är det fixat?).
  - [ ] Hur man reproducerar före/efter.
  - [ ] Eventuella begränsningar eller bieffekter.
- [ ] **SKA**: Eventuella breaking changes är tydligt markerade.
- [ ] **SKA**: Det är dubbelkollat att följande inte finns:
  - [ ] Interna URL:er eller interna systemnamn.
  - [ ] API-nycklar, tokens eller andra hemligheter.
  - [ ] Kunddata eller annan känslig information.
  - [ ] Interna referenser (ärendenummer, loggar) som inte hör hemma publikt.

## E. Under granskning

- [ ] **SKA**: Feedback från underhållsansvariga besvaras sakligt och rimligt snabbt.
- [ ] **SKA**: Implementationen är justerad enligt feedback (eller motiverat varför inte).
- [ ] **SKA**: Interna intressenter är uppdaterade (ändringsförfrågan länkad i intern ticket eller ärende).
- [ ] **SKA**: Större ändringar som underhållsansvariga gör i programfixen är noterade (för intern uppföljning).

## F. Efter sammanslagning eller avslag

- [ ] **SKA**: Vilken uppströms-version som innehåller programfixen är noterad.
- [ ] **SKA**: Plan finns för när beroendet ska uppgraderas internt.
- [ ] **SKA**: Om programfixen behövs före utgåva:
  - [ ] Tillfällig avgrening eller intern programfix är dokumenterad.
  - [ ] Plan finns för att ta bort avgrening eller intern programfix när officiell utgåva finns.
- [ ] **SKA**: Vid avslag:
  - [ ] Motiveringen är dokumenterad internt.
  - [ ] Eventuell intern workaround eller avgrening är beslutad om det krävs.

## G. Intern logg

- [ ] **BÖR**: Länk till intern ticket eller ärende.
- [ ] **BÖR**: Länk till uppströms ärende.
- [ ] **BÖR**: Länk till uppströms ändringsförfrågan.
- [ ] **BÖR**: Referens till juridiskt godkännande (för CLA eller specialfall).
- [ ] **BÖR**: Kort sammanfattning: *"Vi bidrog med X till projekt Y, inkluderat i version Z."*

> Checklistan är inspirerad av externa riktlinjer för open source-bidrag (t.ex. TODO Group, GitHub Docs och olika FOSS-policymallar) men är anpassad för intern användning och ska inte ses som juridisk rådgivning.
