---
title: "Standards, specifications and principles"
description: "Overview of standards and frameworks the checklists build on"
weight: 200
---

**Purpose:** Overview of the standards, specifications and frameworks the checklists build on.
This is a source and orientation page; for operational check-points, see the respective checklist.

## Digg's governing documents

The checklists put into practice and complement:

- **Digg: Policy on open source software** (Reg. no. 2026-02796, decided 2026-04-07, valid until 2029-03-26)
- **Digg: Guidelines on open source software** (Reg. no. 2026-02797, decided 2026-04-07, valid until 2029-03-06)

The guidelines explicitly state that checklists and templates are part of the supporting documents: *"As a complement to the guidelines there are detailed procedures and supporting documents — checklists and templates that describe how the various activities shall be carried out in practice."*

### Six principles (from the policy)

1. **Openness**: insight into technical solutions and processes builds trust. Restrictions shall apply only when required by personal integrity or security, and only to the extent necessary.
2. **Reusability**: shared investments yield efficiency. Digg's solutions shall be designed to be reusable.
3. **Contribution**: active participation in open collaboration strengthens both Digg's own self-determination and the public sector at large.
4. **Security**: transparency increases the ability to handle vulnerabilities; in-house operation reduces vulnerability in a crisis; control over the code makes security action possible across the lifetime.
5. **Open standards**: interoperability and reduced lock-in; freedom to switch suppliers.
6. **Transformation**: shared digital administration requires openness as a foundation and continuous improvement through knowledge-sharing.

### Two main flows + common frames (from the guidelines)

The guidelines describe the work in two flows plus common frames:

| Flow | Activities |
|---|---|
| **Use and acquire** | Lifecycle management, Acquiring open source software |
| **Develop and publish** | Lifecycle management, Develop, Publish, Handle contributions |
| **Common frames** | Security throughout the lifecycle, Licences and compatibility, Documentation/procedures/project health |

### Responsibility model

- **Department/operational manager (information owner)**: overall responsibility for compliance within their own operation.
- **System owner / operational unit manager**: software is handled in line with the guidelines; risks, licences, dependencies and security are followed up.
- **Operational team**: day-to-day work with code, dependencies, issues, external contributions, documentation.

## Licences, metadata and SBOM formats

**[REUSE specification](https://reuse.software/)**: standardised per-file licence compliance.\
→ *See:* [Licensing](../licensing/), [Release preparation](../release-preparation/)

**[ISO/IEC 5230 (OpenChain)](https://openchainproject.org/)**: Open Source License Compliance for organisational licence management.\
→ *See:* [Licensing](../licensing/), [Release preparation](../release-preparation/)

**[EUPL 1.2](https://interoperable-europe.ec.europa.eu/collection/eupl)**: European Union Public Licence; legally binding in Swedish, handles SaaS and is compatible with several member states' legislation.\
→ *See:* [Licensing](../licensing/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: format for licence information and SBOMs.\
→ *See:* [Licensing](../licensing/), [Security](../security/)

**[CycloneDX](https://cyclonedx.org/)**: SBOM format, alternative to SPDX.\
→ *See:* [Security](../security/)

**[PublicCode.yml specification](https://yml.publiccode.tools/)**: metadata indexing for better discoverability.\
→ *See:* [Release preparation](../release-preparation/)

**[Standard for Public Code](https://www.standardforpubliccode.org/)**: 16 criteria for quality and sustainability in public code.\
→ *See:* [Release preparation](../release-preparation/), [Security](../security/), [Issues and contributions](../issues-and-contributions/)

## Versioning and release practice

**[Conventional Commits](https://www.conventionalcommits.org/)**: structured project history that enables automated changelogs and version bumps.\
→ *See:* [Release preparation](../release-preparation/), [Release 1.0.0](../release-1.0/)

**[Keep a Changelog](https://keepachangelog.com/)**: user-friendly release history.\
→ *See:* [Release preparation](../release-preparation/), [Release 1.0.0](../release-1.0/)

**[Semantic Versioning 2.0.0](https://semver.org/)**: consistent version numbering.\
→ *See:* [Release preparation](../release-preparation/), [Release 1.0.0](../release-1.0/)

## Community and contributions

**[Contributor Covenant](https://www.contributor-covenant.org/)**: code of conduct for respectful and inclusive collaboration.\
→ *See:* [Issues and contributions](../issues-and-contributions/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: contributors certify the right to contribute.\
→ *See:* [Release preparation](../release-preparation/), [Upstream contribution](../upstream-contribution/)

**[TODO Group](https://todogroup.org/)**: OSPO practice and policy templates.\
→ *See:* [Upstream contribution](../upstream-contribution/)

## Secure development and vulnerability handling

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum security controls at three maturity levels. The guidelines explicitly state that recommendations from OpenSSF should be used where relevant.\
→ *See:* [Security](../security/), [Working on a code-collaboration platform](../platform/), [Release preparation](../release-preparation/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: 29 practices for secure software development.\
→ *See:* [Security](../security/), [Working on a code-collaboration platform](../platform/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: information classification and information security.\
→ *See:* [Security](../security/)

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: Application Security Verification Standard. The guidelines explicitly cite OWASP as a reference framework.\
→ *See:* [Security](../security/)

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** and [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/): practical guidance for secure development.\
→ *See:* [Security](../security/)

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**: established principles for secure software development.\
→ *See:* [Security](../security/)

## Supply chain and release security

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: assess and improve security health.\
→ *See:* [Security](../security/)

**[Sigstore](https://www.sigstore.dev/)**: artefact signing (cosign) and provenance.\
→ *See:* [Security](../security/)

**[SLSA](https://slsa.dev/)**: Supply-chain Levels for Software Artifacts.\
→ *See:* [Security](../security/)

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: OpenChain Security Assurance.\
→ *See:* [Security](../security/)

**[CNCF Security TAG — Software Supply Chain Security Paper](https://github.com/cncf/tag-security/blob/main/community/working-groups/supply-chain-security/supply-chain-security-paper/sscsp.md)**: best practices for secure software supply chains.\
→ *See:* [Security](../security/)

## Regulations and ordinances

**[Interoperability Regulation (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj)**: EU regulation on measures for a high level of interoperability in the public sector. Referenced explicitly in Digg's policy and guidelines.

## External resources and community

### Education and knowledge

- [opensource.guide](https://opensource.guide): training in open source
- [European Commission Open Source Strategy](https://commission.europa.eu/about/departments-and-executive-agencies/digital-services/open-source-software-strategy_en): referenced in the policy

### Swedish public sector

- [diggsweden/open-source-project-template](https://github.com/diggsweden/open-source-project-template): implementation template
- [Sweden's digitalisation strategy 2025-2030](https://www.regeringen.se/rapporter/2025/05/sveriges-digitaliseringsstrategi-20252030/) (in Swedish): national direction for digitalisation
- [National cybersecurity strategy 2025-2029](https://www.regeringen.se/informationsmaterial/2025/03/nationell-strategi-for-cybersakerhet-2025-2029/) (in Swedish): national direction for cybersecurity and resilience
- [Ena - Sweden's digital infrastructure](https://www.digg.se/en/management-and-coordination): shared digital infrastructure for secure and efficient information exchange
- [eSam: Sharing and use of open source](https://www.esamverka.se/download/18.74e1936a1808eb1ad123f609/1652347194550/ES2022-09%20Delning%20och%20anv%C3%A4ndning%20av%20%C3%B6ppen%20k%C3%A4llkod.pdf) (in Swedish): guidance for the public sector on sharing and using open source
- [eSam: Technical conditions in cloud services 2.0](https://www.esamverka.se/download/18.1ec521a61817ffb56514fea9/1656598104185/Tekniska%20f%C3%B6ruts%C3%A4ttningar%20i%20molntj%C3%A4nster%202.0_2022.pdf) (in Swedish): guidance on technical conditions for cloud services
- [eSam: Report on collaboration around applied AI](https://www.esamverka.se/download/18.2191f2561817fd04d7c4fe52/1656583764475/ES2022-03%20Rapport%20Samverkan%20kring%20till%C3%A4mpad%20AI.pdf) (in Swedish): report on public-sector collaboration around applied AI
- [eSamverkan publications](https://www.esamverka.se/publikationer.html) (in Swedish): publications and guidance for public-sector digital collaboration
- [NOSAD (Network for Open Source And Data)](https://nosad.se) (in Swedish): guidance, templates, strategic documents
- [NOSAD's guidance on procurement of open source](https://nosad.se/upphandling-oss) (in Swedish)
- [Kammarkollegiet's guidance for call-offs from *Software and Services*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf) (in Swedish): general call-off support
- [Kammarkollegiet's Requirements catalogue for Software solutions](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/programvarulosningar-23.3-8027-21/1.-gem.dok/kravkatalogslutlig.pdf) (in Swedish): operative rule on OSI requirements in section 7.5
- [Inköpsrådet's article series](https://inkopsradet.se/dela-kostnader-och-undvik-inlasningar/) (in Swedish): procurement and open source
- [offentligkod.se](https://offentligkod.se) (in Swedish): catalogue of open source software
- [Sweden's data portal](https://www.dataportal.se/): portal for data from the public sector

### International resources

- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue)
- [Interoperable Europe Portal](https://interoperable-europe.ec.europa.eu/): the EU's platform for open source and interoperability
- [Standard for Public Code Community](https://github.com/standard-for-public-code): community for the Standard for Public Code
