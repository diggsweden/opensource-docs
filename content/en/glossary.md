---
title: "Glossary"
description: "Concepts and terms used in this handbook"
weight: 50
---

This is the handbook's glossary — synonymous names for the field plus explanations of technical concepts and terms.

## Names for the field

The terms below all refer to the same thing: **software whose source code is open and freely available to use, study, modify and share**.
Different names emerged for historical reasons (the free software movement vs the open source movement, which we do not address in detail here).

| Term | Description |
|---|---|
| Open source | The most common and most search-friendly name internationally. |
| Free and open source software | Captures the freedom aspect (to use, study, share and improve the software) more explicitly than *open source* alone. |
| FLOSS, FOSS | International abbreviations. **FLOSS** = *free, libre and open source software*. **FOSS** = *free and open source software*. FLOSS adds *libre* (from French/Spanish for "free") to clarify that *free* refers to freedom, not price. |

## Concepts and terms

The table below explains terms that appear in this handbook.

| Term | Description |
|---|---|
| Archiving | Use of a project's Archive function on GitHub. The project remains open and accessible, but is marked as inactive to the outside world. |
| Branch | A parallel line of code development in a repository, e.g. for a new feature or a patch. |
| Branch protection | A setting on the code-collaboration platform that prevents direct push to protected branches (e.g. `main`). Changes must go through pull requests, and requirements such as code review and passing tests can be made mandatory before merge. |
| Bug | A defect or unwanted behaviour in the software. |
| Changelog | A file listing changes between versions (usually `CHANGELOG.md`). Contains technically detailed entries per release: new features, fixes, breaking changes, in chronological order. **Audience:** developers, integrators and maintainers who need to know exactly what has changed. Common format: [Keep a Changelog](https://keepachangelog.com/). |
| CLA and DCO | Two ways for contributors to certify the right to contribute. **DCO** (Developer Certificate of Origin) is a short certification signed by adding `Signed-off-by:` to the commit message. Common in the Linux kernel and similar projects. **CLA** (Contributor License Agreement) is a more formal agreement signed separately. Common in corporate-led projects. As a rule, we do not contribute to projects that require a CLA, and an individual employee must never sign a CLA without first contacting legal. |
| Collaboration spaces for open source | Our two spaces on GitHub at present. The documentation does not cover internal, non-public spaces. |
| Commit | A saved change in version control, usually with a short message describing what changed and why. |
| Community | The people around a project: users, contributors, maintainers and others who follow or take part. |
| Community health files | Standard files in a project that make collaboration easier — e.g. `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`. |
| Contributor | Someone who proposes a change to a project via a pull request or comment. Distinct from a **maintainer**, who reviews and merges contributions. A single person can be both, in different contexts. |
| Conventional Commits | A structured format for commit messages (e.g. `feat:`, `fix:`, `docs:`). Enables automatic generation of changelogs and version bumps. See [conventionalcommits.org](https://www.conventionalcommits.org/). |
| Copyleft and permissive licences | Two main types of open source licences. **Copyleft** licences (e.g. GPL, AGPL, EUPL) require derivative works to be published under the same licence — the freedom "carries over". **Permissive** licences (e.g. MIT, Apache 2.0, BSD) allow derivative works under any licence, including closed. **Note:** the word *copyleft* is a play on *copyright* (right → left). It is a *hack* of the word, not a political position. Hackers of old were often particularly fond of such wordplay. |
| Fork | An independent copy of a project's repository, made so you can develop further on your own or contribute back. |
| GitHub Organisation | A collaboration space on GitHub is called an *Organisation*, and an Organisation contains many repositories. |
| Hacker | In the original, positive sense: a person who explores and rebuilds systems with creativity and curiosity, often using inventive shortcuts and elegant solutions. The term comes from the early MIT computing environments of the 1960s and lives on in open source culture. The mainstream press has since also come to mean *cybercriminal*, but that is a deviation from the original meaning. |
| Inactive users | Staff (employees or consultants) who have left, whose engagement has ended, or who are not active and do not plan to be active on Digg's GitHub for an extended period. |
| Issue | A reported task, question, bug or feature request, usually in the project's issue tracker. |
| Maintainer | The person or persons responsible for a project's stewardship: reviewing contributions, merging pull requests, releasing new versions and responding to issues. |
| Merge | To bring changes from one branch into another, e.g. when a feature is ready and is to go into the main branch. |
| OpenSSF | Open Source Security Foundation. Industry organisation producing standards and tools for safer open source software, including the OSPS Baseline, Scorecard, SLSA and Sigstore. Referenced explicitly in Digg's guidelines. |
| OSI | Open Source Initiative. The organisation that maintains the established definition of open source and approves licences that meet it. An **OSI-approved licence** is one that has been reviewed and approved. This is normally the requirement for software to be considered open source. List: [opensource.org/licenses](https://opensource.org/licenses). |
| OSPO | Open Source Programs Office. The function or team in an organisation responsible for strategy, policy and support around open source. At Digg the **Open Source Guild** fills much of an OSPO's role (email: `ospo@digg.se`). |
| Package registry | The place where finished software packages are published and fetched. We use *package registry* as a general term for all kinds: code packages (npm, Maven Central, PyPI, NuGet, Cargo) and container images (Docker Hub, GHCR, Quay). For finer distinction the terms *container registry* and *artifact registry* are used. |
| Patch | A change that fixes a bug or solves a specific problem. |
| Project | An umbrella name that may imply several repositories or GitHub teams.<br><br>Made-up example: the *covid-certificate* project consists of the teams `digg-internal` and `consultantTeam2`, and they have access to the repositories `covidgui` and `covid-sad`. |
| Pull Request, Merge Request (PR/MR) | A proposal to merge changes from one branch into another. **GitHub** calls them *Pull Requests* (PR), **GitLab** calls them *Merge Requests* (MR) — they are the same thing. |
| Release, to release | A named version of the software that the project has officially made available (e.g. version 1.2.0). Verb form: *to release a version*. |
| Release notes | A note that accompanies each release, usually as the description of a release tag on GitHub or similar. More narrative than the changelog — curated highlights, motivation to upgrade and any security advisories. **Audience:** end users, procurement officers and decision-makers who want to know *why* they should upgrade without all the technical detail. |
| Repository | The central place where a project's code, its history and associated files are stored. A repository can be public or private. Often shortened to "repo". |
| Responding to an issue | Answering an issue or pull request. At minimum a confirmation that the report has been read (the same acknowledgement may also resolve or close the matter in one step). |
| REUSE and SPDX | Machine-readable standards for file-level licensing and copyright marking. Each file gets `SPDX-License-Identifier` (which licence) and `SPDX-FileCopyrightText` (who holds the copyright). The REUSE specification describes how a project follows the convention. Tooling: [reuse.software](https://reuse.software/). |
| SAST, SCA, secret scanning | Three types of automatic code analysis in CI. **SAST** (Static Application Security Testing) inspects the source for vulnerability patterns. **SCA** (Software Composition Analysis) inspects third-party dependencies for known vulnerabilities and licence problems. **Secret scanning** looks for accidentally committed secrets (passwords, tokens, API keys). |
| SBOM | Software Bill of Materials. A structured list of all components and dependencies in a piece of software — like a contents list. Common formats: SPDX (ISO/IEC 5962) and CycloneDX. An SBOM makes it possible to quickly determine whether a project is affected by a known vulnerability or carries problematic licences. |
| Scorecard | OpenSSF Scorecard. Automated tool that inspects the security practices of an open source project (branch protection, signing, dependency monitoring, etc.) and gives a score from 0 to 10. A quick health check of the project. |
| Semantic Versioning | Version numbering on the pattern `X.Y.Z` (major.minor.patch). Major is bumped on backward-incompatible changes, minor on new backward-compatible features, patch on fixes. See [semver.org](https://semver.org/). |
| SLSA | Supply-chain Levels for Software Artifacts. Framework for grading the maturity of a project's build chain, from unmanaged (L0) to strongly hardened (L4). Helps prevent supply-chain attacks. |
| Software (in agency context) | Often used in the broader sense of the source code together with surrounding solutions (configuration, documentation, build scripts, etc.). |
| Standard for Public Code | International standard from the Foundation for Public Code with 16 criteria for quality and sustainability of public-sector open source code. See [standard.publiccode.net](https://standard.publiccode.net/). |
| Team | The GitHub-team construct, usable as a virtual team. |
| Upstream | The original project we use or fetch code from. The metaphor is borrowed from rivers: code flows "downstream" from the source to us; contributions back travel *upstream*. To "contribute upstream" means to send fixes or improvements back to the original project. |
| Workflows | GitHub's name for CI/CD pipelines. A series of configurable processes for building, automatically testing and deploying projects that run on GitHub's servers (so-called *Runners*). |

## See also

- [Language policy on the code-collaboration platform](../reference/language-policy/): Swedish Language Act (2009:600) in practice
- [Working on GitHub](../working-on-github/): account setup, security, issue handling and publication
- [Checklists](../checklists/): publication, security, licensing, stewardship
