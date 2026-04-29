---
title: "Publicering av version 1.0.0"
description: "Checklista för tekniska och operativa krav inför en stabil 1.0-utgåva"
weight: 80
---

**Syfte:** Säkerställa att projekt uppfyller alla tekniska och operativa krav för en stabil 1.0-utgåva.

**Förutsättning:** Den här checklistan är en fortsättning och fördjupning av [Förberedelse inför publicering](../publicering-forvaltning/).
Grundkraven där SKA vara uppfyllda innan arbete med 1.0-utgåva påbörjas.

## A. Dokumentation

- [ ] **SKA**: `README.md` (projektets framsida) innehåller:
  - Badges (version, OpenSSF Scorecard, licens, REUSE-status)
  - Projektbeskrivning och mål
  - Installationsinstruktioner
  - Användningsexempel
  - sektion för underhållsansvariga (se [Förberedelse inför publicering](../publicering-forvaltning/))
  - Mognadsgrad (alpha/beta/stable)
- [ ] **SKA**: `LICENSE`. Licensfilen i kodförrådets rot, som anger på vilka villkor koden delas.
- [ ] **SKA**: `SECURITY.md`. Rapporteringsväg och kontakt för sårbarheter. Se [Säkerhet](../sakerhet/).
- [ ] **SKA**: `CONTRIBUTING.md`. Beskriver hur externa kan bidra (process, konventioner, tester).
- [ ] **SKA**: `CODE_OF_CONDUCT.md`. Sätter sociala spelregler för communityn.
- [ ] **SKA**: `CHANGELOG.md`. Mänskligt läsbar logg över ändringar mellan utgåvor (Keep-a-Changelog-format).
- [ ] **SKA**: `publiccode.yml`. Standardiserad metadatafil som gör projektet hittbart i kataloger för offentlig sektor.
- [ ] **SKA**: `docs/DEVELOPMENT.md`. Hur man sätter upp en utvecklingsmiljö och bygger projektet lokalt.
- [ ] **SKA**: Verifieringsinstruktioner för release-integritet. Hur användare kontrollerar signaturer och hashar för en nedladdad utgåva.
- [ ] **BÖR**: Exempel i dokumentation. Konkreta användningsfall utöver README-snabbstarten.

## B. Juridik och efterlevnad

- [ ] **SKA**: REUSE-efterlevnad (SPDX-headers i alla källfiler). Per-fil-märkning av licens och upphovsrätt. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: Licenskompatibilitet verifierad. Beroendens licenser är ömsesidigt kompatibla och tvingar inte projektets huvudlicens.
- [ ] **SKA**: Namn-/varumärkeskontroll utförd. Projektnamnet krockar inte med befintlig programvara eller varumärken.
- [ ] **SKA**: Inga SNAPSHOT-beroenden. Alla beroenden låsta till släppta versioner, inte pågående byggen.

## C. Kodkvalitet

- [ ] **SKA**: Testtäckning enligt projektets dokumenterade mål. Projektet har bestämt vilken nivå av automatiserad testtäckning som krävs och når den.
- [ ] **SKA**: Publika API:er har dokumentation. Varje publik funktion eller gränssnitt har dokumentation.
- [ ] **SKA**: Kodgranskning genomförd. Varje ändring har granskats av någon annan än författaren. Se [Arbete på kodsamverkansplattform](../plattform/).

## D. CI/CD och säkerhet

- [ ] **SKA**: CI-arbetsflöde för ändringsförfrågningar (PR/MR). Tester, linters och kontroller körs automatiskt på varje föreslagen ändring.
- [ ] **SKA**: Test-CI-arbetsflöde. Hela testsviten körs på incheckningar mot huvudgren och på taggade utgåvor.
- [ ] **SKA**: Release-CI-arbetsflöde. Tag-push triggar en pipeline som bygger, signerar och publicerar utgåvans artefakter.
- [ ] **SKA**: Branch protection. Release-grenen är skyddad mot direkt push och oövervakad merge. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Sårbarhetsskanning av beroenden (SCA). Upptäcker kända sårbarheter och licensproblem i tredjepartskomponenter. Se [Säkerhet](../sakerhet/).
- [ ] **SKA**: SAST i CI. Statisk analys av källkoden efter sårbarhetsmönster. Se [Säkerhet](../sakerhet/).
- [ ] **SKA**: Linter konfigurerad. Kodstil och vanliga fel kontrolleras automatiskt vid varje ändring.
- [ ] **SKA**: Secret scanning aktiverad. Kodförrådet skannas efter oavsiktligt incheckade hemligheter, tokens och nycklar.
- [ ] **SKA**: Utgåve-signering konfigurerad (Sigstore/cosign rekommenderas). Varje utgåva signeras kryptografiskt så att användare kan verifiera ursprunget. Se [Säkerhet](../sakerhet/).
- [ ] **SKA**: SBOM-generering (SPDX 2.3 eller CycloneDX 1.5) **levereras med varje utgåva**. En maskinläsbar lista över komponenter låter mottagare följa upp sårbarheter och licenser. Se [Säkerhet](../sakerhet/).
- [ ] **SKA**: CI-linter och kontroller kan köras lokalt utan CI. Utvecklare kan reproducera samma kontroller på sin egen maskin före push.
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

- [ ] **BÖR**: Ärendemallar konfigurerade. Standardiserade ärendeformulär leder rapportörer att lämna användbar information.
- [ ] **BÖR**: Mall för ändringsförfrågningar konfigurerad. PR-beskrivningar följer en konsekvent struktur (problem, lösning, testplan).

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
