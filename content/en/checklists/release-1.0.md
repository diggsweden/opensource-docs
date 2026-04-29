---
title: "Release 1.0.0"
description: "Final check for documentation, CI, security and release requirements before a stable 1.0 release"
weight: 80
---

**Purpose:** Ensure that the project is ready to call its next stable release 1.0.0.

**Before you start:** First work through [Release preparation](../release-preparation/).
That checklist covers the baseline requirements for publishing and maintaining a project openly: decisions, responsibilities, licensing, baseline documentation, public issue handling, REUSE, `publiccode.yml` and basic release practice.

**Fastest route:** For new projects, or internal projects that are being opened up, consider starting from the [Template project for open source software](../../project-template/).
The template helps with standard files, REUSE support, `publiccode.yml`, issue/PR templates and basic CI structure.
The template does not replace the checklists; always verify that content, contact routes and workflows are adapted to the actual project.

This checklist focuses on what is added before a stable 1.0.0 release.

## A. Documentation and template adaptation

- [ ] **MUST**: The baseline requirements in [Release preparation](../release-preparation/) are met.
- [ ] **MUST**: Standard files and metadata are in place and adapted for the project, not just copied from a template. This includes, for example, `README.md`, `LICENSE`, `SECURITY.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `CHANGELOG.md` and `publiccode.yml`.
- [ ] **MUST**: If the [Template project for open source software](../../project-template/) has been used, placeholders have been replaced, irrelevant sections removed and workflows adapted to the project's language, build system and publication flow.
- [ ] **MUST**: `README.md` shows that the project is ready for stable use: description and goals, installation instructions, usage examples, maintainers, maturity level and relevant badges.
- [ ] **MUST**: Developer documentation is current. It must be possible to set up the development environment, build the project and run the same baseline checks locally as in CI.
- [ ] **MUST**: Verification instructions for release integrity are published. Users must be able to check signatures, hashes and other attestations for a downloaded release.
- [ ] **SHOULD**: The documentation contains concrete examples or scenarios beyond the README quick-start.

## B. Legal and compliance

- [ ] **MUST**: REUSE compliance is verified (SPDX headers in all source files). Per-file licence and copyright marking is in place. See [Licensing](../licensing/).
- [ ] **MUST**: Clear copyright notices (year, organisation, co-authors as relevant).
- [ ] **MUST**: A `NOTICE` file is present where required (e.g. for Apache 2.0 with third-party attribution).
- [ ] **MUST**: Licence compatibility verified. Dependency licences are mutually compatible and do not force the project's main licence. Tool: [Joinup Licence Compatibility Checker](https://joinup.ec.europa.eu/collection/eupl/solution/joinup-licensing-assistant).
- [ ] **MUST**: Name/trademark check carried out. The project name does not clash with existing software or trademarks.
- [ ] **MUST**: No SNAPSHOT dependencies. All dependencies pin to released versions, not in-progress builds.

## C. Code quality

- [ ] **MUST**: Test coverage in line with the project's documented goal. The project has decided what level of automated test coverage is required and reaches it.
- [ ] **MUST**: Public APIs are documented. Every public function or interface has accompanying documentation.
- [ ] **MUST**: Code review carried out. Every change has been reviewed by someone other than the author. See [Working on a code-collaboration platform](../platform/).

## D. CI/CD and security

- [ ] **MUST**: CI for pull requests, the main branch and tagged releases runs relevant tests, linters and quality checks automatically.
- [ ] **MUST**: Release CI is verified. A tag push triggers a flow that builds, signs and publishes the release artefacts.
- [ ] **MUST**: Branch protection and required status checks protect main and release branches against direct push and unreviewed merge. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: The security controls in [Security](../security/) are configured for the project: vulnerability scanning of dependencies (SCA), SAST, secret scanning, release signing and SBOM.
- [ ] **MUST**: SBOM (SPDX 2.3 or CycloneDX 1.5) is **delivered with every release**. A machine-readable list of components lets consumers track vulnerabilities and licences.
- [ ] **MUST**: CI linters and baseline checks can be run locally without CI. Developers can reproduce the same checks on their own machine before pushing.
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

- [ ] **SHOULD**: Issue templates are configured and adapted to the project. Standard issue forms guide reporters to provide useful information.
- [ ] **SHOULD**: Pull-request template is configured and adapted to the project. PR descriptions follow a consistent structure (problem, fix, test plan).

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
