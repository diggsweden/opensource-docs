---
title: "Using open source"
description: "Checklist for verifying and safely using open source software in operations, development or as a dependency"
weight: 20
---

**Purpose:** Support for those who *use* open source software, whether in operations, in development or as a dependency.

## A. Before you download

- [ ] **MUST**: The official release version and repository are identified. This ensures that the download comes from the right source, not a fork or a mirror.
- [ ] **MUST**: The project's licence is OSI-approved and compatible with your use. See [Licensing](../licensing/).
- [ ] **MUST**: `README.md`, `SECURITY.md` and `CHANGELOG.md` have been read. These cover, respectively, what the project does, how to report vulnerabilities, and what has changed in recent releases.
- [ ] **SHOULD**: `publiccode.yml` (public metadata file) has been reviewed where present.
- [ ] **SHOULD**: The project's maturity level (alpha/beta/stable/deprecated) and declared support window have been checked. This shows how production-ready the project is and how long it will receive security updates.

## B. Verify the artefact

- [ ] **MUST**: The release's **integrity** (checksum) and **authenticity** (signature) are verified. This confirms that the file has not been tampered with and that it comes from the right party.
  - Sigstore/cosign: `cosign verify-blob …`
  - GPG: `gpg --verify <signature> <artefact>`
  - SHA256: compare against the published checksum.
- [ ] **MUST**: The accompanying **SBOM** (`*.spdx.json` or `*.cdx.json`) has been reviewed. The SBOM lists all components and dependencies in the release and makes the composition assessable.
- [ ] **SHOULD**: The project's [OpenSSF Scorecard](https://scorecard.dev/) score, or an equivalent health assessment, has been reviewed. Scorecard gives an automatic score on the project's security practices.

## C. Security and dependencies

- [ ] **MUST**: The SBOM is mapped against your own vulnerability database (e.g. OSV.dev, NVD). This catches known vulnerabilities in components before deployment.
- [ ] **MUST**: The project's vulnerability advisories are monitored (GitHub Security Advisories, CVE feeds).
- [ ] **MUST**: There is a procedure for fast upgrades to new releases when critical vulnerabilities appear.
- [ ] **SHOULD**: A package manager with pinning (lockfiles) is used for reproducible builds. Pinning locks exact versions so that the same build produces the same result.

## D. Operations and stewardship

- [ ] **MUST**: The project's **maintenance status** ("actively maintained" / "archived" / "no longer maintained") is noted. If it has been archived, a replacement or an in-house fork is planned.
- [ ] **MUST**: The declared **support window** (security updates until …) is noted and an upgrade before expiry is planned.
- [ ] **MUST**: The project is configured through documented configuration mechanisms. Avoid in-house forks for small customisations — they make security updates harder.
- [ ] **SHOULD**: The version and configuration that is in operation is documented internally.

## E. Contribute back

- [ ] **SHOULD**: Bugs and improvement suggestions are reported via the project's issue tracker. Bug fixes are contributed in accordance with [Upstream contribution](../upstream-contribution/).

## F. When problems arise

- [ ] **MUST**: Vulnerability discovered: report according to the project's `SECURITY.md` (private channel, not a public issue).
- [ ] **MUST**: Bug or question: use the project's issue tracker.
- [ ] **SHOULD**: If the project is archived or abandoned and contains vulnerabilities, a fork or replacement has been discussed with OSPO/security lead.
