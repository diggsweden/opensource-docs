---
title: "Standards, specifications and principles"
description: "Overview of standards and frameworks the checklists build on"
weight: 200
---

**Purpose:** Overview of the standards, specifications and frameworks the checklists build on. For operational check-points, see the respective checklist.

---

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

---

## Licence specifications

**[REUSE specification](https://reuse.software/)**: clear and standardised licence compliance.  
→ *See:* [Licensing](../licensing/), [Release preparation](../release-preparation/)

**[ISO/IEC 5230 (OpenChain)](https://www.openchainproject.org/)**: Open Source License Compliance.  
→ *See:* [Licensing](../licensing/)

**[SPDX (ISO/IEC 5962)](https://spdx.dev/)**: licence and SBOM format.  
→ *See:* [Licensing](../licensing/), [Security](../security/)

**[EUPL 1.2](https://joinup.ec.europa.eu/collection/eupl)**: European Union Public Licence; legally binding in Swedish, handles SaaS, compatible with several member states' legislation.  
→ *See:* [Licensing](../licensing/)

---

## Commits and versioning

**[Conventional Commits](https://www.conventionalcommits.org/)**: structured project history.  
→ *See:* [Release preparation](../release-preparation/)

**[Keep a Changelog](https://keepachangelog.com/)**: user-friendly release history.  
→ *See:* [Release preparation](../release-preparation/)

**[Semantic Versioning 2.0.0](https://semver.org/)**: consistent version numbering.  
→ *See:* [Release preparation](../release-preparation/)

---

## Community and collaboration

**[Contributor Covenant](https://www.contributor-covenant.org/)**: code of conduct for respectful and inclusive collaboration.  
→ *See:* [Issues and contributions](../issues-and-contributions/)

**[Developer Certificate of Origin (DCO)](https://developercertificate.org/)**: contributors certify the right to contribute.  
→ *See:* [Upstream contribution](../upstream-contribution/)

**[TODO Group](https://todogroup.org/)**: OSPO practice and policy templates.  
→ *See:* [Upstream contribution](../upstream-contribution/)

---

## Security and quality

**[OpenSSF OSPS Baseline](https://baseline.openssf.org/)**: minimum security controls at three maturity levels. (The guidelines explicitly state that recommendations from OpenSSF should be used where relevant.)  
→ *See:* [Security](../security/), [Working on a code-collaboration platform](../platform/), [Release preparation](../release-preparation/)

**[OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software)**: 29 practices for secure software development.  
→ *See:* [Security](../security/), [Working on a code-collaboration platform](../platform/)

**[OpenSSF Scorecard](https://github.com/ossf/scorecard)**: assess and improve security health.  
→ *See:* [Security](../security/)

**[Sigstore](https://www.sigstore.dev/)**: artefact signing (cosign) and provenance.  
→ *See:* [Security](../security/)

**[SLSA](https://slsa.dev/)**: Supply-chain Levels for Software Artifacts.  
→ *See:* [Security](../security/)

**[ISO/IEC 18974](https://www.iso.org/standard/86529.html)**: Security Assurance.  
→ *See:* [Security](../security/)

**[ISO/IEC 27001/2](https://www.iso.org/standard/27001)**: information classification and information security.  
→ *See:* [Security](../security/)

**[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**: Application Security Verification Standard. (The guidelines explicitly cite OWASP as a reference framework.)  
→ *See:* [Security](../security/)

**[OWASP Cheatsheets](https://cheatsheetseries.owasp.org/)** and [OWASP Software Developer Guide](https://owasp.org/www-project-developer-guide/release/).  
→ *See:* [Security](../security/)

**[CycloneDX](https://cyclonedx.org/)**: SBOM format, alternative to SPDX.  
→ *See:* [Security](../security/)

**[SAFECode Fundamental Practices for Secure Software Development](https://safecode.org/publications/)**  
→ *See:* [Security](../security/)

**[CNCF Security TAG — Software Supply Chain Best Practices](https://github.com/cncf/tag-security/blob/main/supply-chain-security/supply-chain-security-paper/CNCF_SSCP_v1.pdf)**  
→ *See:* [Security](../security/)

---

## Metadata and discoverability

**[PublicCode.yml specification](https://yml.publiccode.tools/)**: metadata indexing for better discoverability.  
→ *See:* [Release preparation](../release-preparation/)

**[Standard for Public Code](https://standard.publiccode.net/)**: 16 criteria for quality and sustainability in public code.  
→ *See:* [Release preparation](../release-preparation/), [Security](../security/), [Issues and contributions](../issues-and-contributions/)

---

## Regulations and ordinances

**[Interoperability Regulation (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj)**: EU regulation on measures for a high level of interoperability in the public sector. Referenced explicitly in Digg's policy and guidelines.  
→ *See:* [Procurement](../procurement/)

**[European Interoperability Framework (EIF)](https://ec.europa.eu/isa2/eif_en/)**: recommendations for interoperability.  
→ *See:* [Procurement](../procurement/)

**[SOU 2009:86](https://www.regeringen.se/rattsliga-dokument/statens-offentliga-utredningar/2009/10/sou-200986/)** (in Swedish): Strategy for the public agencies' work with e-government. Defines open standards for procurement.  
→ *See:* [Procurement](../procurement/)

**[Freedom of the Press Act (1949:105)](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/tryckfrihetsforordning-1949105_sfs-1949-105/)** (in Swedish): public access to records.  
→ *See:* [Recordkeeping and archiving](../recordkeeping-and-archiving/)

**[Public Access to Information and Secrecy Act (2009:400)](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/offentlighets--och-sekretesslag-2009400_sfs-2009-400/)** (in Swedish)  
→ *See:* [Recordkeeping and archiving](../recordkeeping-and-archiving/)

**[GDPR / Data Protection Regulation](https://www.imy.se/lagar--regler/dataskyddsforordningen/)**: when personal data appears in open code, issues or pull requests.  
→ *See:* [Recordkeeping and archiving](../recordkeeping-and-archiving/), [Security](../security/)

---

## External resources and community

### Education and knowledge

- [opensource.guide](https://opensource.guide): training in open source
- [European Commission Open Source Strategy](https://commission.europa.eu/about-european-commission/departments-and-executive-agencies/informatics/open-source-software-strategy_en): referenced in the policy

### Swedish public sector

- [diggsweden/open-source-project-template](https://github.com/diggsweden/open-source-project-template): implementation template
- [NOSAD (Network for Open Source And Data)](https://nosad.se) (in Swedish): guidance, templates, strategic documents
  - [NOSAD's guidance on procurement of open source](https://nosad.se/upphandling-oss) (in Swedish)
- [Kammarkollegiet's guidance](https://www.kammarkollegiet.se) (in Swedish): call-offs from the framework agreement *Software and Services*
- [Inköpsrådet's article series](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/) (in Swedish): procurement and open source
- [offentligkod.se](https://offentligkod.se) (in Swedish): catalogue of open source software
- [Sweden's data portal](https://www.dataportal.se): community forum for the public sector

### International resources

- [EU Open Source Solutions Catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue)
- [Joinup](https://joinup.ec.europa.eu/): the EU's platform for open source and interoperability
- [Foundation for Public Code](https://www.publiccode.net/)
