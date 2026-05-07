---
title: "Release preparation"
description: "Baseline check before open publication: decisions, responsibilities, documentation, licensing and release practice"
weight: 70
---

**Purpose:** Ensure that a project is safe to publish openly, intelligible to use and clear to the outside world.

**Practical start:** For new projects, or internal projects that are being opened up, consider starting from the [Template project for open source software](../../project-template/).
The template helps with standard files, REUSE support, `publiccode.yml`, issue/PR templates and basic CI structure.
Always verify that content, contact routes and workflows are adapted to the actual project.

**Detailed controls:** This checklist gathers the baseline requirements before publication.
When an item concerns security, licensing or the code-collaboration platform, it links to the relevant specialist checklist where the details live.

**Next step:** Once the basic requirements are met and the project is approaching a stable release, see [Release 1.0.0](../release-1.0/).

## A. Decisions, responsibilities and maintainers

The Digg guidelines' responsibility model:

| Role | Responsibility |
|---|---|
| Department/operational manager (information owner) | Overall compliance within the operation |
| System owner / operational unit manager | The software is handled in line with the guidelines; risks, licences, dependencies and security are followed up |
| Operational team | Day-to-day work with code, dependencies, issues, external contributions, documentation |

- [ ] **MUST**: The decision to publish openly is made by an authorised manager/system owner and recorded. Any deviations from policy/guidelines are justified and recorded. The link between case and repository is documented. See [Recordkeeping and archiving](../recordkeeping-and-archiving/).
- [ ] **MUST**: The operational team is identified and informed. If the project concerns several information owners, the division of responsibility is clarified.
- [ ] **MUST**: Maintainers are identified in the README. Use `CODEOWNERS` where responsibility per file area needs to be identified. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: The issue tracker is public and turned on for as long as the service is actively developed. See [Handling of issues, questions and external contributions](../issues-and-contributions/).
- [ ] **MUST**: Contributors certify the right to contribute, either via a DCO (Developer Certificate of Origin: signed commits with `Signed-off-by:`) or via a CLA (Contributor License Agreement). This ensures that we have the right to take in the code. See [Upstream contribution](../upstream-contribution/) for the contributor side.
- [ ] **SHOULD**: Operational teams have basic knowledge of established working practices, secure development and licence management. See [opensource.guide](https://opensource.guide/).
- [ ] **SHOULD**: The software is publicly available on the Internet **already during development** (source code, documentation, build scripts). Open development is the default, not a finished delivery.

## B. Security before publication

General security requirements (information classification, risk analysis, secure systems development) follow Digg's IT-security guideline and Information-handling guideline.
The detailed open source controls are in [Security](../security/).

- [ ] **MUST**: Information classification is complete and the project is assessed as suitable for open publication.
- [ ] **MUST**: The security review described in [Security](../security/) has been carried out. It covers sensitive data in code, logs, test data and configuration, as well as the reporting route for vulnerabilities.
- [ ] **MUST**: Code review and change flow follow [Working on a code-collaboration platform](../platform/).

## C. Licence and rights

- [ ] **MUST**: The licence choice is made and documented according to [Licensing](../licensing/). The licence is OSI-approved, suitable for the project's purpose and documented in `LICENSE`.
- [ ] **MUST**: REUSE/SPDX marking and dependency licences are verified according to [Licensing](../licensing/).
- [ ] **MUST**: Deviation decisions (if a proprietary solution is chosen) are approved by the IT manager and documented.
- [ ] **SHOULD**: The project aims to meet [ISO/IEC 5230 (OpenChain)](https://www.iso.org/standard/81039.html) for licence management where reasonable. This is an international standard for organisational licence compliance.

## D. Documentation and project health

Projects shall give users a clear picture of what the solution does, how it is used, what prerequisites apply and under what licence terms it is provided.
Use the [Template project for open source software](../../project-template/) as the starting point for standard files.

- [ ] **MUST**: Standard files and baseline documentation are present and adapted to the project, not just copied from a template.
- [ ] **MUST**: The README or equivalent front page describes what the project does, for whom, in which environment, and how the software is installed and run.
- [ ] **MUST**: There are instructions for development, building and external contributions, including quality requirements and test expectations.
- [ ] **MUST**: Contact routes, code of conduct and acknowledgement of contributors are documented.
- [ ] **MUST**: Usage documentation, architecture description and relevant external interfaces are documented so that other public authorities can assess reusability without reading the entire codebase.
- [ ] **SHOULD**: Documentation is written in plain language and adapted to a broader audience.

## E. Status, stewardship and support window

- [ ] **MUST**: Status and maturity are clear (actively maintained, archived/closed, alpha/beta/stable/deprecated).
- [ ] **MUST**: The stewardship plan describes handling of issues and pull requests, dependency updates, release communication and responsibility for security issues. See [Handling of issues, questions and external contributions](../issues-and-contributions/) and [Security](../security/).
- [ ] **SHOULD**: A support window ("security updates until YYYY-MM-DD") is published, so that users know how long they can rely on updates.

## F. Publication

- [ ] **MUST**: The project name has been checked against existing projects, trademarks and search results.
- [ ] **MUST**: The project is in the right organisation/space at the Git provider and visibility (public) is correctly set in line with the information classification.
- [ ] **MUST**: Any external communication (web, data portal, community) is planned.

## G. Versioning and releases

- [ ] **MUST**: The project uses [Semantic Versioning 2.0.0](https://semver.org/) (X.Y.Z, i.e. major/minor/patch); stable APIs are supported and deprecation is flagged early. Many projects remain in 0.x for a long time while the API stabilises — see [SemVer FAQ: When to release 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
- [ ] **MUST**: Release tags are used. Each released version is tagged in version control so users can locate and verify the exact code.
- [ ] **MUST**: Project history and release history are structured with [Conventional Commits](https://www.conventionalcommits.org/) and [Keep a Changelog](https://keepachangelog.com/). Upgrade instructions in the changelog or release notes make it easy for end users to upgrade.
- [ ] **MUST**: Releases are signed and have verification instructions according to [Security](../security/).

## H. Quality, discoverability and public code

- [ ] **MUST**: A `publiccode.yml` is used where applicable. This is a standardised metadata file that is indexed by catalogues such as [Joinup EU catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue) and [offentligkod.se](https://offentligkod.se), so that the project becomes discoverable.
- [ ] **SHOULD**: The project is assessed for reusability: [Standard for Public Code](https://standard.publiccode.net/) is used as a benchmark and the project is configurable for different contexts (no hard-coded environment- or organisation-specific information).
- [ ] **MUST**: If the project is intended to run in the agency's own internal environments, it must also be buildable and deployable there, in line with the agency's internal developer guidelines.
- [ ] **SHOULD**: The project's goals and roadmap are documented. If the project implements rules or policy as code, the source of the rule/policy is bundled in the repository so that code and policy source can be compared.
