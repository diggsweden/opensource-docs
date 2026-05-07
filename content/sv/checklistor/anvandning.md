---
title: "Användning av öppen programvara"
description: "Checklista för att verifiera och säkert använda öppen programvara i drift, utveckling eller som beroende"
weight: 20
---

**Syfte:** Stöd för dig som ska *använda* öppen programvara, antingen i drift, i utveckling eller som beroende.

## A. Innan du laddar ner

- [ ] **SKA**: Verifiera att nedladdningen sker från rätt officiell källa, inte en avgrening eller spegelvariant.
- [ ] **SKA**: Projektets licens är OSI-godkänd och förenlig med din användning. Se [Licensval och licenskompatibilitet](../licenser/).
- [ ] **SKA**: En grundläggande överblick av `README.md`, `SECURITY.md` och `CHANGELOG.md` har skett. De täcker, i tur och ordning, vad projektet gör, hur sårbarheter rapporteras, och vad som ändrats i senaste utgåvorna.
- [ ] **BÖR**: `publiccode.yml` (offentlig metadata-fil) är granskad, om sådan finns.
- [ ] **BÖR**: Projektets mognadsgrad (alpha/beta/stable/deprecated) och se om säkerhetsuppdateringar verkar ske. Det visar hur produktionsmoget projektet är.

## B. Säkerhet och beroenden

- [ ] **SKA**: Releasens integritet (kontrollsumma) och äkthet (signatur) är verifierade. Det bekräftar att filen inte är manipulerad och att den kommer från rätt avsändare. Exempel: 
  - Sigstore/cosign: `cosign verify-blob …`
  - GPG: `gpg --verify <signature> <artefact>`
  - SHA256: jämför mot publicerad checksumma.
- [ ] **SKA**: Medföljande **[SBOM](../../terminologi/)** är granskad. En SBOM visar vilka byggstenar och beroenden som ingår i releasen, så att du kan se vad du faktiskt installerar.
- [ ] **SKA**: Projektets sårbarhetsadvisories bevakas (GitHub Security Advisories, CVE-flöden).
- [ ] **SKA**: Rutin finns för snabb uppdatering till nya utgåvor vid kritiska sårbarheter.
- [ ] **BÖR**: En allmän hälsobedömning av projektet är gjord, till exempel via [OpenSSF Scorecard](../../terminologi/) eller motsvarande verktyg. Sådana verktyg ger en automatisk poäng på projektets säkerhetspraxis och ger en snabb fingervisning om hur väl projektet sköts.
- [ ] **BÖR**: Pakethanterare med pinning (lockfiles) används för reproducerbara byggen. Pinning låser exakta versioner så att samma bygge ger samma resultat.

## C. Drift och förvaltning

- [ ] **SKA**: Projektets förvaltningsstatus ("aktivt" / "arkiverat" / "övergivet") är noterad. Vid arkivering är ersättning eller egen avgrening planerad.
- [ ] **SKA**: Deklarerat stödfönster (säkerhetsuppdateringar fram till …) är noterat och uppgradering före utgång är planerad.
- [ ] **SKA**: Projektet konfigureras via dokumenterade konfigurationsmekanismer. Undvik egna avgreningar för enkla anpassningar; det gör säkerhetsuppdateringar svårare.
- [ ] **BÖR**: Vilken version och konfiguration som är i drift är dokumenterat internt.

## D. Vid problem

- [ ] **SKA**: Sårbarhet upptäckt: rapporteras enligt projektets `SECURITY.md` (privat kanal, inte publikt ärende).
- [ ] **SKA**: Programfel eller fråga: projektets ärendehanterare används.
- [ ] **SKA**: Övergivna eller arkiverade projekt ska inte användas. Finn en aktivt förvaltad ersättare.

## Länkar

* [En kortfattad guide för utvärdering av öppen programvara](https://best.openssf.org/sv/Concise-Guide-for-Evaluating-Open-Source-Software) – fördjupad utvärderingsguide från OpenSSF Best Practices Working Group
