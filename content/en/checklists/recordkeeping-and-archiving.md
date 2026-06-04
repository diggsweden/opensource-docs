---
title: "Recordkeeping and archiving"
description: "Checklist for safe handling of projects as official records under the principle of public access to information"
weight: 100
---

**Purpose:** Handle a project's publication and archiving as official records under the principle of public access to information.

**Scope:** This checklist lists what is specific to open source software. General recordkeeping, archival reporting and disposal are assumed to follow your ordinary processes.

## A. Recordkeeping

- [ ] **MUST**: The decision to publish the source code externally is registered, including supporting documents such as the licence choice and the risk and security assessment.
- [ ] **MUST**: The link between the registry entry and the repository (URL/ID) is documented, so that the registry can be traced to its code and vice versa.
- [ ] **MUST**: Any agreements or arrangements on joint development are registered.
- [ ] **MUST**: The decision to close down or archive the project is registered.

## B. Archiving

- [ ] **MUST**: The project's status is updated (e.g. archived on the code-collaboration platform, noted in the README).
- [ ] **MUST**: Any records to be preserved outside the platform have been exported in accordance with the archival function's instructions.

## C. Disposal and GDPR

- [ ] **MUST**: If personal data has appeared in issues, pull requests or commit messages, a GDPR assessment has been carried out. Personal data may remain in the git history even after it has been removed from the current version.

## How information on code-collaboration platforms is handled

A code-collaboration platform for open source software holds at least three types of information. All are traceable, searchable and stored publicly — the history is preserved, and nothing is normally disposed of.

- **Code, system documentation and images** — version-controlled. Each commit gets a unique identifier (SHA) so that an exact version can always be recreated. Releases (1.0.0, 1.1.0 …) with a changelog add further traceability, but do not occur in every project.
- **Questions and issues** — each issue gets an id that remains even after it is closed or the repository is archived, and can be searched afterwards (full text, author and so on).
- **Code contributions (pull/merge requests, PR/MR)** — work like issues: the id is preserved and they are searchable afterwards.

**What to consider when archiving.** The platforms used are often external cloud services from a third-party provider — what is there today is not always guaranteed to be there tomorrow, as terms and features can change. Archive in open, well-defined formats that can be recreated without depending on a particular piece of software:

- **Code and documentation:** preferably plain text in UTF-8 (e.g. Markdown or AsciiDoc) and images in an open format (PNG, SVG, WebP, AVIF and so on). Export the whole repository with its history.
- **Issues and code contributions:** export via the platform's API, normally as JSON.

Preservation formats should follow [the Swedish National Archives' requirements for electronic records](https://riksarkivet.se/arkivera-och-forvalta/medium-och-format/elektroniska-handlingar). These requirements are currently being [reviewed](https://riksarkivet.se/projekt/oversyn-av-riksarkivets-foreskrifter-och-allmanna-rad-om-elektroniska-handlingar); the proposals are not yet adopted (2025–2026), so check against the latest version.
