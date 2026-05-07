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

## B. Security and dependencies

- [ ] **MUST**: The release's integrity (checksum) and authenticity (signature) are verified. This confirms that the file has not been tampered with and that it comes from the right party.
  - Sigstore/cosign: `cosign verify-blob …`
  - GPG: `gpg --verify <signature> <artefact>`
  - SHA256: compare against the published checksum.
- [ ] **MUST**: The accompanying **[SBOM](../../glossary/)** has been reviewed. An SBOM shows which building blocks and dependencies are included in the release, so that you can see what you're actually installing.
- [ ] **MUST**: The project's vulnerability advisories are monitored (GitHub Security Advisories, CVE feeds).
- [ ] **MUST**: There is a procedure for fast upgrades to new releases when critical vulnerabilities appear.
- [ ] **SHOULD**: A general health assessment of the project has been carried out, for example via [OpenSSF Scorecard](../../glossary/) or an equivalent tool. Such tools give an automatic score on the project's security practices and a quick indication of how well the project is maintained.
- [ ] **SHOULD**: A package manager with pinning (lockfiles) is used for reproducible builds. Pinning locks exact versions so that the same build produces the same result.

## C. Operations and stewardship

- [ ] **MUST**: The project's maintenance status ("active" / "archived" / "abandoned") is noted. If it has been archived, a replacement or an in-house fork is planned.
- [ ] **MUST**: The declared support window (security updates until …) is noted and an upgrade before expiry is planned.
- [ ] **MUST**: The project is configured through documented configuration mechanisms. Avoid in-house forks for small customisations — they make security updates harder.
- [ ] **SHOULD**: The version and configuration that is in operation is documented internally.

## D. When problems arise

- [ ] **MUST**: Vulnerability discovered: report according to the project's `SECURITY.md` (private channel, not a public issue).
- [ ] **MUST**: Bug or question: use the project's issue tracker.
- [ ] **MUST**: Abandoned or archived projects shall not be used. Find an actively maintained replacement.

## Links

* [Concise Guide for Evaluating Open Source Software](https://best.openssf.org/Concise-Guide-for-Evaluating-Open-Source-Software) — in-depth evaluation guide from the OpenSSF Best Practices Working Group
