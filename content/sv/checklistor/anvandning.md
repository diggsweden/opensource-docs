---
title: "Användning av öppen programvara"
description: "Checklista för att verifiera och säkert använda öppen programvara i drift, utveckling eller som beroende"
weight: 20
---

**Syfte:** Stöd för dig som ska *använda* öppen programvara, antingen i drift, i utveckling eller som beroende.

## A. Innan du laddar ner

- [ ] **SKA**: Officiell release-version och kodförråd är identifierade. Det säkerställer att nedladdningen sker från rätt källa, inte en avgrening eller spegelvariant.
- [ ] **SKA**: Projektets licens är OSI-godkänd och förenlig med din användning. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: `README.md`, `SECURITY.md` och `CHANGELOG.md` är lästa. De täcker, i tur och ordning, vad projektet gör, hur sårbarheter rapporteras, och vad som ändrats i senaste utgåvorna.
- [ ] **BÖR**: `publiccode.yml` (offentlig metadata-fil) är granskad om sådan finns.
- [ ] **BÖR**: Projektets mognadsgrad (alpha/beta/stable/deprecated) och deklarerat stödfönster är kontrollerade. Det visar hur produktionsmoget projektet är och hur länge det säkerhetsuppdateras.

## B. Verifiera artefakten

- [ ] **SKA**: Releasens **integritet** (kontrollsumma) och **äkthet** (signatur) är verifierade. Det bekräftar att filen inte är manipulerad och att den kommer från rätt avsändare.
  - Sigstore/cosign: `cosign verify-blob …`
  - GPG: `gpg --verify <signature> <artefact>`
  - SHA256: jämför mot publicerad checksumma.
- [ ] **SKA**: Medföljande **SBOM** (`*.spdx.json` eller `*.cdx.json`) är granskad. SBOM listar alla komponenter och beroenden i releasen och gör sammansättningen bedömbar.
- [ ] **BÖR**: Projektets [OpenSSF Scorecard](https://scorecard.dev/) eller motsvarande hälsobedömning är kontrollerad. Scorecard ger en automatisk poäng på projektets säkerhetspraxis.

## C. Säkerhet och beroenden

- [ ] **SKA**: SBOM är mappad mot egen sårbarhetsdatabas (t.ex. OSV.dev, NVD). Det gör att kända sårbarheter i komponenterna upptäcks innan ni driftsätter.
- [ ] **SKA**: Projektets sårbarhetsadvisories bevakas (GitHub Security Advisories, CVE-flöden).
- [ ] **SKA**: Rutin finns för snabb uppdatering till nya utgåvor vid kritiska sårbarheter.
- [ ] **BÖR**: Pakethanterare med pinning (lockfiles) används för reproducerbara byggen. Pinning låser exakta versioner så att samma bygge ger samma resultat.

## D. Drift och förvaltning

- [ ] **SKA**: Projektets **förvaltningsstatus** ("aktivt förvaltat" / "arkiverat" / "no longer maintained") är noterad. Vid arkivering är ersättning eller egen avgrening planerad.
- [ ] **SKA**: Deklarerat **stödfönster** (säkerhetsuppdateringar fram till …) är noterat och uppgradering före utgång är planerad.
- [ ] **SKA**: Projektet konfigureras via dokumenterade konfigurationsmekanismer. Undvik egna avgreningar för enkla anpassningar; det gör säkerhetsuppdateringar svårare.
- [ ] **BÖR**: Vilken version och konfiguration som är i drift är dokumenterat internt.

## E. Bidra tillbaka

- [ ] **BÖR**: Programfel och förbättringsförslag rapporteras via projektets ärendehanterare. Programfixar bidras enligt [Bidrag uppströms](../bidrag-uppstrom/).

## F. Vid problem

- [ ] **SKA**: Sårbarhet upptäckt: rapporteras enligt projektets `SECURITY.md` (privat kanal, inte publikt ärende).
- [ ] **SKA**: Programfel eller fråga: projektets ärendehanterare används.
- [ ] **BÖR**: Om projektet är arkiverat eller övergivet och innehåller sårbarheter, är avgrening eller ersättning diskuterad med OSPO/säkerhetsansvarig.
