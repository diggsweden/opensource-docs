---
title: "Standards, specifications and principles"
description: "Overview of standards and frameworks the checklists build on"
weight: 200
---

**Purpose:** Overview of the standards, specifications and frameworks the checklists build on.

## Digg's governing documents

This handbook is a supporting document that concretises, complements and eases practical compliance with:

- **[Digg: Policy on open source software](https://www.digg.se/analys-och-uppfoljning/publikationer/publikationer/2026-06-03-anskaffning-utveckling-och-publicering-av-oppen-programvara-policy-och-riktlinjer)** (Reg. no. 2026-02796, decided 2026-04-07, valid until 2029-03-26)
- **[Digg: Guidelines on open source software](https://www.digg.se/analys-och-uppfoljning/publikationer/publikationer/2026-06-03-anskaffning-utveckling-och-publicering-av-oppen-programvara-policy-och-riktlinjer)** (Reg. no. 2026-02797, decided 2026-04-07, valid until 2029-03-06)

### Principles

The policy sets out six guiding principles for working with open source software:

1. **Openness**: insight into technical solutions and processes builds trust. Restrictions shall apply only when required by personal integrity or security, and only to the extent necessary.
2. **Reusability**: shared investments yield efficiency. Digg's solutions shall be designed to be reusable.
3. **Contribution**: active participation in open collaboration strengthens both Digg's own self-determination and the public sector at large.
4. **Security**: transparency increases the ability to handle vulnerabilities; in-house operation reduces vulnerability in a crisis; control over the code makes security action possible across the lifetime.
5. **Open standards**: interoperability and reduced lock-in; freedom to switch suppliers.
6. **Transformation**: shared digital administration requires openness as a foundation and continuous improvement through knowledge-sharing.

## Compliance, metadata and SBOM formats

**[REUSE specification](https://reuse.software/)**: standard for tagging every file with its licence and copyright.\
→ *See:* [Licensing](../licensing/), [Release preparation](../release-preparation/)

**[ISO/IEC 5230 (OpenChain)](https://openchainproject.org/)**: standard for how an organisation keeps its open source licences in order (OpenChain).\
→ *See:* [Licensing](../licensing/), [Release preparation](../release-preparation/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: format for licence information and a software bill of materials (SBOM).\
→ *See:* [Licensing](../licensing/), [Security](../security/)

**[CycloneDX](https://cyclonedx.org/)**: a list of the components that make up a piece of software (SBOM format), an alternative to SPDX.\
→ *See:* [Security](../security/)

**[PublicCode.yml specification](https://yml.publiccode.tools/)**: a standard file describing a public-sector software project so it is easier to find and reuse.\
→ *See:* [Release preparation](../release-preparation/)

**[Standard for Public Code](https://www.standardforpubliccode.org/)**: framework for quality and sustainability in public code.\
→ *See:* [Release preparation](../release-preparation/), [Security](../security/), [Issues and contributions](../issues-and-contributions/)

## Versioning and release practice

Basis for [Release preparation](../release-preparation/) and [Release 1.0.0](../release-1.0/).

**[Conventional Commits](https://www.conventionalcommits.org/)**: rules for commit messages that let changelogs and version numbers be generated automatically.

**[Keep a Changelog](https://keepachangelog.com/)**: user-friendly release history.

**[Semantic Versioning 2.0.0](https://semver.org/)**: consistent version numbering.

## Community and contributions

**[Contributor Covenant](https://www.contributor-covenant.org/)**: code of conduct for respectful and inclusive collaboration.\
→ *See:* [Issues and contributions](../issues-and-contributions/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: contributors certify the right to contribute.\
→ *See:* [Release preparation](../release-preparation/), [Upstream contribution](../upstream-contribution/)

**[TODO Group](https://todogroup.org/)**: practices and templates for running an open source program office (OSPO).\
→ *See:* [Upstream contribution](../upstream-contribution/)

## Secure development and vulnerability handling

Basis for [Security](../security/); a few frameworks also point on to other checklists.

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum security controls across maturity levels. The guidelines explicitly state that recommendations from OpenSSF should be used where relevant.\
→ *See also:* [Working on a code-collaboration platform](../platform/), [Release preparation](../release-preparation/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: a concise guide to secure software development.\
→ *See also:* [Working on a code-collaboration platform](../platform/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: information classification and information security.

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: checklist of requirements for verifying application security (Application Security Verification Standard). The guidelines explicitly cite OWASP as a reference framework.

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** and [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/): practical guidance for secure development.

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**: established principles for secure software development.

## Supply chain and release security

Basis for [Security](../security/).

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: automated check that scores a project's security practices and suggests improvements.

**[Sigstore](https://www.sigstore.dev/)**: tooling to sign software artefacts and prove where they came from (e.g. cosign).

**[SLSA](https://slsa.dev/)**: framework of security levels that protect the software supply chain from tampering (Supply-chain Levels for Software Artifacts).

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: standard for systematic security work in the supply chain (OpenChain Security Assurance).

**[CNCF Security TAG — Software Supply Chain Security Paper](https://github.com/cncf/tag-security/blob/main/community/working-groups/supply-chain-security/supply-chain-security-paper/sscsp.md)**: best practices for secure software supply chains.

## Licences

A selection of common licence choices per the guidelines and [Digg's recommendation on open licences and intellectual property rights](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt); see the [licensing checklist](../licensing/) for choice and compatibility in practice.

**[EUPL 1.2](https://interoperable-europe.ec.europa.eu/collection/eupl)**: European Union Public Licence; copyleft (requires that further development stays open), legally binding in Swedish, handles SaaS and is compatible with several member states' legislation. First choice among copyleft licences.

**[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)** and **[AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.html)**: strong copyleft licences; AGPL also covers network distribution (SaaS).

**[LGPL-3.0](https://www.gnu.org/licenses/lgpl-3.0.html)**: weaker copyleft for libraries; a common licence convention in some ecosystems.

**[MIT](https://opensource.org/license/mit)** and **[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)**: permissive licences when both open and closed further development are to be allowed; Apache-2.0 provides an explicit patent grant.

**[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)**: waiver of copyright for documentation, examples and open data (not code).

## External resources and community

### Education and knowledge

- [opensource.guide](https://opensource.guide): training in open source
- [EU Open Source Strategy](https://digital-strategy.ec.europa.eu/en/policies/open-source-strategy): referenced in the policy; part of the EU's [tech sovereignty package](https://digital-strategy.ec.europa.eu/en/policies/eu-tech-sovereignty)

### Swedish public sector

- [Sweden's digitalisation strategy 2025-2030](https://www.regeringen.se/rapporter/2025/05/sveriges-digitaliseringsstrategi-20252030/) (in Swedish): national direction for digitalisation
- [National cybersecurity strategy 2025-2029](https://www.regeringen.se/informationsmaterial/2025/03/nationell-strategi-for-cybersakerhet-2025-2029/) (in Swedish): national direction for cybersecurity and resilience
- [Ena - Sweden's digital infrastructure](https://www.digg.se/en/management-and-coordination): shared digital infrastructure for secure and efficient information exchange
- [eSam: Sharing and use of open source](https://www.esamverka.se/download/18.74e1936a1808eb1ad123f609/1652347194550/ES2022-09%20Delning%20och%20anv%C3%A4ndning%20av%20%C3%B6ppen%20k%C3%A4llkod.pdf) (in Swedish): guidance for the public sector on sharing and using open source
- [eSam: Technical conditions in cloud services 2.0](https://www.esamverka.se/download/18.1ec521a61817ffb56514fea9/1656598104185/Tekniska%20f%C3%B6ruts%C3%A4ttningar%20i%20molntj%C3%A4nster%202.0_2022.pdf) (in Swedish): guidance on technical conditions for cloud services
- [eSam: Report on collaboration around applied AI](https://www.esamverka.se/download/18.2191f2561817fd04d7c4fe52/1656583764475/ES2022-03%20Rapport%20Samverkan%20kring%20till%C3%A4mpad%20AI.pdf) (in Swedish): report on public-sector collaboration around applied AI
- [eSamverkan publications](https://www.esamverka.se/publikationer.html) (in Swedish): publications and guidance for public-sector digital collaboration
- [NOSAD (Network for Open Source And Data)](https://nosad.se) (in Swedish): guidance, templates, strategic documents
- [NOSAD's guidance on procurement of open source](https://nosad.se/upphandling-oss) (in Swedish): for public-sector buyers and procurers
- [Kammarkollegiet's guidance for call-offs from *Software and Services*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf) (in Swedish): general call-off support
- [Kammarkollegiet's Requirements catalogue for Software solutions](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/programvarulosningar-23.3-8027-21/1.-gem.dok/kravkatalogslutlig.pdf) (in Swedish): requires OSI-approved open source licences (section 7.5)
- [Inköpsrådet's article series](https://inkopsradet.se/dela-kostnader-och-undvik-inlasningar/) (in Swedish): procurement and open source
- [offentligkod.se](https://offentligkod.se) (in Swedish): catalogue of open source software
- [Sweden's data portal](https://www.dataportal.se/): portal for data from the public sector

### International resources

- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue): catalogue of reusable open source solutions for the EU public sector
- [Interoperable Europe Portal](https://interoperable-europe.ec.europa.eu/): the EU's platform for open source and interoperability
- [Strengthening Europe's Tech Sovereignty](https://digital-strategy.ec.europa.eu/en/policies/eu-tech-sovereignty): the European Commission's package for digital independence (adopted June 2026); it includes the EU Open Source Strategy among other initiatives
- [Interoperability Regulation (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj): EU regulation on measures for a high level of interoperability in the public sector; referenced explicitly in Digg's policy and guidelines
- [Standard for Public Code Community](https://github.com/standard-for-public-code): community for the Standard for Public Code
