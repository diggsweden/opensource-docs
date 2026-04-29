---
title: "Release preparation"
description: "Checklist for release preparation: maintainer declaration, versioning and baseline requirements"
weight: 70
---

**Purpose:** Ensure that open projects are safe to publish, intelligible to use and clear to the outside world.

**Next step:** Once the basic requirements are met and the project is approaching a stable release, see [Release 1.0.0](../release-1.0/).

## A. Decisions, responsibilities and maintainers

The Digg guidelines' responsibility model:

| Role | Responsibility |
|---|---|
| Department/operational manager (information owner) | Overall compliance within the operation |
| System owner / operational unit manager | The software is handled in line with the guidelines; risks, licences, dependencies and security are followed up |
| Operational team | Day-to-day work with code, dependencies, issues, external contributions, documentation |

- [ ] **MUST**: The decision to publish is made by an authorised manager/system owner (information owner).
- [ ] **MUST**: The operational team is identified and informed. If the project concerns several information owners, the division of responsibility is clarified.
- [ ] **MUST**: The link to the registered case (project number, registry number) is documented, so that the project can be traced back to its agency decision. See [Recordkeeping and archiving](../recordkeeping-and-archiving/).
- [ ] **MUST**: The README contains a maintainer section identifying team, individual or role, so that the outside world knows who runs the project.
- [ ] **MUST**: The software is publicly available on the Internet **already during development** (source code, documentation, build scripts). Open development is the default, not a finished delivery.
- [ ] **MUST**: The issue tracker is public and turned on for as long as the service is actively developed. See [Handling of issues, questions and external contributions](../issues-and-contributions/).
- [ ] **MUST**: Contributors certify the right to contribute, either via a DCO (Developer Certificate of Origin: signed commits with `Signed-off-by:`) or via a CLA (Contributor License Agreement). This ensures that we have the right to take in the code. See [Upstream contribution](../upstream-contribution/) for the contributor side.
- [ ] **SHOULD**: A `CODEOWNERS` file is used to identify the responsible parties per file area. See [Working on a code-collaboration platform](../platform/).
- [ ] **SHOULD**: Operational teams have basic knowledge of established working practices, secure development and licence management.

## B. Open-source-specific security checks before publication

General security requirements (information classification, risk analysis, secure systems development) follow Digg's IT-security guideline and Information-handling guideline.
The items below are the controls that are specific to open source software and required *before* the source code goes public.

- [ ] **MUST**: The code has been reviewed so that no sensitive data remains (passwords, API keys, tokens, internal addresses, document links). **Note:** cleaning history is hard; review early.
- [ ] **MUST**: Logs, test data and configuration files containing sensitive information have been removed or masked.
- [ ] **MUST**: It is clear what should be public and what should be internal; the information classification is complete (carried out under the Information-handling guideline).
- [ ] **MUST**: Code review has been carried out. See [Working on a code-collaboration platform](../platform/).

For deeper open-source-specific security requirements, see [Security](../security/).

## C. Licence and rights

- [ ] **MUST**: The licence is chosen in line with Digg's guidelines and is OSI-approved. See [Licensing](../licensing/).
- [ ] **MUST**: A `LICENSE` file is present in the project.
- [ ] **MUST**: The project follows the [REUSE specification](https://reuse.software/) (per-file licence and copyright marking). See [Licensing](../licensing/).
- [ ] **MUST**: Licences for dependencies have been checked and documented.
- [ ] **MUST**: Deviation decisions (if a proprietary solution is chosen) are approved by the IT manager and documented.

## D. Documentation and project health

According to the Digg guidelines §*Documentation, procedures and project health*, projects shall provide a clear picture of what the solution does, how it is used, what prerequisites apply and under what licence terms it is provided.

- [ ] **MUST**: Title and description (what, for whom, in which environment).
- [ ] **MUST**: `LICENSE`: choice of licence covering source code, documentation and other parts.
- [ ] **MUST**: Instructions for installing and running the software.
- [ ] **MUST**: Instructions for setting up a development environment and building.
- [ ] **MUST**: Instructions for how externals can contribute (`CONTRIBUTING.md`).
- [ ] **MUST**: Acknowledgement of contributing parties. A list (e.g. an AUTHORS file or a contributors section) credits the people and organisations whose work is in the project.
- [ ] **MUST**: Code of conduct (`CODE_OF_CONDUCT.md`), e.g. Contributor Covenant. Sets the social ground rules for the community.
- [ ] **MUST**: Contact route for questions and bug reports (issues, email, community).
- [ ] **MUST**: Usage documentation and architecture description relevant to the project.
- [ ] **MUST**: Design documentation showing the system's actors, actions and **external interfaces**, so that other public authorities can assess reusability without reading the entire codebase.
- [ ] **SHOULD**: Documentation is written in plain language and adapted to a broader audience.

## E. Status, stewardship and support window

- [ ] **MUST**: It is clear whether the project is actively maintained or archived/closed.
- [ ] **MUST**: Maturity level is declared (alpha/beta/stable/deprecated).
- [ ] **MUST**: There is a plan for how incoming issues and pull requests will be handled. See [Handling of issues, questions and external contributions](../issues-and-contributions/).
- [ ] **MUST**: An overall strategy for dependency updates is described.
- [ ] **MUST**: A release plan with strategies for communication and dissemination is in place.
- [ ] **MUST**: Someone is appointed responsible for security issues. See [Security](../security/).
- [ ] **SHOULD**: A support window ("security updates until YYYY-MM-DD") is published, so that users know how long they can rely on updates.

## F. Publication

- [ ] **MUST**: The project name has been checked against existing projects and trademarks.
- [ ] **MUST**: A search-engine check has been carried out to ensure the name does not clash.
- [ ] **MUST**: The project is in the right organisation/space at the Git provider.
- [ ] **MUST**: Visibility (public) is correctly set in line with the information classification.
- [ ] **MUST**: Any external communication (web, data portal, community) is planned.

## G. Versioning and releases

- [ ] **MUST**: The project uses [Semantic Versioning 2.0.0](https://semver.org/) (X.Y.Z, i.e. major/minor/patch); stable APIs are supported and deprecation is flagged early. Many projects remain in 0.x for a long time while the API stabilises — see [SemVer FAQ: When to release 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
- [ ] **MUST**: Release tags are used. Each released version is tagged in version control so users can locate and verify the exact code.
- [ ] **MUST**: [Conventional Commits](https://www.conventionalcommits.org/) format is used for structured project history. This makes auto-generated changelogs and version bumps possible.
- [ ] **MUST**: [Keep a Changelog](https://keepachangelog.com/) format is used for clear release history.
- [ ] **MUST**: It is easy for end users to upgrade to new releases (clear upgrade instructions in the changelog/release notes).
- [ ] **MUST**: Releases are signed and have verification instructions. See [Security](../security/).

## H. Quality, discoverability and public code

- [ ] **MUST**: A `publiccode.yml` is in the root folder. This is a standardised metadata file that is indexed by catalogues such as [Joinup EU catalogue](https://interoperable-europe.ec.europa.eu/eu-oss-catalogue) and [offentligkod.se](https://offentligkod.se), so that the project becomes discoverable.
- [ ] **SHOULD**: For a long-term in-house fork of an external project, the fork is registered at [offentligkod.se](https://offentligkod.se) or in [Joinup](https://joinup.ec.europa.eu/), so that other public authorities can find and reuse it.
- [ ] **SHOULD**: The Standard for Public Code is used as a benchmark for quality and sustainability (international standard for public code).
- [ ] **SHOULD**: The project is configurable for different contexts (no hard-coded environment- or organisation-specific information), so that other public authorities can reuse it.
- [ ] **MUST**: If the project is intended to run in the agency's own environments, it must also be buildable and deployable there, in line with the agency's internal developer guidelines.
- [ ] **SHOULD**: The project's goals and roadmap are documented.
- [ ] **SHOULD**: If the project implements rules or policy as code, the source of the rule/policy is bundled in the repository, so that code and policy source can be compared.
