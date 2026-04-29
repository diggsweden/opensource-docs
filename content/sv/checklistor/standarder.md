---
title: "Standarder, specifikationer och principer"
description: "Översikt över standarder och ramverk som checklistorna bygger på"
weight: 200
---

**Syfte:** Översikt över standarder, specifikationer och ramverk som checklistorna bygger på. För operativa checkpunkter, se respektive checklista.

---

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

---

## Licens­specifikationer

**[REUSE-specifikationen](https://reuse.software/)**: tydlig och standardiserad licensefterlevnad.  
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[ISO/IEC 5230 (OpenChain)](https://www.openchainproject.org/)**: Open Source License Compliance.  
→ *Se:* [Licensval och licenskompatibilitet](../licenser/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: License- och SBOM-format.  
→ *Se:* [Licensval och licenskompatibilitet](../licenser/), [Säkerhet](../sakerhet/)

**[EUPL 1.2](https://joinup.ec.europa.eu/collection/eupl)**: European Union Public Licence; juridiskt bindande på svenska, hanterar SaaS, kompatibel med flera medlemsstaters lagstiftning.  
→ *Se:* [Licensval och licenskompatibilitet](../licenser/)

---

## Incheckning och versionshantering

**[Conventional Commits](https://www.conventionalcommits.org/)**: strukturerad projekthistorik.  
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

**[Keep a Changelog](https://keepachangelog.com/)**: användarvänlig releasehistorik.  
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

**[Semantic Versioning 2.0.0](https://semver.org/)**: konsekvent versionsnumrering.  
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

---

## Community och samarbete

**[Contributor Covenant](https://www.contributor-covenant.org/)**: uppförandekod för respektfullt och inkluderande samarbete.  
→ *Se:* [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: bidragsgivare intygar rätt att bidra.  
→ *Se:* [Bidrag uppströms](../bidrag-uppstrom/)

**[TODO Group](https://todogroup.org/)**: OSPO-praxis och policymallar.  
→ *Se:* [Bidrag uppströms](../bidrag-uppstrom/)

---

## Säkerhet och kvalitet

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum av säkerhetskontroller på tre mognadsnivåer. (Riktlinjen anger explicit att rekommendationer från OpenSSF ska användas där det är relevant.)  
→ *Se:* [Säkerhet](../sakerhet/), [Arbete på kodsamverkansplattform](../plattform/), [Förberedelse inför publicering](../publicering-forvaltning/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: 29 praktiker för säker mjukvaruutveckling.  
→ *Se:* [Säkerhet](../sakerhet/), [Arbete på kodsamverkansplattform](../plattform/)

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: bedöma och förbättra säkerhetshälsa.  
→ *Se:* [Säkerhet](../sakerhet/)

**[Sigstore](https://www.sigstore.dev/)**: signering av artefakter (cosign) och provenance.  
→ *Se:* [Säkerhet](../sakerhet/)

**[SLSA](https://slsa.dev/)**: Supply-chain Levels for Software Artifacts.  
→ *Se:* [Säkerhet](../sakerhet/)

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: Security Assurance.  
→ *Se:* [Säkerhet](../sakerhet/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: informationsklassning och informationssäkerhet.  
→ *Se:* [Säkerhet](../sakerhet/)

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: Application Security Verification Standard. (Riktlinjen anger explicit OWASP som referensram.)  
→ *Se:* [Säkerhet](../sakerhet/)

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** och [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/).  
→ *Se:* [Säkerhet](../sakerhet/)

**[CycloneDX](https://cyclonedx.org/)**: SBOM-format, alternativ till SPDX.  
→ *Se:* [Säkerhet](../sakerhet/)

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**  
→ *Se:* [Säkerhet](../sakerhet/)

**[CNCF Security TAG – Software Supply Chain Best Practices](https://github.com/cncf/tag-security/blob/main/supply-chain-security/supply-chain-security-paper/CNCF_SSCP_v1.pdf)**  
→ *Se:* [Säkerhet](../sakerhet/)

---

## Metadata och upptäckbarhet

**[PublicCode.yml-specifikationen](https://yml.publiccode.tools/)**: metadata-indexering för bättre upptäckbarhet.  
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/)

**[Standard for Public Code](https://standard.publiccode.net/)**: 16 kriterier för kvalitet och hållbarhet i offentlig kod.  
→ *Se:* [Förberedelse inför publicering](../publicering-forvaltning/), [Säkerhet](../sakerhet/), [Hantering av ärenden, frågor och externa bidrag](../arenden-community/)

---

## Regelverk och förordningar

**[Interoperabilitetsförordningen (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj)**: EU-förordning om åtgärder för en hög nivå av interoperabilitet i offentlig sektor. Refereras explicit i Diggs policy och riktlinje.  
→ *Se:* [Anskaffning](../anskaffning/)

**[European Interoperability Framework (EIF)](https://ec.europa.eu/isa2/eif_en/)**: rekommendationer för interoperabilitet.  
→ *Se:* [Anskaffning](../anskaffning/)

**[SOU 2009:86](https://www.regeringen.se/rattsliga-dokument/statens-offentliga-utredningar/2009/10/sou-200986/)**: Strategi för myndigheternas arbete med e-förvaltning. Definierar öppna standarder för upphandling.  
→ *Se:* [Anskaffning](../anskaffning/)

**[Tryckfrihetsförordningen (1949:105)](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/tryckfrihetsforordning-1949105_sfs-1949-105/)**: allmänna handlingar.  
→ *Se:* [Diarieföring och arkivering](../diarie-arkiv/)

**[Offentlighets- och sekretesslagen (2009:400)](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/offentlighets--och-sekretesslag-2009400_sfs-2009-400/)**  
→ *Se:* [Diarieföring och arkivering](../diarie-arkiv/)

**[GDPR / Dataskyddsförordningen](https://www.imy.se/lagar--regler/dataskyddsforordningen/)**: när personuppgifter förekommer i öppen kod, ärenden eller ändringsförfrågningar.  
→ *Se:* [Diarieföring och arkivering](../diarie-arkiv/), [Säkerhet](../sakerhet/)

---

## Externa resurser och community

### Utbildning och kunskap

- [opensource.guide](https://opensource.guide): utbildning i öppen programvara
- [EU-kommissionens Open Source Strategy](https://commission.europa.eu/about-european-commission/departments-and-executive-agencies/informatics/open-source-software-strategy_en): refereras i policyn

### Svensk offentlig sektor

- [diggsweden/open-source-project-template](https://github.com/diggsweden/open-source-project-template): implementeringsmall
- [NOSAD (Nätverk för Open Source And Data)](https://nosad.se): vägledning, mallar, strategiska dokument
  - [NOSAD:s vägledning om upphandling av öppen programvara](https://nosad.se/upphandling-oss)
- [Kammarkollegiets vägledning](https://www.kammarkollegiet.se): avrop från ramavtalet *Programvaror och tjänster*
- [Inköpsrådets artikelserie](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/): upphandling och öppen programvara
- [offentligkod.se](https://offentligkod.se): katalog över öppna programvaror
- [Sveriges dataportal](https://www.dataportal.se): community-forum för offentlig sektor

### Internationella resurser

- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue)
- [Joinup](https://joinup.ec.europa.eu/): EU:s plattform för öppen programvara och interoperabilitet
- [Foundation for Public Code](https://www.publiccode.net/)
