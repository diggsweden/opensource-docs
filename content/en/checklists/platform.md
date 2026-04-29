---
title: "Working on a code-collaboration platform"
description: "Checklist for branch protection, permissions, 2FA and baseline requirements on repositories"
weight: 50
---

**Purpose:** Practical support for how the organisation uses code-collaboration platforms (GitHub, GitLab, Codeberg/Forgejo), whether self-hosted or as SaaS. *Definition from Digg guidelines §Definitions (in Swedish).*

## A. Repository creation

- [ ] **MUST**: The repository is created under the right organisation/"org".
- [ ] **MUST**: The name follows the agreed naming convention.
- [ ] **MUST**: Visibility (public/private) is set in line with the information classification and decision.
- [ ] **MUST**: Standard files (LICENSE, README, .gitignore) are in place, ideally from the [open-source-project-template](https://github.com/diggsweden/open-source-project-template). `.gitignore` covers the language's or build system's default output so that generated artefacts are not version-controlled.
- [ ] **MUST**: A documentation site published through GitHub Pages or equivalent has a clear Pages/documentation repository when the site has its own lifecycle or collects documentation from several repositories.
- [ ] **MUST**: DNS names for Digg documentation sites follow the pattern `docs.<name>.digg.se`.
- [ ] **MUST**: The built-in Jekyll builder in GitHub Pages is not used as the standard. Build the site explicitly in CI with Hugo or an equivalent static-site generator and publish the generated files to Pages.
- [ ] **SHOULD**: A `CODEOWNERS` file is used as a complement to the README's maintainer section. It identifies the responsible parties per file area and ensures the right person automatically receives a review request. See [Release preparation](../release-preparation/).

## B. Permissions and access

- [ ] **MUST**: Two-factor authentication (2FA/MFA) is required for everyone with rights to change repository settings.
- [ ] **MUST**: Permissions follow the principle of least privilege. Everyone has only the rights they actually need.
- [ ] **MUST**: Merge and push rights to release branches are limited to an authorised group.
- [ ] **MUST**: The platform's roles (admin, maintainer, write, read) are used consistently.
- [ ] **MUST**: External collaborators have only the access they need, time-limited where applicable.
- [ ] **MUST**: Periodic review of permissions is carried out (recommended: at least every six months), so that rights match current affiliation rather than history.

## C. Branching strategy, code review and change flow

- [ ] **MUST**: Branch protection is enabled on release branches (`main`/`master`/`release/*`). This guards against accidental direct pushes and unreviewed merges.
- [ ] **MUST**: Direct push to a release branch is prevented; changes go via pull/merge requests (PR/MR).
- [ ] **MUST**: Code review is required: at least one reviewer besides the author before merge.
- [ ] **MUST**: Automated status checks (tests, linters, security scanning) must pass before merge, or have a documented manual approval.
- [ ] **MUST**: CI is connected to pull requests, so that tests run against the proposed change and not just the main branch.
- [ ] **SHOULD**: A branching strategy (trunk-based or GitHub-flow) is chosen and documented in `CONTRIBUTING.md`.
- [ ] **SHOULD**: For GitHub: the risk of `pull_request_target` in workflows is understood and Actions permissions are reviewed (`permissions:`). Incorrect use can expose secrets to untrusted code from pull requests.

## D. Signing and traceability

- [ ] **MUST**: Release tags and release artefacts are signed (Sigstore/cosign recommended; GPG accepted), so that users can verify the release comes from the project.
- [ ] **MUST**: Contributors commit with an email address belonging to their organisation (or another verified identity), so that contributions can be traced to the right party.
- [ ] **MUST**: Development is performed so that traceability is preserved (who did what, when).
- [ ] **MUST**: Any deviations from the process are documented and motivated.
- [ ] **SHOULD**: Signed commits are used where the risk level justifies it. Each commit can then be linked cryptographically to its author.

## E. Platform changes

- [ ] **MUST**: When changing Git provider, there is a plan to migrate the repository (issues, pull-request history, tags).
- [ ] **MUST**: Links in other systems (intranet, web, data portal) are updated.
- [ ] **MUST**: OSPO/IT and relevant functions are involved in the planning.

## F. Archiving the project

- [ ] **MUST**: The platform's archive function is used (makes the repository read-only). The code remains accessible but no one can accidentally contribute.
- [ ] **MUST**: The README states that the project is no longer maintained.
- [ ] **MUST**: Projects without maintainers are archived.
