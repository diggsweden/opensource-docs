---
title: "Template project for open source software"
description: "Digg's template for starting new open source projects with the recommended structure"
weight: 35
---

This is the guide to Digg's template project — what it contains, how to use it, and when it fits.

Digg provides a template project to help you start a new open-source software project with the structure and practice that follow Digg's guidelines: community files, [REUSE](../glossary/) licensing, [OpenSSF Scorecard](../glossary/) integration, [Conventional Commits](../glossary/) and alignment with the [Standard for Public Code](../glossary/).

> **The template is in a separate repository:**
> [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template)

## What the template gives you

| Area | Content |
|---|---|
| **Community files** | `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, `GOVERNANCE.md`, `CHANGELOG.md`, `CODEOWNERS` |
| **Licence and compliance** | `LICENSE`, `REUSE.toml`, `publiccode.yml` |
| **GitHub integration** | Issue and pull-request templates, `.github/workflows/` with quality and security checks |
| **Translations** | Swedish parallel versions in `l10n/sv/` |
| **Template files** | `templates/` with all the files to be copied into your project, with `INSERT_*` placeholders |

The role of each file is explained in detail in the template's own [`README`](https://github.com/diggsweden/open-source-project-template).

## How to use the template

1. Create a new empty repository for your project.
2. Copy the files under `templates/` from [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template) into your new repository.
3. Search and replace placeholders with your project's details. The template uses an `INSERT_*` convention (e.g. `INSERT_CONTACT_METHOD`, `INSERT_DAYS`, `INSERT_PROJECT_NAME`); the full list is in the template's own [`README`](https://github.com/diggsweden/open-source-project-template).
4. Choose a suitable [OSI](../glossary/)-approved licence for the project — see the [Licensing checklist](../checklists/licensing/) for guidance.
5. Work through the [checklists](../checklists/) for publication, security and stewardship.

## When the template fits and when it does not

The template is general and developed for Digg's own projects, but it works for **any public-sector body** that wants to start a structured open project.
It does not assume any particular programming language or framework.

For projects that are **not** to become open in Digg's sense (internal tools, prototypes commissioned directly for Digg's own use) there is separate internal documentation.
See [Working on GitHub](../working-on-github/) for the dividing line.

## Contribute to the template

Suggestions and corrections for the template itself are received directly in [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template), where the template's own `CONTRIBUTING.md` lives.

## See also

- [Working on GitHub](../working-on-github/): account setup, security, issue handling and publication
- [Checklists](../checklists/): publication, security, licensing, stewardship
- [Glossary](../glossary/): terms like REUSE, OSI, OpenSSF Scorecard, Standard for Public Code
