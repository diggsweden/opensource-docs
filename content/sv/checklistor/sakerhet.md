---
title: "Säkerhet"
description: "Checklista för säkerhetsarbete specifikt för publicerad öppen programvara: beroenden, sårbarheter, leveranskedja"
weight: 60
---

**Syfte:** Stöd för säkerhetsarbete som är specifikt för publicerad öppen programvara.
Allmänna säkerhetskrav (informationsklassning, riskanalys, hotmodellering, säker systemutveckling) hanteras i interna riktlinjer.

För branch protection, 2FA och kodgranskning, se [Arbete på kodsamverkansplattform](../plattform/).

## A. Publiceringsbar kod och data

- [ ] **SKA**: Allmänna säkerhetskrav (informationsklassning, riskanalys, säker systemutveckling) följer interna riktlinjer för it-säkerhet och informationshantering.
- [ ] **SKA**: Ingen intern eller känslig information ligger i öppna kodförråd (personuppgifter, autentiseringsuppgifter, interna miljödetaljer, nycklar).
- [ ] **SKA**: Källkod och data är tydligt separerade. Konfigurationsparametrar och driftsättning specifika för myndighetens miljöer ligger utanför det publicerade kodförrådet.
- [ ] **SKA**: Testdata är syntetisk, anonymiserad eller maskerad.

## B. Beroenden och komponenter

SCA analyserar beroenden i CI.
De kompletterar varandra.

- [ ] **SKA**: Verktyg för beroendeanalys (SCA, Software Composition Analysis) används i CI för att upptäcka kända sårbarheter och licensinkompatibiliteter i tredjepartskomponenter. Exempel är Renovate och Dependabot som bevakar beroenden över tid och skapar uppdateringsförslag.
- [ ] **SKA**: Automatiserad beroendeövervakning och uppdateringsflöde finns. Vanliga verktyg är Renovate och Dependabot, som öppnar ändringsförfrågningar med uppgraderingar; kritiska sårbarheter hanteras snabbt enligt dokumenterad rutin.
- [ ] **SKA**: Tredjepartskomponenters licenser och säkerhetspraxis är kända och dokumenterade.
- [ ] **SKA**: Uppdaterade tredjepartskomponenter ska inte läggas till i projekten direkt utan ha en karatänperiod i normalfallet, en vecka är lämligt.
- [ ] **BÖR**: Hälsan hos varje nytt direkt beroende utvärderas innan det läggs till. Bedöm aktivitet, underhållsansvariga och säkerhetshistorik.
- [ ] **BÖR**: Pakethanterare med pinning (lockfiles) används där möjligt. Pinning låser exakta versioner så att samma bygge ger samma resultat.


## C. Kodkontroller och utvecklingsflöde

- [ ] **SKA**: Automatiska kodkontroller körs i CI: linters för programfel och tveksam utvecklingspraxis, SAST för sårbarhetsmönster och secret scanning för oavsiktligt incheckade hemligheter (lösenord, tokens, API-nycklar). Säkerhetsspecifika linters, t.ex. Bandit eller gosec, kan komplettera SAST/SCA.
- [ ] **SKA**: Kodgranskning, branch protection och behörigheter följer [Arbete på kodsamverkansplattform](../plattform/), inklusive principen om minsta möjliga åtkomst.
- [ ] **SKA**: Automatiserad testning används, inklusive tester för felaktiga indata (negativa fall).
- [ ] **BÖR**: Inkommande ändringsförfrågningar är läsbara och rimligt avgränsade; stora ogenomskinliga binärfiler minimeras så att granskning är meningsfull.
- [ ] **BÖR**: Projektets testmål och ambitioner är diskuterade och etablerade.
- [ ] **BÖR**: Om projektet exponerar publika gränssnitt täcker hotmodellering och attackytanalys enligt Riktlinje för it-säkerhet även det publicerade snittet.

## D. Sårbarhetshantering

- [ ] **SKA**: Projektet har en publicerad `SECURITY.md` med rapporteringsväg, kontaktadress och tidsfönster för bekräftelse och preliminär bedömning (rekommenderat: ≤ 5 arbetsdagar).
- [ ] **SKA**: En **privat** rapporteringskanal finns (t.ex. GitHub Private Vulnerability Reporting eller särskild mejl), så att rapportörer kan nå projektet utan att avslöja sårbarheten publikt.
- [ ] **SKA**: Ansvarig funktion eller person för sårbarhetshantering är utsedd.
- [ ] **SKA**: Identifiering, bedömning, åtgärd och eventuell kommunikation av sårbarheter dokumenteras spårbart.
- [ ] **SKA**: Rutiner finns för snabb hantering av allvarliga sårbarheter.

## E. Utgåvor och leveranskedja

- [ ] **SKA**: Releaser signeras (Sigstore/cosign rekommenderas; GPG accepteras) och har publika instruktioner för verifiering av integritet och äkthet.
- [ ] **SKA**: SBOM (Software Bill of Materials, i SPDX 2.3- eller CycloneDX 1.5-format) genereras i CI och **levereras med varje utgåva**. Det gör att slutanvändare kan verifiera komponenter, sårbarheter och licenser.
- [ ] **SKA**: CI hämtar beroenden över krypterade kanaler (HTTPS/TLS) och release-pipelinens externa tjänster nås krypterat.
- [ ] **SKA**: Genererade artefakter (build-output, kompilerade binärer) versionshanteras inte i `git`; `.gitignore` täcker språkets/byggsystemets default-output.
- [ ] **SKA**: Publiceringsrättigheter för artefakter är begränsade till behöriga konton/roller. Paket publiceras under organisationens funktionskonto, inte under en enskild medarbetares personliga konto eller e-post. Det undviker personberoenden och gör paketet förvaltningsbart över tid.
- [ ] **BÖR**: OpenSSF Scorecard används för att bedöma och förbättra projektets säkerhetshälsa. Scorecard ger en automatisk poängsättning av säkerhetspraxis. Se [OpenSSF Scorecard-rapporten](../../rapporter/openssf-scorecard/).
- [ ] **BÖR**: Projektet siktar på en SLSA-nivå (Supply-chain Levels for Software Artifacts) relevant för risken, minst Build L2.

## F. Ramverk för öppen programvara

- [ ] **SKA**: Projektet har tagit del av relevanta rekommendationer för öppen programvara från [OpenSSF](https://openssf.org/).
- [ ] **BÖR**: [OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software) är genomgången och projektet ligger i linje med [ISO/IEC 18974](https://www.iso.org/standard/86529.html) (OpenChain Security Assurance) där det är rimligt.
