---
title: "Säkerhet"
description: "Checklista för säkerhetsarbete specifikt för öppen programvara: beroenden, sårbarheter, leveranskedja"
weight: 60
---

**Syfte:** Stöd för säkerhetsarbete som är specifikt för öppen programvara.
Allmänna säkerhetskrav (informationsklassning, riskanalys, hotmodellering, säker systemutveckling) hanteras i:

- **Riktlinje för it-säkerhet** (Digg, intern)
- **Riktlinje för säker informationshantering** (Digg, intern)

Den här checklistan kompletterar dessa med krav som är specifika för publicerad öppen programvara: SECURITY-policy, sårbarhetsrapportering, SBOM-leverans, beroendeanalys, signering och release-verifiering.

För branch protection, 2FA och kodgranskning, se [Arbete på kodsamverkansplattform](../plattform/).

## A. Förutsättningar för publicering

- [ ] **SKA**: Allmänna säkerhetskrav (informationsklassning, riskanalys, säker systemutveckling) följer Diggs Riktlinje för it-säkerhet och Riktlinje för säker informationshantering.
- [ ] **SKA**: Källkoden är granskad utifrån informationsklassningen och bedömd som lämplig för publicering.

## B. Beroenden och komponenter

- [ ] **SKA**: Verktyg för beroendeanalys (SCA, Software Composition Analysis) används i CI för att upptäcka sårbarheter och licensinkompatibiliteter i tredjepartskomponenter.
- [ ] **SKA**: Rutin finns för att uppdatera beroenden snabbt vid kritiska sårbarheter.
- [ ] **SKA**: Automatiserad övervakning bevakar kritiska sårbarheter i beroenden. Vanliga verktyg är Renovate och Dependabot, som öppnar ändringsförfrågningar med uppgraderingar.
- [ ] **SKA**: Tredjepartskomponenters licenser och säkerhetspraxis är kända och dokumenterade.
- [ ] **BÖR**: Hälsan hos varje nytt direkt beroende utvärderas innan det läggs till. Bedöm aktivitet, underhållsansvariga och säkerhetshistorik.
- [ ] **BÖR**: Pakethanterare med pinning (lockfiles) används där möjligt. Pinning låser exakta versioner så att samma bygge ger samma resultat.

## C. Kodkvalitet och utvecklingsflöde

- [ ] **SKA**: Linter-verktyg används i CI för att upptäcka programfel och tveksam utvecklingspraxis. Säkerhetsspecifika linters (Bandit, gosec etc.) komplementerar SAST/SCA.
- [ ] **SKA**: Statisk kodanalys (SAST, Static Application Security Testing) körs i CI för att upptäcka potentiella sårbarheter i koden.
- [ ] **SKA**: Verktyg för secret scanning körs för att upptäcka oavsiktligt incheckade hemligheter (lösenord, tokens, API-nycklar).
- [ ] **SKA**: Kodgranskning krävs innan merge. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Branch protection (skydd mot direkt push till release-grenen) är aktiverad. Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Behörigheter följer principen om minsta möjliga åtkomst (least privilege). Se [Arbete på kodsamverkansplattform](../plattform/).
- [ ] **SKA**: Automatiserad testning används, inklusive tester för felaktiga indata (negativa fall).
- [ ] **BÖR**: Inkommande ändringsförfrågningar är läsbara och rimligt avgränsade; stora ogenomskinliga binärfiler minimeras så att granskning är meningsfull.
- [ ] **BÖR**: Projektets testmål och ambitioner är diskuterade och etablerade.

## D. Sårbarhetshantering

- [ ] **SKA**: Projektet har en publicerad `SECURITY.md` med rapporteringsväg och kontaktadress.
- [ ] **SKA**: En **privat** rapporteringskanal finns (t.ex. GitHub Private Vulnerability Reporting eller särskild mejl). Det gör att rapportörer kan nå projektet utan att avslöja sårbarheten publikt.
- [ ] **SKA**: `SECURITY.md` anger ett tidsfönster för bekräftelse och preliminär bedömning (rekommenderat: ≤ 5 arbetsdagar).
- [ ] **SKA**: Ansvarig funktion eller person för sårbarhetshantering är utsedd.
- [ ] **SKA**: Identifiering, bedömning och åtgärd av sårbarheter dokumenteras spårbart.
- [ ] **SKA**: Rutiner finns för snabb hantering av allvarliga sårbarheter.
- [ ] **SKA**: SBOM (Software Bill of Materials, i SPDX 2.3- eller CycloneDX 1.5-format) genereras i CI och **levereras med varje utgåva**. Det gör att slutanvändare kan verifiera komponenter, sårbarheter och licenser.
- [ ] **BÖR**: Om projektet exponerar publika gränssnitt: hotmodellering och attackytanalys (utförd enligt Riktlinje för it-säkerhet) täcker även det publicerade snittet.

## E. Data och konfiguration i publicerad kod

Krav som är specifika för öppen programvara.
Generell informationshantering följer Riktlinje för säker informationshantering.

- [ ] **SKA**: Ingen intern eller känslig information ligger i öppna kodförråd (personuppgifter, autentiseringsuppgifter, interna miljödetaljer, nycklar).
- [ ] **SKA**: Källkod och data är tydligt separerade. Konfigurationsparametrar och driftsättning specifika för myndighetens miljöer ligger utanför det publicerade kodförrådet.
- [ ] **SKA**: Testdata är syntetisk, anonymiserad eller maskerad.

## F. Utgåvor och leveranskedja

- [ ] **SKA**: Releaser signeras (Sigstore/cosign rekommenderas; GPG accepteras). Det gör att användare kan verifiera att utgåvan kommer från projektet och inte är manipulerad.
- [ ] **SKA**: Releaser har publika instruktioner för verifiering av integritet och äkthet, så att användare faktiskt vet hur de ska verifiera.
- [ ] **SKA**: CI hämtar beroenden över krypterade kanaler (HTTPS/TLS) och release-pipelinens externa tjänster nås krypterat.
- [ ] **SKA**: Genererade artefakter (build-output, kompilerade binärer) versionshanteras inte i `git`; `.gitignore` täcker språkets/byggsystemets default-output.
- [ ] **SKA**: Publiceringsrättigheter för artefakter är begränsade. Bara behöriga konton/roller kan publicera till externa paketarkiv.
- [ ] **SKA**: Paket publiceras under organisationens funktionskonto (e-post kopplad till funktionsbrevlåda eller motsvarande), inte under en enskild medarbetares personliga konto eller e-post. Det undviker personberoenden och gör paketet förvaltningsbart över tid.
- [ ] **BÖR**: OpenSSF Scorecard används för att bedöma och förbättra projektets säkerhetshälsa. Scorecard ger en automatisk poängsättning av säkerhetspraxis.
- [ ] **BÖR**: Projektet siktar på en SLSA-nivå (Supply-chain Levels for Software Artifacts) relevant för risken, minst Build L2.

## G. Ramverk för öppen programvara

- [ ] **SKA**: Projektet har tagit del av relevanta rekommendationer för öppen programvara från [OpenSSF](https://openssf.org/).
- [ ] **BÖR**: [OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software) är genomgången.
- [ ] **BÖR**: Projektet ligger i linje med [ISO/IEC 18974](https://www.iso.org/standard/86529.html) (OpenChain Security Assurance) där det är rimligt.
