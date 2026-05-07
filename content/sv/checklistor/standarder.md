---
title: "Standarder, specifikationer och principer"
description: "Översikt över standarder och ramverk som checklistorna bygger på"
weight: 200
---

**Syfte:** Översikt över standarder, specifikationer och ramverk som checklistorna bygger på.
Sidan är en käll- och orienteringssida; för operativa checkpunkter, se respektive checklista.

## Diggs styrande dokument

Checklistorna konkretiserar och kompletterar:

- **Digg: Policy för öppen programvara** (Dnr 2026-02796, beslutad 2026-04-07, giltig t.o.m. 2029-03-26)
- **Digg: Riktlinje för öppen programvara** (Dnr 2026-02797, beslutad 2026-04-07, giltig t.o.m. 2029-03-06)

Riktlinjen anger explicit att checklistor och mallar ingår som stöddokument: *"Som komplement till riktlinjen finns detaljerade rutiner samt stöddokument – checklistor och mallar som beskriver hur olika moment ska genomföras i praktiken."*

### Sex principer (ur policyn)

1. **Öppenhet**: insyn i tekniska lösningar och processer bygger förtroende. Begränsningar ska bara ske om det krävs av personlig integritet eller säkerhet, och då i nödvändig omfattning.
2. **Återanvändbarhet**: gemensamma investeringar ger effektivitet. Diggs lösningar ska utformas så att de kan återanvändas.
3. **Att bidra**: aktivt deltagande i öppna samarbeten stärker både egen rådighet och offentlig sektor i stort.
4. **Säkerhet**: insyn ökar förmågan att hantera sårbarheter; egen drift minskar sårbarhet i kris; rådighet över koden möjliggör säkerhetsåtgärder över livstiden.
5. **Öppna standarder**: interoperabilitet och minskad inlåsning; frihet att byta leverantörer.
6. **Transformation**: gemensam digital förvaltning kräver öppenhet som grund och ständig förbättring genom delning av kunskap.

### Två huvudflöden + gemensamma ramar (ur riktlinjen)

Riktlinjen beskriver arbetet i två flöden plus gemensamma ramar:

| Flöde | Aktiviteter |
|---|---|
| **Använda och anskaffa** | Livscykelhantera, Anskaffa öppen programvara |
| **Utveckla och publicera** | Livscykelhantera, Utveckla, Publicera, Hantera bidrag |
| **Gemensamma ramar** | Säkerhet genom hela livscykeln, Licenser och kompatibilitet, Dokumentation/rutiner/projekthälsa |

### Ansvarsmodell

- **Avdelnings- och verksamhetsansvarig chef (informationsägare)**: övergripande ansvar för efterlevnad inom den egna verksamheten.
- **Systemägare / verksamhetsansvarig enhetschef**: programvara hanteras enligt riktlinjen; risker, licenser, beroenden, säkerhet följs upp.
- **Operativt team**: dagligt arbete med kod, beroenden, ärenden, externa bidrag, dokumentation.

## Licenser, metadata och SBOM-format

**[REUSE-specifikationen](https://reuse.software/)**: standardiserad licensefterlevnad per fil.\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[ISO/IEC 5230 (OpenChain)](https://openchainproject.org/)**: Open Source License Compliance för organisationers licenshantering.\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[EUPL 1.2](https://interoperable-europe.ec.europa.eu/collection/eupl)**: European Union Public Licence; juridiskt bindande på svenska, hanterar SaaS och är kompatibel med flera medlemsstaters lagstiftning.\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: format för licensinformation och SBOM.\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Säkerhet](../sakerhet/)

**[CycloneDX](https://cyclonedx.org/)**: SBOM-format, alternativ till SPDX.\
→ *Se:* [Säkerhet](../sakerhet/)

**[PublicCode.yml-specifikationen](https://yml.publiccode.tools/)**: metadata-indexering för bättre upptäckbarhet.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

**[Standard for Public Code](https://www.standardforpubliccode.org/)**: 16 kriterier för kvalitet och hållbarhet i offentlig kod.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Säkerhet](../sakerhet/), [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

## Versions- och releasepraxis

**[Conventional Commits](https://www.conventionalcommits.org/)**: strukturerad projekthistorik som möjliggör automatiserade ändringsloggar och versionsbumpar.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Publicering av version 1.0.0](../publicering-1.0/)

**[Keep a Changelog](https://keepachangelog.com/)**: användarvänlig releasehistorik.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Publicering av version 1.0.0](../publicering-1.0/)

**[Semantic Versioning 2.0.0](https://semver.org/)**: konsekvent versionsnumrering.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Publicering av version 1.0.0](../publicering-1.0/)

## Community och bidrag

**[Contributor Covenant](https://www.contributor-covenant.org/)**: uppförandekod för respektfullt och inkluderande samarbete.\
→ *Se:* [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: bidragsgivare intygar rätt att bidra.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Bidrag uppströms](../bidrag-uppstrom/)

**[TODO Group](https://todogroup.org/)**: OSPO-praxis och policymallar.\
→ *Se:* [Bidrag uppströms](../bidrag-uppstrom/)

## Säker utveckling och sårbarhetshantering

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum av säkerhetskontroller på tre mognadsnivåer. Riktlinjen anger explicit att rekommendationer från OpenSSF ska användas där det är relevant.\
→ *Se:* [Säkerhet](../sakerhet/), [Arbete på kodsamverkansplattform](../plattform/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: 29 praktiker för säker mjukvaruutveckling.\
→ *Se:* [Säkerhet](../sakerhet/), [Arbete på kodsamverkansplattform](../plattform/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: informationsklassning och informationssäkerhet.\
→ *Se:* [Säkerhet](../sakerhet/)

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: Application Security Verification Standard. Riktlinjen anger explicit OWASP som referensram.\
→ *Se:* [Säkerhet](../sakerhet/)

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** och [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/): praktisk vägledning för säker utveckling.\
→ *Se:* [Säkerhet](../sakerhet/)

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**: etablerade principer för säker mjukvaruutveckling.\
→ *Se:* [Säkerhet](../sakerhet/)

## Leveranskedja och release-säkerhet

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: bedöma och förbättra säkerhetshälsa.\
→ *Se:* [Säkerhet](../sakerhet/)

**[Sigstore](https://www.sigstore.dev/)**: signering av artefakter (cosign) och provenance.\
→ *Se:* [Säkerhet](../sakerhet/)

**[SLSA](https://slsa.dev/)**: Supply-chain Levels for Software Artifacts.\
→ *Se:* [Säkerhet](../sakerhet/)

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: OpenChain Security Assurance.\
→ *Se:* [Säkerhet](../sakerhet/)

**[CNCF Security TAG – Software Supply Chain Security Paper](https://github.com/cncf/tag-security/blob/main/community/working-groups/supply-chain-security/supply-chain-security-paper/sscsp.md)**: bästa praxis för säker mjukvaruleveranskedja.\
→ *Se:* [Säkerhet](../sakerhet/)

## Regelverk och förordningar

**[Interoperabilitetsförordningen (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj)**: EU-förordning om åtgärder för en hög nivå av interoperabilitet i offentlig sektor. Refereras explicit i Diggs policy och riktlinje.



## Externa resurser och community

### Utbildning och kunskap

- [opensource.guide](https://opensource.guide): utbildning i öppen programvara
- [EU-kommissionens Open Source Strategy](https://commission.europa.eu/about/departments-and-executive-agencies/digital-services/open-source-software-strategy_en): refereras i policyn

### Svensk offentlig sektor

- [diggsweden/open-source-project-template](https://github.com/diggsweden/open-source-project-template): implementeringsmall
- [Sveriges digitaliseringsstrategi 2025–2030](https://www.regeringen.se/rapporter/2025/05/sveriges-digitaliseringsstrategi-20252030/): nationell inriktning för digitalisering
- [Nationell strategi för cybersäkerhet 2025–2029](https://www.regeringen.se/informationsmaterial/2025/03/nationell-strategi-for-cybersakerhet-2025-2029/): nationell inriktning för cybersäkerhet och motståndskraft
- [Ena – Sveriges digitala infrastruktur](https://www.digg.se/styrning-och-samordning/ena---sveriges-digitala-infrastruktur): förvaltningsgemensam digital infrastruktur för säkert och effektivt informationsutbyte
- [eSam: Delning och användning av öppen källkod](https://www.esamverka.se/download/18.74e1936a1808eb1ad123f609/1652347194550/ES2022-09%20Delning%20och%20anv%C3%A4ndning%20av%20%C3%B6ppen%20k%C3%A4llkod.pdf): vägledning för offentlig sektor om att dela och använda öppen källkod
- [eSam: Tekniska förutsättningar i molntjänster 2.0](https://www.esamverka.se/download/18.1ec521a61817ffb56514fea9/1656598104185/Tekniska%20f%C3%B6ruts%C3%A4ttningar%20i%20molntj%C3%A4nster%202.0_2022.pdf): vägledning om tekniska förutsättningar för molntjänster
- [eSam: Rapport Samverkan kring tillämpad AI](https://www.esamverka.se/download/18.2191f2561817fd04d7c4fe52/1656583764475/ES2022-03%20Rapport%20Samverkan%20kring%20till%C3%A4mpad%20AI.pdf): rapport om offentlig samverkan kring tillämpad AI
- [eSamverkans publikationer](https://www.esamverka.se/publikationer.html): publikationer och vägledningar för offentlig digital samverkan
- [NOSAD (Nätverk för Open Source And Data)](https://nosad.se): vägledning, mallar, strategiska dokument
- [NOSAD:s vägledning om upphandling av öppen programvara](https://nosad.se/upphandling-oss)
- [Kammarkollegiets vägledning för avrop från *Programvaror och tjänster*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf): allmänt avropsstöd
- [Kammarkollegiets Kravkatalog för Programvarulösningar](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/programvarulosningar-23.3-8027-21/1.-gem.dok/kravkatalogslutlig.pdf): operativ regel om OSI-krav i sektion 7.5
- [Inköpsrådets artikelserie](https://inkopsradet.se/dela-kostnader-och-undvik-inlasningar/): upphandling och öppen programvara
- [offentligkod.se](https://offentligkod.se): katalog över öppna programvaror
- [Sveriges dataportal](https://www.dataportal.se/): portal för data från offentlig sektor

### Internationella resurser

- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue)
- [Interoperable Europe Portal](https://interoperable-europe.ec.europa.eu/): EU:s plattform för öppen programvara och interoperabilitet
- [Standard for Public Code Community](https://github.com/standard-for-public-code): gemenskapen för Standard for Public Code
