---
title: "Standarder, specifikationer och principer"
description: "Översikt över standarder och ramverk som checklistorna bygger på"
weight: 200
---

**Syfte:** Översikt över standarder, specifikationer och ramverk som checklistorna bygger på.

## Diggs styrande dokument

Handboken är ett stöddokument som konkretiserar, kompletterar och underlättar praktisk efterlevnad av:

- **[Digg: Policy för öppen programvara](https://www.digg.se/analys-och-uppfoljning/publikationer/publikationer/2026-06-03-anskaffning-utveckling-och-publicering-av-oppen-programvara-policy-och-riktlinjer)** (Dnr 2026-02796, beslutad 2026-04-07, giltig t.o.m. 2029-03-26)
- **[Digg: Riktlinje för öppen programvara](https://www.digg.se/analys-och-uppfoljning/publikationer/publikationer/2026-06-03-anskaffning-utveckling-och-publicering-av-oppen-programvara-policy-och-riktlinjer)** (Dnr 2026-02797, beslutad 2026-04-07, giltig t.o.m. 2029-03-06)

### Principer

Policyn anger sex vägledande principer för arbetet med öppen programvara:

1. **Öppenhet**: insyn i tekniska lösningar och processer bygger förtroende. Begränsningar ska bara ske om det krävs av personlig integritet eller säkerhet, och då i nödvändig omfattning.
2. **Återanvändbarhet**: gemensamma investeringar ger effektivitet. Diggs lösningar ska utformas så att de kan återanvändas.
3. **Att bidra**: aktivt deltagande i öppna samarbeten stärker både egen rådighet och offentlig sektor i stort.
4. **Säkerhet**: insyn ökar förmågan att hantera sårbarheter; egen drift minskar sårbarhet i kris; rådighet över koden möjliggör säkerhetsåtgärder över livstiden.
5. **Öppna standarder**: interoperabilitet och minskad inlåsning; frihet att byta leverantörer.
6. **Transformation**: gemensam digital förvaltning kräver öppenhet som grund och ständig förbättring genom delning av kunskap.

## Efterlevnad, metadata och SBOM-format

**[REUSE-specifikationen](https://reuse.software/)**: standard för att märka varje fil med licens- och upphovsuppgifter.\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[ISO/IEC 5230 (OpenChain)](https://openchainproject.org/)**: standard för hur en organisation håller ordning på licenser i öppen programvara (OpenChain).\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: format för licensinformation och programvaruförteckning (SBOM – software bill of materials).\
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Säkerhet](../sakerhet/)

**[CycloneDX](https://cyclonedx.org/)**: förteckning över en programvaras ingående komponenter (SBOM-format), alternativ till SPDX.\
→ *Se:* [Säkerhet](../sakerhet/)

**[PublicCode.yml-specifikationen](https://yml.publiccode.tools/)**: standardfil som beskriver ett offentligt programvaruprojekt så att det blir lättare att hitta och återanvända.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

**[Standard for Public Code](https://www.standardforpubliccode.org/)**: ramverk för kvalitet och hållbarhet i offentlig kod.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Säkerhet](../sakerhet/), [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

## Versions- och releasepraxis

Underlag till [Förberedelse inför publicering](../publicering-forvaltning/) och [Publicering av version 1.0.0](../publicering-1.0/).

**[Conventional Commits](https://www.conventionalcommits.org/)**: regler för commit-meddelanden som gör att ändringsloggar och versionsnummer kan tas fram automatiskt.

**[Keep a Changelog](https://keepachangelog.com/)**: användarvänlig releasehistorik.

**[Semantic Versioning 2.0.0](https://semver.org/)**: konsekvent versionsnumrering.

## Gemenskap/community och bidrag

**[Contributor Covenant](https://www.contributor-covenant.org/)**: uppförandekod för respektfullt och inkluderande samarbete.\
→ *Se:* [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: bidragsgivare intygar rätt att bidra.\
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Bidrag uppströms](../bidrag-uppstrom/)

**[TODO Group](https://todogroup.org/)**: praxis och mallar för att driva ett open source-kontor (OSPO).\
→ *Se:* [Bidrag uppströms](../bidrag-uppstrom/)

## Säker utveckling och sårbarhetshantering

Underlag till [Säkerhet](../sakerhet/); några ramverk pekar även vidare till andra checklistor.

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum av säkerhetskontroller på olika mognadsnivåer. Riktlinjen anger explicit att rekommendationer från OpenSSF ska användas där det är relevant.\
→ *Se även:* [Arbete på kodsamverkansplattform](../plattform/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: kortfattad guide till säker mjukvaruutveckling.\
→ *Se även:* [Arbete på kodsamverkansplattform](../plattform/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: informationsklassning och informationssäkerhet.

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: kravkatalog för att verifiera säkerheten i applikationer (Application Security Verification Standard). Riktlinjen anger explicit OWASP som referensram.

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** och [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/): praktisk vägledning för säker utveckling.

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**: etablerade principer för säker mjukvaruutveckling.

## Leveranskedja och release-säkerhet

Underlag till [Säkerhet](../sakerhet/).

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: automatiserad kontroll som poängsätter ett projekts säkerhetspraxis och föreslår förbättringar.

**[Sigstore](https://www.sigstore.dev/)**: verktyg för att signera programvaruartefakter och styrka var de kommer ifrån (bl.a. cosign).

**[SLSA](https://slsa.dev/)**: ramverk med säkerhetsnivåer som skyddar mjukvarans leveranskedja från manipulation (Supply-chain Levels for Software Artifacts).

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: standard för systematiskt säkerhetsarbete i leveranskedjan (OpenChain Security Assurance).

**[CNCF Security TAG – Software Supply Chain Security Paper](https://github.com/cncf/tag-security/blob/main/community/working-groups/supply-chain-security/supply-chain-security-paper/sscsp.md)**: bästa praxis för säker mjukvaruleveranskedja.

## Licenser

Ett urval av vanliga licensval enligt riktlinjen och [Diggs rekommendation om öppna licenser och immaterialrätt](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt); se [licenschecklistan](../licenser/) för val och kompatibilitet i praktiken.

**[EUPL 1.2](https://interoperable-europe.ec.europa.eu/collection/eupl)**: European Union Public Licence; copyleft (kräver att vidareutveckling förblir öppen), juridiskt bindande på svenska, hanterar SaaS och är kompatibel med flera medlemsstaters lagstiftning. Förstahandsval bland copyleft-licenser.

**[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)** och **[AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.html)**: starka copyleft-licenser; AGPL omfattar även nätverksdistribution (SaaS).

**[LGPL-3.0](https://www.gnu.org/licenses/lgpl-3.0.html)**: svagare copyleft för bibliotek; vanlig licenskonvention i vissa ekosystem.

**[MIT](https://opensource.org/license/mit)** och **[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)**: tillåtande licenser när både öppen och sluten vidareutveckling ska tillåtas; Apache-2.0 ger uttryckligt patentskydd.

**[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)**: avstående från upphovsrätt för dokumentation, exempel och öppna data (inte kod).

## Externa resurser och gemenskap/community

### Utbildning och kunskap

- [opensource.guide](https://opensource.guide): utbildning i öppen programvara
- [EU:s strategi för öppen källkod](https://digital-strategy.ec.europa.eu/en/policies/open-source-strategy): refereras i policyn; ingår i EU:s [paket för teknisk suveränitet](https://digital-strategy.ec.europa.eu/en/policies/eu-tech-sovereignty)
- [OSOR Open Source Handbook](https://interoperable-europe.ec.europa.eu/collection/open-source-observatory-osor/reports-and-guidelines)

### Svensk offentlig sektor

- [Sveriges digitaliseringsstrategi 2025–2030](https://www.regeringen.se/rapporter/2025/05/sveriges-digitaliseringsstrategi-20252030/): nationell inriktning för digitalisering
- [Nationell strategi för cybersäkerhet 2025–2029](https://www.regeringen.se/informationsmaterial/2025/03/nationell-strategi-for-cybersakerhet-2025-2029/): nationell inriktning för cybersäkerhet och motståndskraft
- [Ena – Sveriges digitala infrastruktur](https://www.digg.se/styrning-och-samordning/ena---sveriges-digitala-infrastruktur): förvaltningsgemensam digital infrastruktur för säkert och effektivt informationsutbyte
- [eSam: Delning och användning av öppen källkod](https://www.esamverka.se/download/18.74e1936a1808eb1ad123f609/1652347194550/ES2022-09%20Delning%20och%20anv%C3%A4ndning%20av%20%C3%B6ppen%20k%C3%A4llkod.pdf): vägledning för offentlig sektor om att dela och använda öppen källkod
- [eSam: Tekniska förutsättningar i molntjänster 2.0](https://www.esamverka.se/download/18.1ec521a61817ffb56514fea9/1656598104185/Tekniska%20f%C3%B6ruts%C3%A4ttningar%20i%20molntj%C3%A4nster%202.0_2022.pdf): vägledning om tekniska förutsättningar för molntjänster
- [eSam: Rapport Samverkan kring tillämpad AI](https://www.esamverka.se/download/18.2191f2561817fd04d7c4fe52/1656583764475/ES2022-03%20Rapport%20Samverkan%20kring%20till%C3%A4mpad%20AI.pdf): rapport om offentlig samverkan kring tillämpad AI
- [eSamverkans publikationer](https://www.esamverka.se/publikationer.html): publikationer och vägledningar för offentlig digital samverkan
- [NOSAD (Nätverk för Open Source And Data)](https://nosad.se): vägledning, mallar, strategiska dokument
- [NOSAD:s vägledning om upphandling av öppen programvara](https://nosad.se/upphandling-oss): för offentliga beställare och upphandlare
- [Kammarkollegiets vägledning för avrop från *Programvaror och tjänster*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf): allmänt avropsstöd
- [Kammarkollegiets Kravkatalog för Programvarulösningar](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/programvarulosningar-23.3-8027-21/1.-gem.dok/kravkatalogslutlig.pdf): ställer krav på OSI-godkända öppna licenser (avsnitt 7.5)
- [Inköpsrådets artikelserie](https://inkopsradet.se/dela-kostnader-och-undvik-inlasningar/): upphandling och öppen programvara
- [offentligkod.se](https://offentligkod.se): katalog över öppna programvaror
- [Sveriges dataportal](https://www.dataportal.se/): portal för data från offentlig sektor

### Internationella resurser

- [EU Open Source Stratgy](https://digital-strategy.ec.europa.eu/en/policies/open-source-strategy)
- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue): katalog över återanvändbara öppna lösningar för offentlig sektor i EU
- [Interoperable Europe Portal](https://interoperable-europe.ec.europa.eu/): EU:s plattform för öppen programvara och interoperabilitet
- [Att stärka Europas tekniska suveränitet](https://digital-strategy.ec.europa.eu/en/policies/eu-tech-sovereignty): EU-kommissionens paket för teknisk suveränitet (antaget juni 2026); omfattar bland annat EU:s strategi för öppen källkod
- [Interoperabilitetsförordningen (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj): EU-förordning om åtgärder för en hög nivå av interoperabilitet i offentlig sektor; refereras explicit i Diggs policy och riktlinje
- [Standard for Public Code Community](https://github.com/standard-for-public-code): gemenskapen för Standard for Public Code
