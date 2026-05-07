---
title: "Licensing"
description: "Checklist for licence selection, REUSE/SPDX marking and compatibility assessment in projects"
weight: 40
---

**Purpose:** Support for licence selection and licence handling in projects.

## Existing project

When contributing to an existing project, the project has an OSI-approved licence (or [Creative Commons](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt) / equivalent for open data; Digg's recommendation, in Swedish) and requires no CLA.

## New project

The Digg guidelines say that the licence choice shall be made on the basis of the project's purpose: *"sometimes it is most important to ensure that further development remains open, sometimes to enable both open and closed further development"*.
This checklist's recommendations:

1. **When further development must be guaranteed to remain open** (typically platform/infrastructure): a copyleft licence, in order of priority EUPL, GPL, AGPL. The EUPL (European Union Public Licence) is legally binding in Swedish, compatible with several member states' legislation, and handles SaaS distribution.
2. **When both open and closed further development is to be allowed**: a permissive licence, MIT or Apache License 2.0.
3. **When the ecosystem has an established licence convention**: factor it in — e.g. LGPL for an ffmpeg-related library, Apache 2.0 for a Spring extension, MIT for a JavaScript component. Matching the ecosystem makes adoption and integration easier.

The code licence does not normally cover text and illustrations. For documentation, examples and configuration, choose a separate permissive licence (e.g. CC0, CC BY 4.0, CC BY-SA 4.0); see [Digg's recommendation on open licences and intellectual property](https://www.digg.se/kunskap-och-stod/oppna-och-delade-data/rekommendation-om-oppna-licenser-och-immaterialratt) (in Swedish).

The chosen licence shall be OSI-approved, i.e. listed by the [Open Source Initiative](https://opensource.org/licenses). The licence choice is documented before development work begins, so that contributors know the terms from the first commit. Consult legal or OSPO where required.

