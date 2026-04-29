---
title: "Bidrag uppströms"
description: "Checklista för anställda som bidrar med programfixar till externa öppen programvara-bibliotek"
weight: 30
---

**Syfte:** Stöd när du som anställd bidrar med programfixar (patches) till ett externt öppen källkod-bibliotek som vi använder internt.

Vi uppmuntrar aktiva bidrag — felrättningar, programfixar, felrapporter och förbättringsförslag — till de projekt vi använder.

## A. Innan du skriver någon kod

- [ ] **SKA**: Godkännande från närmaste chef eller uppdragsansvarig finns vid större kodbidrag (exempelvis en hel kodbas). Vid mindre bidrag som programfel och felrapporter behövs inget godkännande.
- [ ] **SKA**: Projektets licenser är kompatibla med hur vi använder biblioteket (exempelvis OSI-godkänd licens för kod, Creative Commons för innehåll). Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Ingen CLA (Contributor License Agreement) är signerad utan att juridik eller behörig person tillfrågats. I princip bidrar vi inte till projekt som kräver CLA.
- [ ] **SKA**: Projektets bidragsguide (`CONTRIBUTING.md`), utvecklarguide eller wiki är genomläst.
- [ ] **SKA**: Vid minsta tvekan kring licensfrågor är juridik samt OSPO-ansvarig kontaktade för klartecken.

## B. Avgränsa ändringen

- [ ] **SKA**: Befintliga ärenden (issues) och ändringsförfrågningar (PR/MR) för samma programfel eller funktion är genomsökta.
- [ ] **SKA**: Befintliga ärendediskussioner är kommenterade eller anslutna till — eller, om sådana saknas, är ett nytt ärende öppnat som beskriver problemet och föreslagen lösning.
- [ ] **SKA**: Projektets underhållsansvariga har bekräftat intresse för den här typen av ändring.
- [ ] **SKA**: Ändringsförfrågan eller programfix innehåller ingen känslig information — t.ex. intern miljökonfiguration, hemligheter (API-nycklar, tokens), kund- eller användardata, interna URL:er, IP-adresser eller systemnamn, eller loggar och stack traces med känsligt innehåll.

## C. Genomföra programfixen

- [ ] **SKA**: Projektets kodstil och konventioner följs.
- [ ] **SKA**: Projektets formatterare och linter-konfiguration används.
- [ ] **SKA**: Tester som täcker ändringen är tillagda eller uppdaterade.
- [ ] **SKA**: Dokumentation eller kommentarer är uppdaterade om beteendet ändras.

## D. Förbereda ändringsförfrågan (PR/MR)

- [ ] **SKA**: Senaste ändringarna i uppströms målbranch är synkade.
- [ ] **SKA**: Alla sammanslagningskonflikter är snyggt lösta.
- [ ] **SKA**: Incheckningshistoriken är städad (squashad eller ordnad vid behov).
- [ ] **SKA**: Incheckningsmeddelanden är tydliga (imperativ form, referera ärende vid behov).
- [ ] **SKA**: Dina incheckningar är signerade med din nyckel och har DCO sign-off (`git commit -S -s`). DCO (Developer Certificate of Origin) är en rad i meddelandet som intygar att du har rätt att bidra med koden.
- [ ] **SKA**: Ändringsförfrågans titel är tydlig och beskrivande.
- [ ] **SKA**: Beskrivningen inkluderar:
  - [ ] Problembeskrivning (vad är fel eller vad saknas?).
  - [ ] Sammanfattning av lösningen (hur är det fixat?).
  - [ ] Hur man reproducerar före/efter.
  - [ ] Eventuella begränsningar eller bieffekter.
- [ ] **SKA**: Eventuella brytande ändringar är tydligt markerade.
- [ ] **SKA**: Det är kontrollerat att följande inte finns:
  - [ ] Interna URL:er eller interna systemnamn.
  - [ ] API-nycklar, tokens eller andra hemligheter.
  - [ ] Kunddata eller annan känslig information.
  - [ ] Interna referenser (ärendenummer, loggar) som inte hör hemma publikt.

## E. Under granskning

- [ ] **SKA**: Återkoppling från projektets underhållsansvariga besvaras sakligt och rimligt snabbt.
- [ ] **SKA**: Implementationen är justerad enligt återkopplingen (eller motiverat varför inte).
- [ ] **SKA**: Interna intressenter är uppdaterade (ändringsförfrågan länkad i intern ticket eller ärende).
- [ ] **SKA**: Större ändringar som projektets underhållsansvariga gör i programfixen är noterade (för intern uppföljning).

## F. Efter sammanslagning eller avslag

- [ ] **SKA**: Den uppströmsversion som innehåller programfixen är noterad.
- [ ] **SKA**: Plan finns för när beroendet ska uppgraderas internt.
- [ ] **SKA**: Om programfixen behövs före utgåva:
  - [ ] Tillfällig avgrening eller intern programfix är dokumenterad.
  - [ ] Plan finns för att ta bort avgrening eller intern programfix när officiell utgåva finns.
- [ ] **SKA**: Vid avslag:
  - [ ] Motiveringen är dokumenterad internt.
  - [ ] Eventuell intern tillfällig lösning eller avgrening är beslutad om det krävs.

## G. Intern logg

- [ ] **BÖR**: Länkar till uppströms ärende och ändringsförfrågan.
- [ ] **BÖR**: Referens till godkännande för specialfall (CLA, stora kodbaser, övrigt).
- [ ] **BÖR**: Kort sammanfattning: *"Vi bidrog med X till projekt Y, inkluderat i version Z."*
