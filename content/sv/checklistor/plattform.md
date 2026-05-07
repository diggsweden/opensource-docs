---
title: "Arbete på kodsamverkansplattform"
description: "Checklista för branch protection, behörigheter, 2FA och grundkrav på kodförråd"
weight: 50
---

**Syfte:** Praktiskt stöd för hur organisationen använder kodsamverkansplattformar (GitHub, GitLab, Codeberg/Forgejo), antingen självdriftade eller som SaaS.

## A. Skapande av kodförråd


- [ ] **SKA**: Namnet följer överenskommen namngivningsprincip 
    - kebab-case
    - om projekt har flera kodförråd kan det behövas prefixas med projekt, exempel <projekt-namn>. 
- [ ] **SKA**: Synlighet (publik/privat) är satt enligt informationsklassning och beslut. Privat ska endast förekomma under begränsad tid, då plattformen hanterar öppna och inte känsliga projekt.
- [ ] **SKA**: Standardfiler för öppen programvara (LICENSE, README, .gitignore med mera) är på plats, se [open-source-project-template](https://github.com/diggsweden/open-source-project-template) för mer information.
- [ ] **SKA**: Dokumentationswebb som publiceras via GitHub Pages eller motsvarande har ett tydligt Pages-/dokumentationskodförråd när webbplatsen har egen livscykel eller samlar dokumentation från flera kodförråd.
- [ ] **SKA**: DNS-namn för Diggs dokumentationswebbar följer mönstret `docs.<namn>.digg.se`.
- [ ] **SKA**: Den inbyggda Jekyll-byggaren i GitHub Pages används inte som standard. Bygg webbplatsen explicit i CI med Hugo eller motsvarande statisk generator och publicera de genererade filerna till Pages.
- [ ] **BÖR**: `CODEOWNERS`-fil används som komplement till README:s sektion för underhållsansvariga. Den pekar ut ansvariga per filområde och gör att rätt person automatiskt får granskningsförfrågan. Se [Förberedelse inför publicering](../publicering-forvaltning/).

## B. Behörigheter och åtkomst

- [ ] **SKA**: Tvåfaktorsautentisering (2FA/MFA) krävs för alla med rättigheter att ändra kodförrådets inställningar.
- [ ] **SKA**: Behörigheter följer principen om minsta möjliga åtkomst. Alla får bara de rättigheter de faktiskt behöver.
- [ ] **SKA**: Sammanfogning(merge)- och rättigheterna att skicka (push) till huvudgrenar är begränsa till behörig krets.
- [ ] **SKA**: Plattformens roller används konsekvent. Exempel: https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/permissions-of-predefined-organization-roles
- [ ] **SKA**: Behörighet är tidsbegränsad där det är tillämpligt.
- [ ] **SKA**: Periodisk översyn av behörigheter genomförs så att rättigheter följer faktisk tillhörighet och inte historiska.

## C. Grenstrategi, kodgranskning och ändringsflöde

- [ ] **SKA**: Grenskydd (Branch protection) är aktiverad på viktiga grenar som exempelvis (`main`/`master`/`release/*`).
- [ ] **SKA**: Alla skrivningar till huvudgrenarna går via ändringsförfrågningar (PR/MR).
- [ ] **SKA**: Kodgranskning: minst en granskare utöver författaren innan sammanfogning av ändringsförfrågan.
- [ ] **SKA**: Automatiserade statuskontroller (tester, linters, säkerhetsskanning) måste passeras innan sammanfogning till huvudgren.
- [ ] **SKA**: CI är kopplad till ändringsförfrågningar, så att kontroller och tester körs på den föreslagna ändringen.
- [ ] **BÖR**: Grenstrategi för projektet är dokumenterad i `CONTRIBUTING.md`. https://martinfowler.com/articles/branching-patterns.html
- [ ] **BÖR**: För GitHub: risken med `pull_request_target` i workflows är förstådd och Actions-rättigheter är granskade (`permissions:`). Felaktig användning kan ge hemligheter till opålitlig kod från ändringsförfrågningar.

## D. Signering och spårbarhet

- [ ] **SKA**: Release-taggar och release-artefakter signeras (Sigstore/cosign rekommenderas; GPG accepteras), så att användare kan verifiera att utgåvan kommer från projektet.
- [ ] **SKA**: Bidragsgivare checkar in med en e-postadress som tillhör deras organisation (eller annan verifierad identitet), så att bidragen kan spåras till rätt aktör.
- [ ] **SKA**: Utveckling sker så att spårbarhet bevaras (vem gjorde vad, när).
- [ ] **SKA**: Eventuella undantag från processen dokumenteras och motiveras.
- [ ] **BÖR**: Signerade incheckningar används där risknivån motiverar det. Varje incheckning kan då knytas kryptografiskt till sin författare.

## F. Arkivering av projekt

- [ ] **SKA**: Plattformens arkiveringsfunktion används (gör kodförrådet skrivskyddat). Koden förblir åtkomlig men ingen kan av misstag bidra och det är tydligt att projektet inte underhålls längre.
- [ ] **SKA**: README anger att projektet inte längre underhålls.
- [ ] **SKA**: Projekt utan underhållsansvariga arkiveras.
