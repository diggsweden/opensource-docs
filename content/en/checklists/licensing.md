---
title: "Licensing"
description: "Checklist for licence selection, REUSE/SPDX marking and compatibility assessment in projects"
weight: 40
---

**Purpose:** Support for licence selection and licence handling in projects.

## A. Contributing to an existing project?

- [ ] **MUST**: It is identified whether this is a contribution to an existing open source project.
- [ ] **MUST**: If yes: the project's existing licence is known and judged acceptable for the organisation.
- [ ] **MUST**: Copyleft effects on the organisation's use are assessed. Copyleft (e.g. GPL) requires further development to be shared under the same licence, which can spread to your own code.

## B. New project — choice of licence model

The Digg guidelines say that the licence choice shall be made on the basis of the project's purpose: *"sometimes it is most important to ensure that further development remains open, sometimes to enable both open and closed further development"*.
This checklist's recommendations:

1. **When further development must remain open** (typically platform/infrastructure): a copyleft licence, in order of priority **EUPL 1.2**, GPL-3.0, AGPL-3.0.
2. **When both open and closed further development is to be allowed**: a permissive licence, MIT or Apache License 2.0.

- [ ] **MUST**: A decision has been made on the copyleft strategy (further development must remain open, or may be either open or closed).
- [ ] **MUST**: The chosen licence is OSI-approved, i.e. listed as open source by the Open Source Initiative. See [opensource.org/licenses](https://opensource.org/licenses).
- [ ] **SHOULD**: For platform/infrastructure projects, EUPL 1.2 (European Union Public Licence) has been considered. It is legally binding in Swedish, compatible with several member states' legislation, and handles SaaS distribution.
- [ ] **MUST**: The licence choice is documented **before** development begins, so that contributors know the terms from the first commit.
- [ ] **SHOULD**: Legal/OSPO has been consulted where required.

## C. Dependencies and compatibility

- [ ] **MUST**: All third-party libraries and dependencies have been inventoried with their licences.
- [ ] **MUST**: A compatibility assessment has been made, e.g. that copyleft dependencies do not force your main licence to copyleft. Tool: [Joinup Licence Compatibility Checker](https://joinup.ec.europa.eu/collection/eupl/solution/joinup-licensing-assistant).
- [ ] **MUST**: It is documented how third-party licence information is provided (e.g. a `NOTICE` file with attributions).
- [ ] **SHOULD**: For GPL: the version (v2/v3) is actively chosen and applied consistently.
- [ ] **SHOULD**: For AGPL: the consequences of the network clause for SaaS use are understood. AGPL requires source code to be made available even to users who only reach the service over a network.

## D. Copyright and marking (REUSE/SPDX)

- [ ] **MUST**: The project follows the [REUSE specification](https://reuse.software/): every file has an `SPDX-License-Identifier` (which licence) and `SPDX-FileCopyrightText` (who holds the copyright). REUSE/SPDX are machine-readable standards for file-level marking.
- [ ] **MUST**: The project has clear copyright notices (year, organisation, co-authors as relevant).
- [ ] **MUST**: A licence file (`LICENSE`) is present at the root.
- [ ] **MUST**: A `NOTICE` file is present where required (e.g. for Apache 2.0 with third-party attribution).
- [ ] **SHOULD**: The project aims to meet [ISO/IEC 5230 (OpenChain)](https://www.iso.org/standard/81039.html) for licence management where reasonable. This is an international standard for organisational licence compliance.

## E. Documentation and other material

- [ ] **MUST**: The licence for documentation, examples and configuration is chosen and clear. The code licence does not normally cover text and illustrations.
- [ ] **MUST**: Documentation is released under a permissive licence (e.g. CC0, CC BY 4.0, CC BY-SA 4.0).

## F. Support and escalation

- [ ] **MUST**: A contact route for licensing questions (legal, OSPO) is known.
- [ ] **MUST**: The licence decision is documented (e.g. in a project description linked to a registry number; see [Recordkeeping and archiving](../recordkeeping-and-archiving/)).
