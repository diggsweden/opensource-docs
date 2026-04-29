---
title: "Arbete på kodsamverkansplattform"
description: "Checklista för branch protection, behörigheter, 2FA och grundkrav på kodförråd"
weight: 50
---

**Syfte:** Praktiskt stöd för hur organisationen använder kodsamverkansplattformar (GitHub, GitLab, Codeberg/Forgejo), antingen självdriftade eller som SaaS. *Definition från Digg-riktlinje §Definitioner.*

## A. Skapande av kodförråd

- [ ] **SKA**: Kodförrådet är skapat under rätt organisation/"org".
- [ ] **SKA**: Namnet följer överenskommen namngivningsprincip.
- [ ] **SKA**: Synlighet (publik/privat) är satt enligt informationsklassning och beslut.
- [ ] **SKA**: Standardfiler (LICENSE, README, .gitignore) är på plats, gärna från [open-source-project-template](https://github.com/diggsweden/open-source-project-template). `.gitignore` täcker språkets/byggsystemets default-output så att genererade artefakter inte versionshanteras.
- [ ] **BÖR**: `CODEOWNERS`-fil används som komplement till README:s sektion för underhållsansvariga. Den pekar ut ansvariga per filområde och gör att rätt person automatiskt får granskningsförfrågan. Se [Förberedelse inför publicering](../publicering-forvaltning/).

## B. Behörigheter och åtkomst

- [ ] **SKA**: Tvåfaktorsautentisering (2FA/MFA) krävs för alla med rättigheter att ändra kodförrådets inställningar.
- [ ] **SKA**: Behörigheter följer principen om minsta möjliga åtkomst (least privilege). Alla får bara de rättigheter de faktiskt behöver.
- [ ] **SKA**: Merge- och push-rättigheter till release-grenar är begränsade till behörig krets.
- [ ] **SKA**: Plattformens roller (admin, maintainer, write, read) används konsekvent.
- [ ] **SKA**: Externa samarbetspartners har endast nödvändig åtkomst, tidsbegränsad där det är tillämpligt.
- [ ] **SKA**: Periodisk översyn av behörigheter genomförs (rekommenderat: minst halvårsvis), så att rättigheter följer faktisk tillhörighet och inte historisk.

## C. Grenstrategi, kodgranskning och ändringsflöde

- [ ] **SKA**: Branch protection är aktiverad på release-grenar (`main`/`master`/`release/*`). Det skyddar mot oavsiktlig direkt push och oövervakad merge.
- [ ] **SKA**: Direkt push till release-gren är förhindrad; ändringar går via ändringsförfrågningar (PR/MR).
- [ ] **SKA**: Kodgranskning krävs: minst en granskare utöver författaren innan merge.
- [ ] **SKA**: Automatiserade statuskontroller (tester, linters, säkerhetsskanning) måste passera innan merge, eller ha ett dokumenterat manuellt godkännande.
- [ ] **SKA**: CI är kopplad till ändringsförfrågningar, så att tester körs på den föreslagna ändringen och inte bara på huvudgrenen.
- [ ] **BÖR**: Grenstrategi (trunk-based eller GitHub-flow) är vald och dokumenterad i `CONTRIBUTING.md`.
- [ ] **BÖR**: För GitHub: risken med `pull_request_target` i workflows är förstådd och Actions-rättigheter är granskade (`permissions:`). Felaktig användning kan ge hemligheter till opålitlig kod från ändringsförfrågningar.

## D. Signering och spårbarhet

- [ ] **SKA**: Release-taggar och release-artefakter signeras (Sigstore/cosign rekommenderas; GPG accepteras), så att användare kan verifiera att utgåvan kommer från projektet.
- [ ] **SKA**: Bidragsgivare checkar in med en e-postadress som tillhör deras organisation (eller annan verifierad identitet), så att bidragen kan spåras till rätt aktör.
- [ ] **SKA**: Utveckling sker så att spårbarhet bevaras (vem gjorde vad, när).
- [ ] **SKA**: Eventuella undantag från processen dokumenteras och motiveras.
- [ ] **BÖR**: Signerade incheckningar används där risknivån motiverar det. Varje incheckning kan då knytas kryptografiskt till sin författare.

## E. Plattformsbyten

- [ ] **SKA**: Vid byte av Git-leverantör finns plan för migrering av kodförråd (ärenden, ändringsförfrågnings-historik, taggar).
- [ ] **SKA**: Länkar i andra system (intranät, webb, dataportal) uppdateras.
- [ ] **SKA**: OSPO/IT och relevanta funktioner är involverade i planeringen.

## F. Arkivering av projekt

- [ ] **SKA**: Plattformens arkiveringsfunktion används (gör kodförrådet skrivskyddat). Koden förblir åtkomlig men ingen kan av misstag bidra.
- [ ] **SKA**: README anger att projektet inte längre underhålls.
- [ ] **SKA**: Projekt utan underhållsansvariga arkiveras.
