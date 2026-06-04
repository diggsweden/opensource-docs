---
title: "Förberedelse inför publicering"
description: "Grundkontroll inför öppen publicering: beslut, ansvar, dokumentation, licens och releasepraxis"
weight: 70
---

**Syfte:** Säkerställa att ett projekt är tryggt att publicera öppet, begripligt att använda och tydligt för omvärlden.

**Praktisk start:** För nya projekt, eller interna projekt som ska öppnas upp, använd gärna [Mallprojekt för öppen programvara](../../projektmall/) som startpunkt.
Mallen hjälper med standardfiler, REUSE-stöd, `publiccode.yml`, ärende-/PR-mallar och grundläggande CI-struktur.
Kontrollera alltid att innehåll, kontaktvägar och workflows är anpassade för det faktiska projektet.

**Detaljerade kontroller:** Den här checklistan samlar grundkraven inför publicering.
När en punkt gäller säkerhet, licenser eller kodsamverkansplattform pekar den vidare till respektive specialchecklista, där detaljerna finns.

**Nästa steg:** När grundkraven är uppfyllda och projektet närmar sig en stabil utgåva, se [Publicering av version 1.0.0](../publicering-1.0/).

## A. Beslut, ansvar och underhållsansvariga

Digg-riktlinjens ansvarsmodell:

| Roll | Ansvar |
|---|---|
| Avdelnings-/verksamhetsansvarig chef (informationsägare) | Övergripande efterlevnad inom verksamheten |
| Systemägare / verksamhetsansvarig enhetschef | Programvaran hanteras enligt riktlinjen; risker, licenser, beroenden, säkerhet följs upp |
| Operativt team | Dagligt arbete med kod, beroenden, ärenden, externa bidrag, dokumentation |

- [ ] **SKA**: Beslut om öppen publicering är fattat av behörig chef/systemägare och diariefört. Eventuella avsteg från policy/riktlinje är motiverade och diarieförda. Kopplingen mellan ärende och kodförråd är dokumenterad. Se [Diarieföring och arkivering](../diarie-arkiv/).
- [ ] **SKA**: Operativt team är identifierat och informerat. Om projektet berör flera informationsägare är ansvarsfördelningen tydliggjord.
- [ ] **SKA**: Underhållsansvariga framgår i README. Använd `CODEOWNERS` där ansvar per filområde behöver pekas ut. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Ärendehanteraren är publik och påslagen så länge tjänsten är aktivt utvecklad. Se [Hantering av ärenden, frågor och externa bidrag](../arenden-community/).
- [ ] **SKA**: Bidragsgivare intygar rätten att bidra, antingen via DCO (Developer Certificate of Origin: signerade incheckningar med `Signed-off-by:`) eller via CLA (Contributor License Agreement). Det säkerställer att vi har rätt att ta in koden. Se [Bidrag uppströms](../bidrag-uppstrom/) för bidragsgivar-perspektivet.
- [ ] **BÖR**: Operativa team har grundläggande kunskap om etablerade arbetssätt, säker utveckling och licenshantering. Se [opensource.guide](https://opensource.guide/).
- [ ] **BÖR**: Programvaran är publikt tillgänglig på Internet **redan under utveckling** (källkod, dokumentation, byggskript). Öppen utveckling är standard, inte färdig leverans.

## B. Säkerhet inför publicering

Allmänna säkerhetskrav (informationsklassning, riskanalys, säker systemutveckling) följer Diggs Riktlinje för it-säkerhet och Riktlinje för säker informationshantering.
De detaljerade kontrollerna för öppen programvara finns i [Säkerhet](../sakerhet/).

- [ ] **SKA**: Informationsklassningen är klar och projektet är bedömt som lämpligt att publicera öppet.
- [ ] **SKA**: Säkerhetsgenomgång enligt [Säkerhet](../sakerhet/) är gjord. Den omfattar känsliga uppgifter i kod, loggar, testdata och konfiguration, samt rapporteringsväg för sårbarheter.
- [ ] **SKA**: Kodgranskning och ändringsflöde följer [Arbete på kodsamverkansplattform](../plattform/).

## C. Licens och rättigheter

- [ ] **SKA**: Licensvalet är gjort och dokumenterat enligt [Licensval och licenskompatibilitet](../licenser/). Licensen är OSI-godkänd, lämplig för projektets syfte och dokumenterad i `LICENSE`.
- [ ] **SKA**: REUSE/SPDX-märkning och beroendelicenser är verifierade enligt [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Avstegsbeslut (om proprietär lösning väljs) är godkända av IT-chef och dokumenterade.
- [ ] **BÖR**: Projektet strävar efter att uppfylla [ISO/IEC 5230 (OpenChain)](https://www.iso.org/standard/81039.html) för licenshantering där det är rimligt. Det är en internationell standard för organisationers licensefterlevnad.

## D. Dokumentation och projekthälsa

Projekten ska ge användare en överskådlig bild av vad lösningen gör, hur den används, vilka förutsättningar som gäller och under vilka licensvillkor den tillhandahålls.
Använd [Mallprojekt för öppen programvara](../../projektmall/) som startpunkt för standardfilerna.

- [ ] **SKA**: Standardfiler och grunddokumentation finns och är anpassade för projektet, inte bara kopierade från mall.
- [ ] **SKA**: README eller motsvarande framsida beskriver vad projektet gör, för vem, i vilken miljö, och hur programvaran installeras och körs.
- [ ] **SKA**: Det finns instruktioner för utveckling, bygge och externa bidrag, inklusive kvalitetskrav och testförväntningar.
- [ ] **SKA**: Kontaktvägar, uppförandekod och tillkännagivande av bidragsgivare är dokumenterade.
- [ ] **SKA**: Användningsdokumentation, arkitekturbeskrivning och relevanta externa gränssnitt är dokumenterade så att andra myndigheter kan bedöma återanvändbarhet utan att läsa hela kodbasen.
- [ ] **BÖR**: Dokumentation är skriven i klarspråk och anpassad till bredare målgrupp.

## E. Status, förvaltning och stödfönster

- [ ] **SKA**: Status och mognadsgrad är tydliga (aktivt förvaltat, arkiverat/avslutat, alpha/beta/stable/deprecated).
- [ ] **SKA**: Förvaltningsplanen beskriver hantering av ärenden och ändringsförfrågningar, beroendeuppdateringar, releasekommunikation och ansvar för säkerhetsärenden. Se [Hantering av ärenden, frågor och externa bidrag](../arenden-community/) och [Säkerhet](../sakerhet/).
- [ ] **BÖR**: Stödfönster ("säkerhetsuppdateringar fram till YYYY-MM-DD") är publicerat, så att användare vet hur länge de kan räkna med uppdateringar.

## F. Publicering

- [ ] **SKA**: Projektnamnet är kontrollerat mot befintliga projekt, varumärken och sökträffar.
- [ ] **SKA**: Projektet ligger i rätt organisation/yta hos Git-leverantör och synlighet (publik) är korrekt satt enligt informationsklassning.
- [ ] **SKA**: Eventuell extern kommunikation (webb, dataportal, gemenskap/community) är planerad.

## G. Versionshantering och utgåvor

- [ ] **SKA**: Projektet använder [Semantic Versioning 2.0.0](https://semver.org/) (X.Y.Z, dvs. major/minor/patch); stabila API:er stöds och deprecation flaggas tidigt. Många projekt stannar i 0.x länge medan API:et stabiliseras — se [SemVer FAQ: När släpper man 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
- [ ] **SKA**: Release-taggar används. Varje släppt version taggas i versionskontrollen så att användare kan hitta och verifiera exakt kod.
- [ ] **SKA**: Projekthistorik och releasehistorik är strukturerade med [Conventional Commits](https://www.conventionalcommits.org/) och [Keep a Changelog](https://keepachangelog.com/). Uppgraderingsinstruktioner i ändringslogg eller utgåvenotiser gör det lätt för slutanvändare att uppgradera.
- [ ] **SKA**: Utgåvor signeras och har verifieringsinstruktioner enligt [Säkerhet](../sakerhet/).

## H. Kvalitet, upptäckbarhet och offentlig kod

- [ ] **SKA**: `publiccode.yml` tillämpas om lämpligt. Det är en standardiserad metadata-fil som indexeras av kataloger som [Joinup EU-katalogen](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue) och [offentligkod.se](https://offentligkod.se), så att projektet blir hittbart.
- [ ] **BÖR**: Projektet är bedömt för återanvändbarhet: [Standard for Public Code](https://standard.publiccode.net/) används som benchmark och projektet är konfigurerbart för olika sammanhang (ingen hårdkodad miljö-/organisationsspecifik information).
- [ ] **SKA**: Om projektet är avsett för drift i myndighetens egna interna miljöer ska det också kunna byggas och driftsättas där, enligt myndighetens interna utvecklarriktlinjer.
- [ ] **BÖR**: Projektets mål och roadmap är dokumenterade. Om projektet implementerar regelverk eller policy som kod, är källan till regeln/policyn buntad i kodförrådet så att kod och regelkälla kan jämföras.
