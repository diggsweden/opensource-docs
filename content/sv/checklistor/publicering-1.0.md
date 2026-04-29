---
title: "Publicering av version 1.0.0"
description: "Slutkontroll för dokumentation, CI, säkerhet och releasekrav inför en stabil 1.0-utgåva"
weight: 80
---

**Syfte:** Säkerställa att projektet är redo att kalla nästa stabila utgåva för 1.0.0.

**Innan du börjar:** Gå först igenom [Förberedelse inför publicering](../publicering-forvaltning/).
Den checklistan täcker grundkraven för att ett projekt ska kunna publiceras och förvaltas öppet: beslut, ansvar, licens, grunddokumentation, publik ärendehantering, REUSE, `publiccode.yml` och grundläggande releasepraxis.

**Snabbaste vägen:** För nya projekt, eller interna projekt som ska öppnas upp, använd gärna [Mallprojekt för öppen programvara](../../projektmall/) som startpunkt.
Mallen hjälper med standardfiler, REUSE-stöd, `publiccode.yml`, ärende-/PR-mallar och grundläggande CI-struktur.
Mallen ersätter inte checklistorna; kontrollera alltid att innehåll, kontaktvägar och workflows är anpassade för det faktiska projektet.

Den här checklistan fokuserar på det som tillkommer inför en stabil 1.0.0-utgåva.

## A. Dokumentation och mallanpassning

- [ ] **SKA**: Grundkraven i [Förberedelse inför publicering](../publicering-forvaltning/) är uppfyllda.
- [ ] **SKA**: Standardfiler och metadata är på plats och anpassade för projektet, inte bara kopierade från mall. Det gäller till exempel `README.md`, `LICENSE`, `SECURITY.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `CHANGELOG.md` och `publiccode.yml`.
- [ ] **SKA**: Om [Mallprojekt för öppen programvara](../../projektmall/) har använts är platshållare ersatta, irrelevanta avsnitt borttagna och workflows anpassade till projektets språk, byggsystem och publiceringsflöde.
- [ ] **SKA**: `README.md` visar att projektet är redo för stabil användning: beskrivning och mål, installationsinstruktioner, användningsexempel, underhållsansvariga, mognadsgrad och relevanta badges.
- [ ] **SKA**: Utvecklardokumentationen är aktuell. Det ska gå att sätta upp utvecklingsmiljö, bygga projektet och köra samma grundkontroller lokalt som i CI.
- [ ] **SKA**: Verifieringsinstruktioner för release-integritet är publicerade. Användare ska kunna kontrollera signaturer, hashar och andra intyg för en nedladdad utgåva.
- [ ] **BÖR**: Dokumentationen innehåller konkreta exempel eller scenarier utöver README-snabbstarten.

## B. Juridik och efterlevnad

- [ ] **SKA**: REUSE-efterlevnad är verifierad (SPDX-headers i alla källfiler). Per-fil-märkning av licens och upphovsrätt är på plats. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Tydliga copyright-angivelser (årtal, organisation, ev. medförfattare).
- [ ] **SKA**: `NOTICE`-fil finns där det krävs (t.ex. för Apache 2.0 med tredjepartsattribution).
- [ ] **SKA**: Licenskompatibilitet verifierad. Beroendens licenser är ömsesidigt kompatibla och tvingar inte projektets huvudlicens. Verktyg: [Joinup Licence Compatibility Checker](https://joinup.ec.europa.eu/collection/eupl/solution/joinup-licensing-assistant).
- [ ] **SKA**: Namn-/varumärkeskontroll utförd. Projektnamnet krockar inte med befintlig programvara eller varumärken.
- [ ] **SKA**: Inga SNAPSHOT-beroenden. Alla beroenden låsta till släppta versioner, inte pågående byggen.

## C. Kodkvalitet

- [ ] **SKA**: Testtäckning enligt projektets dokumenterade mål. Projektet har bestämt vilken nivå av automatiserad testtäckning som krävs och når den.
- [ ] **SKA**: Publika API:er har dokumentation. Varje publik funktion eller gränssnitt har dokumentation.
- [ ] **SKA**: Kodgranskning genomförd. Varje ändring har granskats av någon annan än författaren. Se [Arbete på kodsamverkansplattform](../plattform/).

## D. CI/CD och säkerhet

- [ ] **SKA**: CI för ändringsförfrågningar, huvudgren och taggade utgåvor kör relevanta tester, linters och kvalitetskontroller automatiskt.
- [ ] **SKA**: Release-CI är verifierad. En tagg-push triggar ett flöde som bygger, signerar och publicerar utgåvans artefakter.
- [ ] **SKA**: Branch protection och obligatoriska statuskontroller skyddar huvud- och release-grenar mot direkt push och oövervakad merge. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Säkerhetskontrollerna i [Säkerhet](../sakerhet/) är konfigurerade för projektet: sårbarhetsskanning av beroenden (SCA), SAST, secret scanning, release-signering och SBOM.
- [ ] **SKA**: SBOM (SPDX 2.3 eller CycloneDX 1.5) **levereras med varje utgåva**. En maskinläsbar lista över komponenter låter mottagare följa upp sårbarheter och licenser.
- [ ] **SKA**: CI-linters och grundkontroller kan köras lokalt utan CI. Utvecklare kan reproducera samma kontroller på sin egen maskin före push.
- [ ] **BÖR**: Ändringsloggflöde i CI. Automatisk generering ur Conventional Commits håller ändringsloggen synkad med koden.
- [ ] **BÖR**: Säkerhetsgranskning genomförd och dokumenterad. En intern eller extern granskning av kodbasen ur säkerhetsperspektiv.
- [ ] **BÖR**: OpenSSF Scorecard-integration. Scorecard körs i CI och resultatet publiceras som badge för transparens.
- [ ] **BÖR**: SLSA Build Level ≥ 2. Byggprocessen producerar signerad provenance som intygar hur artefakten byggdes.
- [ ] **BÖR**: Signerade incheckningar. Varje incheckning signeras kryptografiskt av sin författare.

## E. Versionshantering och releasekrav

- [ ] **SKA**: API stabilt (eller implementerar stabil specifikation). Publika gränssnitt ändras inte på inkompatibla sätt utan en major-bump.
- [ ] **SKA**: Inga planerade brytande ändringar. Kända kompatibilitetsbrytande ändringar köas till en framtida major-utgåva, inte den här.
- [ ] **SKA**: Version följer Semantic Versioning 2.0.0. Versionsnumret kommunicerar typen av ändring (major/minor/patch).
- [ ] **SKA**: Conventional Commits-format används. Strukturerade incheckningsmeddelanden möjliggör automatisk ändringslogg och versions-bumpar. (Samma som [Förberedelse inför publicering](../publicering-forvaltning/).)
- [ ] **SKA**: Stödfönster publicerat ("säkerhetsuppdateringar fram till …"). Användare vet hur länge utgåvelinjen får säkerhetsuppdateringar.

## F. Utvecklingspraxis

- [ ] **BÖR**: Ärendemallar är konfigurerade och anpassade för projektet. Standardiserade ärendeformulär leder rapportörer att lämna användbar information.
- [ ] **BÖR**: Mall för ändringsförfrågningar är konfigurerad och anpassad för projektet. PR-beskrivningar följer en konsekvent struktur (problem, lösning, testplan).

## G. Stack-specifika krav (om tillämpligt)

Det här är byggsystem-fält och plugins som release-verktyg förväntar sig finna konfigurerade. Där det är tillämpligt för din stack SKA punkterna vara på plats.

### Java-bibliotek (Maven/POM)

- [ ] `groupId`, `artifactId`, `version` (semantisk versionering)
- [ ] `name`, `description`, `url`
- [ ] `licenses`-block
- [ ] `scm`-block
- [ ] `maven-enforcer-plugin` konfigurerad
- [ ] `central-release`-profil med:
  - `maven-gpg-plugin`
  - `maven-source-plugin`
  - `maven-javadoc-plugin`
- [ ] `central-publishing-maven-plugin` konfigurerad

### Java-applikation (Maven/POM)

- [ ] `groupId`, `artifactId`, `version` (semantisk versionering)
- [ ] `name`, `description`, `url`
- [ ] `licenses`-block
- [ ] `scm`-block
- [ ] `maven-enforcer-plugin` konfigurerad

### JS/TS-bibliotek (package.json)

- [ ] `name`, `version` (semantisk versionering)
- [ ] `description`
- [ ] `license`
- [ ] `repository`-block

## Kriterier

**Redo för 1.0.0 när:**
- Alla tillämpliga SKA-punkter är avklarade
- Inga SNAPSHOT-beroenden
- Tester passerar med dokumenterad täckning
- API är stabilt (inga brytande ändringar planerade)

**Stanna i 0.x när:**
- Implementerar utkastspecifikationer
- API utvecklas fortfarande baserat på återkoppling
- Brytande ändringar förväntas

Många projekt stannar i 0.x länge, och det är helt OK — se [SemVer FAQ: När släpper man 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
