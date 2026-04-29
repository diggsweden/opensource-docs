---
title: "Procurement"
description: "Checklist for procurement officers, requirements specifiers and system owners when open source software is being considered or selected"
weight: 10
---

**Purpose:** Support for procurement officers, requirements specifiers and system owners when open source software is being considered or selected.

## A. Preparation — needs and requirements

- [ ] **MUST**: The business need is described (what, for whom, in which environment).
- [ ] **MUST**: When procuring open source software, services are procured (implementation, support, maintenance, training), not the software itself (which is freely available).
- [ ] **MUST**: Requirements specifiers and procurement officers propose specific open source software in the procurement document. This eases the procurement and counters vendor lock-in.
- [ ] **MUST**: The Swedish Legal, Financial and Administrative Services Agency's (Kammarkollegiet) guidance has been consulted: a mandatory requirement for specific named open source software with an OSI-approved licence may be set in procurement.
- [ ] **MUST**: Information-security requirements are identified (information classification).
- [ ] **MUST**: IT-security requirements are identified (logging, patching, operating environment).
- [ ] **MUST**: Interoperability and open-standards requirements are formulated in line with the [Interoperability Regulation (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj) and the European Interoperability Framework (EIF). Digg's policy and guidelines reference the regulation explicitly.
- [ ] **MUST**: Open source has been considered as the first choice. If another option is chosen, a justification is provided.

## B. Choice of project or solution

### Functionality and fit

- [ ] **MUST**: The open source solution meets the central functional requirements.
- [ ] **MUST**: The solution can run in the organisation's technical environment (platforms, integrations).

### Project health

- [ ] **MUST**: The project is updated regularly (commits, releases, issues).
- [ ] **MUST**: There is a clear primary actor or organisation behind the project.
- [ ] **MUST**: Bug reports and improvement suggestions are handled within a reasonable time.
- [ ] **MUST**: The project has documented security handling (`SECURITY.md`, vulnerability policy).
- [ ] **SHOULD**: The project provides an SBOM (composition), release signatures (authenticity) and a support window (how long it is security-updated).
- [ ] **SHOULD**: The OpenSSF Scorecard score, or an equivalent health assessment, has been reviewed. Scorecard gives an automatic score on the project's security practices.

### Community and governance

- [ ] **MUST**: There is an active community around the project.
- [ ] **MUST**: It is clear how to contribute (`CONTRIBUTING.md`, governance, code review).

## C. Licence, terms and liability

- [ ] **MUST**: The licence is identified and OSI-approved. See [Licensing](../licensing/).
- [ ] **MUST**: The licence is compatible with how the organisation intends to use the software (operation, modification, possibly own publication).
- [ ] **MUST**: Third-party licences are identified and assessed for compatibility.
- [ ] **MUST**: The "as is" terms of the software and the organisation's quality and risk responsibility are understood. Open source software is provided without warranty; responsibility for operation and quality rests with the user.

## D. Security and operations

For deeper assessment criteria around open source security, see [Security](../security/).

- [ ] **MUST**: Procedures for monitoring and handling vulnerabilities and security updates are clear.
- [ ] **MUST**: Support for logging, monitoring and operations exists in the organisation's IT environment.
- [ ] **MUST**: The solution fits the organisation's architecture (integrations, dependencies, networks).
- [ ] **SHOULD**: Total Cost of Ownership (TCO) over the lifecycle has been estimated. TCO includes not only the licence but also operations, integration, skills and stewardship.
- [ ] **SHOULD**: An exit or migration plan exists, even when the alternative is open source. Lock-in can occur even with specific open source projects.

## E. Decision documentation

- [ ] **MUST**: Assessment and choice/non-choice are documented.
- [ ] **MUST**: If proprietary software is chosen instead of open source: the decision is motivated and documented (functional, technical, security or financial reasons).
- [ ] **MUST**: When open source is not appropriate or possible, there is a documented justification (deviation decision).
- [ ] **MUST**: A system owner or product owner is appointed and informed.
- [ ] **MUST**: The decision is recorded in the registry. See [Recordkeeping and archiving](../recordkeeping-and-archiving/).

## F. Procurement rules for open source software

- [ ] **MUST**: It is understood that Kammarkollegiet's framework agreement *Software and Services* allows mandatory requirements for specific named software with an OSI-approved licence that is free and open for any supplier to use.
- [ ] **MUST**: It is understood that mandatory open-standards requirements may be set if the standard meets the criteria of SOU 2009:86.

## G. Support and guidance

- [ ] **MUST**: Kammarkollegiet's guidance on call-offs from *Software and Services* has been consulted (contains the full quote in the "Requirements catalogue" appendix).
- [ ] **MUST**: [NOSAD's guidance on procurement of open source](https://nosad.se/upphandling-oss) (in Swedish) has been consulted.
- [ ] **SHOULD**: Inköpsrådet's article series on procurement and open source has been consulted: [Share costs and avoid lock-in](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/) (part 1, in Swedish).

---

> **Appendix from Kammarkollegiet's guidance (translated):**
> The buyer may set a mandatory requirement for specific named software which in its entirety
> - is licensed under one or more licences approved by the Open Source Initiative (OSI),
> - is free and open for all suppliers to use (no reseller status required, for example).
>
> The buyer may set mandatory requirements for standards if the standard meets the open-standard criteria of SOU 2009:86.
