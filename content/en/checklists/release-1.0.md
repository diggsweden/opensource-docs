---
title: "Release 1.0.0"
description: "Checklist for technical and operational requirements for a stable 1.0 release"
weight: 80
---

**Purpose:** Ensure that the project meets all the technical and operational requirements for a stable 1.0 release.

**Prerequisite:** This checklist is a continuation and deepening of [Release preparation](../release-preparation/).
The basic requirements there MUST be met before work on a 1.0 release begins.

## A. Documentation

- [ ] **MUST**: `README.md` (the project's front page) contains:
  - Badges (version, OpenSSF Scorecard, licence, REUSE status)
  - Project description and goals
  - Installation instructions
  - Usage examples
  - Maintainer section (see [Release preparation](../release-preparation/))
  - Maturity level (alpha/beta/stable)
- [ ] **MUST**: `LICENSE`. The licence file at the repository root, declaring the terms under which the code is shared.
- [ ] **MUST**: `SECURITY.md`. Reporting route and contact for vulnerabilities. See [Security](../security/).
- [ ] **MUST**: `CONTRIBUTING.md`. Describes how externals can contribute (process, conventions, tests).
- [ ] **MUST**: `CODE_OF_CONDUCT.md`. Sets the social ground rules for the community.
- [ ] **MUST**: `CHANGELOG.md`. Human-readable record of changes between releases (Keep-a-Changelog format).
- [ ] **MUST**: `publiccode.yml`. Standardised metadata file that makes the project discoverable in public-sector catalogues.
- [ ] **MUST**: `docs/DEVELOPMENT.md`. How to set up a development environment and build the project locally.
- [ ] **MUST**: Verification instructions for release integrity. How users can check signatures and hashes for a downloaded release.
- [ ] **SHOULD**: Examples in the documentation. Concrete usage samples beyond the README quick-start.

## B. Legal and compliance

- [ ] **MUST**: REUSE compliance (SPDX headers in all source files). Per-file licence and copyright marking. See [Licensing](../licensing/).
- [ ] **MUST**: Licence compatibility verified. Dependency licences are mutually compatible and do not force the project's main licence.
- [ ] **MUST**: Name/trademark check carried out. The project name does not clash with existing software or trademarks.
- [ ] **MUST**: No SNAPSHOT dependencies. All dependencies pin to released versions, not in-progress builds.

## C. Code quality

- [ ] **MUST**: Test coverage in line with the project's documented goal. The project has decided what level of automated test coverage is required and reaches it.
- [ ] **MUST**: Public APIs are documented. Every public function or interface has accompanying documentation.
- [ ] **MUST**: Code review carried out. Every change has been reviewed by someone other than the author. See [Working on a code-collaboration platform](../platform/).

## D. CI/CD and security

- [ ] **MUST**: CI workflow for pull requests (PR/MR). Tests, linters and checks run automatically on every proposed change.
- [ ] **MUST**: Test CI workflow. The full test suite runs on commits to main and on tagged releases.
- [ ] **MUST**: Release CI workflow. Tag push triggers a pipeline that builds, signs and publishes the release artefacts.
- [ ] **MUST**: Branch protection. The release branch is protected against direct push and unreviewed merge. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: Vulnerability scanning of dependencies (SCA). Detects known vulnerabilities and licence problems in third-party components. See [Security](../security/).
- [ ] **MUST**: SAST in CI. Static analysis of source code for vulnerability patterns. See [Security](../security/).
- [ ] **MUST**: Linter configured. Code style and common errors are checked automatically on every change.
- [ ] **MUST**: Secret scanning enabled. The repository is scanned for accidentally committed credentials, tokens and keys.
- [ ] **MUST**: Release signing configured (Sigstore/cosign recommended). Each release is cryptographically signed so users can verify origin. See [Security](../security/).
- [ ] **MUST**: SBOM generation (SPDX 2.3 or CycloneDX 1.5) **delivered with every release**. A machine-readable list of components lets consumers track vulnerabilities and licences. See [Security](../security/).
- [ ] **MUST**: CI linter and checks can be run locally without CI. Developers can reproduce the same checks on their own machine before pushing.
- [ ] **SHOULD**: Changelog flow in CI. Automatic generation from Conventional Commits keeps the changelog in sync with code.
- [ ] **SHOULD**: Security review carried out and documented. An internal or external review of the codebase from a security perspective.
- [ ] **SHOULD**: OpenSSF Scorecard integration. Scorecard runs in CI and the result is published as a badge for transparency.
- [ ] **SHOULD**: SLSA Build Level ≥ 2. The build process produces signed provenance attesting how the artefact was built.
- [ ] **SHOULD**: Signed commits. Each commit is cryptographically signed by its author.

## E. Versioning and release requirements

- [ ] **MUST**: API stable (or implements a stable specification). Public interfaces will not change in incompatible ways without a major version bump.
- [ ] **MUST**: No breaking changes planned. Known compatibility-breaking changes are queued for a future major release, not this one.
- [ ] **MUST**: Version follows Semantic Versioning 2.0.0. Version numbers communicate the type of change (major/minor/patch).
- [ ] **MUST**: Conventional Commits format is used. Structured commit messages enable automated changelog and version bumps. (Same as [Release preparation](../release-preparation/).)
- [ ] **MUST**: Support window published ("security updates until …"). Users know how long the release line will receive security fixes.

## F. Development practice

- [ ] **SHOULD**: Issue templates configured. Standard issue forms guide reporters to provide useful information.
- [ ] **SHOULD**: Pull-request template configured. PR descriptions follow a consistent structure (problem, fix, test plan).

## G. Stack-specific requirements (where applicable)

These are build-system fields and plugins that release tooling expects to find configured. Where applicable to your stack, the items MUST be in place.

### Java library (Maven/POM)

- [ ] `groupId`, `artifactId`, `version` (semantic versioning)
- [ ] `name`, `description`, `url`
- [ ] `licenses` block
- [ ] `scm` block
- [ ] `maven-enforcer-plugin` configured
- [ ] `central-release` profile with:
  - `maven-gpg-plugin`
  - `maven-source-plugin`
  - `maven-javadoc-plugin`
- [ ] `central-publishing-maven-plugin` configured

### Java application (Maven/POM)

- [ ] `groupId`, `artifactId`, `version` (semantic versioning)
- [ ] `name`, `description`, `url`
- [ ] `licenses` block
- [ ] `scm` block
- [ ] `maven-enforcer-plugin` configured

### JS/TS library (package.json)

- [ ] `name`, `version` (semantic versioning)
- [ ] `description`
- [ ] `license`
- [ ] `repository` block

## Criteria

**Ready for 1.0.0 when:**
- All applicable MUST items are completed
- No SNAPSHOT dependencies
- Tests pass with documented coverage
- API is stable (no breaking changes planned)

**Stay in 0.x when:**
- Implementing draft specifications
- API still evolving based on feedback
- Breaking changes are expected

Many projects remain in 0.x for a long time, and that is fine — see [SemVer FAQ: When to release 1.0.0](https://semver.org/#how-do-i-know-when-to-release-100).
