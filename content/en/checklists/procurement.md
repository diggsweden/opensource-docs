---
title: "Procurement"
description: "Checklist for procurement officers, requirements specifiers and system owners when open source software is being considered or selected"
weight: 10
---

**Purpose:** Support for procurement officers, requirements specifiers and system owners when open source software is being considered or selected.

**What this checklist covers — and doesn't:** It only lists what is specific to open source software. General procurement requirements — information security, IT security, operations, architecture, TCO, recordkeeping, appointed system owner etc. — are assumed to be handled according to your ordinary processes and are not covered here.

When procuring open source software the rules are different from traditional software procurement: the software itself is freely available and what is procured are the services around it (implementation, support, maintenance, training). Requirements specifiers and procurement officers can therefore name specific open source software directly in the procurement document; competition shifts to the services instead of the product choice, which counters vendor lock-in.

This is explicitly permitted by Kammarkollegiet's [guidance for call-offs from *Software and Services*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf) (in Swedish), section 3.3 "Software with open source code":

> The buyer may set a mandatory requirement for specific named software which in its entirety is licensed under one or more licences approved by the Open Source Initiative (OSI), is free and open for all suppliers to use (no reseller status required, for example).
>
> The buyer may set mandatory requirements for standards if the standard meets the open-standard criteria of SOU 2009:86.

## A. Preparation — needs and requirements

- [ ] **MUST**: Open source has been considered as the first choice. If another option is chosen, a documented justification exists — applies both when proprietary software is chosen instead and when open source is not appropriate or possible (deviation decision). Suitable grounds: functional, technical, security or financial reasons.
- [ ] **SHOULD**: Digg's [Swedish framework for digital interaction](https://www.digg.se/kunskap-och-stod/svenskt-ramverk-for-digital-samverkan) (in Swedish) and the [Interoperability Regulation (EU) 2024/903](https://eur-lex.europa.eu/eli/reg/2024/903/oj) have been consulted for open standards and interoperability.

## B. Basic evaluation of candidate projects

The project chosen should have undergone a basic evaluation — particularly with regard to project health (is it active and well-maintained?), security (does the project demonstrate good security practices?) and licence terms (are they compatible with your purposes?). The points below are starting points, not an exhaustive review.

- [ ] **MUST**: The project is updated regularly ([commits/code changes, releases, issues](../../glossary/)).
- [ ] **MUST**: There is a clear primary actor or organisation behind the project.
- [ ] **MUST**: Bug reports and improvement suggestions are handled within a reasonable time.
- [ ] **MUST**: The licence is identified, OSI-approved and compatible with how the organisation intends to use the software (operation, modification, possibly own publication). See [Licensing](../licensing/).
- [ ] **MUST**: The project demonstrates good security practices. Examples (not all required): documented security handling (the `SECURITY.md` file, vulnerability policy), an SBOM (composition), release signatures (authenticity), a clear support window (how long it is security-updated), or a health assessment such as [OpenSSF Scorecard](https://scorecard.dev/) or equivalent.
- [ ] **MUST**: The "as is" terms of the software and the organisation's quality and risk responsibility are understood. Open source software is provided without warranty; responsibility for operation and quality rests with the user.
- [ ] **SHOULD**: There is an active community around the project.
- [ ] **SHOULD**: It is clear how to contribute (the `CONTRIBUTING.md` file, governance, code review).

## C. Further support

- [Kammarkollegiet's guidance for call-offs from *Software and Services*](https://www.avropa.se/globalassets/bilagor/1.-aktuella-rao/programvaror-och-tjanster/avropsstod-samtl-delomraden/vagledning-programvaror--och-tjanster.pdf) (in Swedish): general call-off support; refers to the Requirements catalogue and other agreement documents.
- Inköpsrådet's article series on procurement and open source (four parts, in Swedish):
  - Part 1: [Share costs and avoid lock-in](https://inkopsradet.se/upphandling/dela-kostnader-och-undvik-inlasningar/)
  - Part 2: [Find open source that meets the requirements](https://inkopsradet.se/upphandling/hitta-oppen-kallkod-som-klarar-kraven/)
  - Part 3: [Developed and stewarded together](https://inkopsradet.se/utvecklas-och-forvaltas-tillsammans/)
  - Part 4: [Avoid lock-in in IT procurement](https://inkopsradet.se/undvik-inlasning-vid-it-upphandling/)
- [NOSAD: guidance on procurement of open source](https://nosad.se/upphandling-oss) (in Swedish).
