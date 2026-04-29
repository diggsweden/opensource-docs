---
title: "Förberedelse inför publicering"
description: "Checklista för förberedelse inför publicering: underhållsansvariga, versionshantering och grundkrav"
weight: 70
---

**Syfte:** Säkerställa att öppna projekt är trygga att publicera, begripliga att använda och tydliga för omvärlden.

**Nästa steg:** När grundkraven är uppfyllda och projektet närmar sig en stabil utgåva, se [Publicering av version 1.0.0](../publicering-1.0/).

## A. Beslut, ansvar och underhållsansvariga

Digg-riktlinjens ansvarsmodell:

| Roll | Ansvar |
|---|---|
| Avdelnings-/verksamhetsansvarig chef (informationsägare) | Övergripande efterlevnad inom verksamheten |
| Systemägare / verksamhetsansvarig enhetschef | Programvaran hanteras enligt riktlinjen; risker, licenser, beroenden, säkerhet följs upp |
| Operativt team | Dagligt arbete med kod, beroenden, ärenden, externa bidrag, dokumentation |

- [ ] **SKA**: Beslut om publicering är fattat av behörig chef/systemägare (informationsägare).
- [ ] **SKA**: Operativt team är identifierat och informerat. Om projektet berör flera informationsägare är ansvarsfördelningen tydliggjord.
- [ ] **SKA**: Koppling till diariefört ärende (projektnummer, diarienummer) är dokumenterad, så att projektet kan spåras tillbaka till sitt myndighetsbeslut. Se [Diarieföring och arkivering](../diarie-arkiv/).
- [ ] **SKA**: README innehåller en sektion för underhållsansvariga som anger team, individ eller roll, så att omvärlden vet vem som driver projektet.
- [ ] **SKA**: Programvaran är publikt tillgänglig på Internet **redan under utveckling** (källkod, dokumentation, byggskript). Öppen utveckling är default, inte färdig leverans.
- [ ] **SKA**: Ärendehanteraren är publik och påslagen så länge tjänsten är aktivt utvecklad. Se [Hantering av ärenden, frågor och externa bidrag](../arenden-community/).
- [ ] **SKA**: Bidragsgivare intygar rätten att bidra, antingen via DCO (Developer Certificate of Origin: signerade incheckningar med `Signed-off-by:`) eller via CLA (Contributor License Agreement). Det säkerställer att vi har rätt att ta in koden. Se [Bidrag uppströms](../bidrag-uppstrom/) för bidragsgivar-perspektivet.
- [ ] **BÖR**: `CODEOWNERS`-fil används för att peka ut ansvariga per filområde. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **BÖR**: Operativa team har grundläggande kunskap om etablerade arbetssätt, säker utveckling och licenshantering.

## B. Säkerhetskontroller för öppen programvara inför publicering

Allmänna säkerhetskrav (informationsklassning, riskanalys, säker systemutveckling) följer Diggs Riktlinje för it-säkerhet och Riktlinje för säker informationshantering.
Punkterna nedan är de kontroller som är specifika för öppen programvara och krävs *innan* källkoden går publik.

- [ ] **SKA**: Koden är granskad så att inga känsliga uppgifter finns kvar (lösenord, API-nycklar, tokens, interna adresser, dokumentlänkar). **Notera:** rensning av historik är svår; granska tidigt.
- [ ] **SKA**: Loggar, testdata och konfigurationsfiler med känslig information är borttagna eller maskerade.
- [ ] **SKA**: Det är tydligt vad som ska ligga öppet och vad som ska vara internt; informationsklassningen är klar (utförd enligt Riktlinje för säker informationshantering).
- [ ] **SKA**: Kodgranskning är gjord. Se [Arbete på kodsamverkansplattform](../plattform/).

För djupare säkerhetskrav för öppen programvara, se [Säkerhet](../sakerhet/).

## C. Licens och rättigheter

- [ ] **SKA**: Licens är vald enligt Diggs riktlinjer och är OSI-godkänd. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: `LICENSE`-fil finns i projektet.
- [ ] **SKA**: Projektet följer [REUSE-specifikationen](https://reuse.software/) (per-fils licens- och copyright-märkning). Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Licenser för beroenden är kontrollerade och dokumenterade.
- [ ] **SKA**: Avstegsbeslut (om proprietär lösning väljs) är godkända av IT-chef och dokumenterade.

## D. Dokumentation och projekthälsa

Enligt Digg-riktlinjens §*Dokumentation, rutiner och projekthälsa* ska projekten ge en överskådlig bild av vad lösningen gör, hur den används, vilka förutsättningar som gäller och under vilka licensvillkor den tillhandahålls.

- [ ] **SKA**: Titel och beskrivning (vad, för vem, i vilken miljö).
- [ ] **SKA**: `LICENSE`: val av licens som omfattar källkod, dokumentation och övriga delar.
- [ ] **SKA**: Instruktioner för att installera och köra programvaran.
- [ ] **SKA**: Instruktioner för att sätta upp en utvecklingsmiljö och kompilera.
- [ ] **SKA**: Instruktioner för hur externa kan bidra (`CONTRIBUTING.md`).
- [ ] **SKA**: Tillkännagivande av aktörer som bidragit. En lista (t.ex. AUTHORS-fil eller bidragsgivar-sektion) tillskriver personer och organisationer vars arbete ingår i projektet.
- [ ] **SKA**: Uppförandekod (`CODE_OF_CONDUCT.md`), t.ex. Contributor Covenant. Sätter sociala spelregler för communityn.
- [ ] **SKA**: Kontaktväg för frågor och felrapporter (ärenden, mejl, community).
- [ ] **SKA**: Användningsdokumentation och arkitekturbeskrivning relevant för projektet.
- [ ] **SKA**: Designdokumentation som visar systemets aktörer, aktioner och **externa gränssnitt**, så att andra myndigheter kan bedöma återanvändbarhet utan att läsa hela kodbasen.
- [ ] **BÖR**: Dokumentation är skriven i klarspråk och anpassad till bredare målgrupp.

## E. Status, förvaltning och stödfönster

- [ ] **SKA**: Det är tydligt om projektet är aktivt förvaltat eller arkiverat/avslutat.
- [ ] **SKA**: Mognadsgrad är deklarerad (alpha/beta/stable/deprecated).
- [ ] **SKA**: Plan finns för hur inkommande ärenden och ändringsförfrågningar ska hanteras. Se [Hantering av ärenden, frågor och externa bidrag](../arenden-community/).
- [ ] **SKA**: Övergripande strategi för beroendeuppdateringar är beskriven.
- [ ] **SKA**: Releaseplan med strategier för kommunikation och spridning finns.
- [ ] **SKA**: Någon är utsedd som ansvarig för säkerhetsärenden. Se [Säkerhet](../sakerhet/).
- [ ] **BÖR**: Stödfönster ("säkerhetsuppdateringar fram till YYYY-MM-DD") är publicerat, så att användare vet hur länge de kan räkna med uppdateringar.

## F. Publicering

- [ ] **SKA**: Projektnamnet är kontrollerat mot befintliga projekt och varumärken.
- [ ] **SKA**: Sökmotorkontroll är gjord för att säkerställa att namnet inte krockar.
- [ ] **SKA**: Projektet ligger i rätt organisation/yta hos Git-leverantör.
- [ ] **SKA**: Synlighet (publik) är korrekt satt enligt informationsklassning.
- [ ] **SKA**: Eventuell extern kommunikation (webb, dataportal, community) är planerad.

## G. Versionshantering och utgåvor

- [ ] **SKA**: Projektet använder [Semantic Versioning 2.0.0](https://semver.org/) (X.Y.Z, dvs. major/minor/patch); stabila API:er stöds och deprecation flaggas tidigt. Många projekt stannar i 0.x länge medan API:et stabiliseras — se [SemVer FAQ: När släpper man 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
- [ ] **SKA**: Release-taggar används. Varje släppt version taggas i versionskontrollen så att användare kan hitta och verifiera exakt kod.
- [ ] **SKA**: [Conventional Commits](https://www.conventionalcommits.org/)-format används för strukturerad projekthistorik. Det möjliggör automatiskt genererade changelogs och versions-bumpar.
- [ ] **SKA**: [Keep a Changelog](https://keepachangelog.com/)-format används för tydlig releasehistorik.
- [ ] **SKA**: Det är lätt för slutanvändare att uppgradera till nya utgåvor (tydliga uppgraderingsinstruktioner i ändringsloggen/utgåvenotiserna).
- [ ] **SKA**: Utgåvor signeras och har verifieringsinstruktioner. Se [Säkerhet](../sakerhet/).

## H. Kvalitet, upptäckbarhet och offentlig kod

- [ ] **SKA**: `publiccode.yml` finns i rotmappen. Det är en standardiserad metadata-fil som indexeras av kataloger som [Joinup EU-katalogen](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue) och [offentligkod.se](https://offentligkod.se), så att projektet blir hittbart.
- [ ] **BÖR**: Vid långsiktig egen avgrening av ett externt projekt registreras avgreningen på [offentligkod.se](https://offentligkod.se) eller i [Joinup](https://joinup.ec.europa.eu/), så att andra myndigheter kan hitta och återanvända den.
- [ ] **BÖR**: Standard for Public Code används som benchmark för kvalitet och hållbarhet (internationell standard för offentlig kod).
- [ ] **BÖR**: Projektet är konfigurerbart för olika sammanhang (ingen hårdkodad miljö-/organisationsspecifik information), så att andra myndigheter kan återanvända det.
- [ ] **SKA**: Om projektet är avsett för drift i myndighetens egna miljöer ska det också kunna byggas och driftsättas där, enligt myndighetens interna utvecklarriktlinjer.
- [ ] **BÖR**: Projektets mål och roadmap är dokumenterade.
- [ ] **BÖR**: Om projektet implementerar regelverk eller policy som kod, är källan till regeln/policyn buntad i kodförrådet, så att kod och regelkälla kan jämföras.
