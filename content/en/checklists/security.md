---
title: "Security"
description: "Checklist for security work specific to published open source software: dependencies, vulnerabilities, supply chain"
weight: 60
---

**Purpose:** Support for security work that is specific to published open source software.
General security requirements (information classification, risk analysis, threat modelling, secure systems development) are handled in:

- **IT-security guideline** (Digg, internal)
- **Information-handling guideline** (Digg, internal)

This checklist complements those with requirements specific to published open source software: data in open repositories, dependency analysis, `SECURITY.md`, vulnerability reporting, SBOM, signing and release verification.

For branch protection, 2FA and code review, see [Working on a code-collaboration platform](../platform/).

## A. Publishable code and data

- [ ] **MUST**: General security requirements (information classification, risk analysis, secure systems development) follow Digg's IT-security guideline and Information-handling guideline.
- [ ] **MUST**: The source code has been reviewed against the information classification and judged suitable for publication.
- [ ] **MUST**: No internal or sensitive information lives in open repositories (personal data, credentials, internal environment details, keys).
- [ ] **MUST**: Source code and data are clearly separated. Configuration parameters and deployment specific to the agency's environments live outside the published repository.
- [ ] **MUST**: Test data is synthetic, anonymised or masked.

## B. Dependencies and components

SCA analyses dependencies in CI.
Renovate and Dependabot monitor dependencies over time and create upgrade proposals.
They complement each other.

- [ ] **MUST**: Dependency-analysis tooling (SCA, Software Composition Analysis) is used in CI to detect known vulnerabilities and licence incompatibilities in third-party components.
- [ ] **MUST**: Automated dependency monitoring and an update flow are in place. Common tools are Renovate and Dependabot, which open pull requests with upgrades; critical vulnerabilities are handled quickly under a documented procedure.
- [ ] **MUST**: Third-party components' licences and security practices are known and documented.
- [ ] **SHOULD**: The health of every new direct dependency is evaluated before it is added. Assess activity, maintainers and security history.
- [ ] **SHOULD**: A package manager with pinning (lockfiles) is used where possible. Pinning locks exact versions so that the same build produces the same result.

## C. Code controls and development flow

- [ ] **MUST**: Automated code controls run in CI: linters for bugs and questionable development practice, SAST for vulnerability patterns and secret scanning for accidentally committed secrets (passwords, tokens, API keys). Security-specific linters, e.g. Bandit or gosec, can complement SAST/SCA.
- [ ] **MUST**: Code review, branch protection and permissions follow [Working on a code-collaboration platform](../platform/), including the principle of least privilege.
- [ ] **MUST**: Automated testing is used, including tests for invalid input (negative cases).
- [ ] **SHOULD**: Incoming pull requests are readable and reasonably scoped; large opaque binary files are minimised so that review is meaningful.
- [ ] **SHOULD**: The project's testing goals and ambitions are discussed and established.
- [ ] **SHOULD**: If the project exposes public interfaces, threat modelling and attack-surface analysis under the IT-security guideline also cover the published interface.

## D. Vulnerability handling

- [ ] **MUST**: The project has a published `SECURITY.md` with a reporting route, contact address and time window for acknowledgement and preliminary assessment (recommended: ≤ 5 working days).
- [ ] **MUST**: A **private** reporting channel is available (e.g. GitHub Private Vulnerability Reporting or a dedicated email), so reporters can reach the project without disclosing the vulnerability publicly.
- [ ] **MUST**: A function or person responsible for vulnerability handling is appointed.
- [ ] **MUST**: Identification, assessment, remediation and any communication of vulnerabilities are documented traceably.
- [ ] **MUST**: Procedures are in place for fast handling of severe vulnerabilities.

## E. Releases and supply chain

- [ ] **MUST**: Releases are signed (Sigstore/cosign recommended; GPG accepted) and have public instructions for verifying integrity and authenticity.
- [ ] **MUST**: An SBOM (Software Bill of Materials, in SPDX 2.3 or CycloneDX 1.5 format) is generated in CI and **delivered with every release**. This lets end users verify components, vulnerabilities and licences.
- [ ] **MUST**: CI fetches dependencies over encrypted channels (HTTPS/TLS) and the release pipeline's external services are accessed encrypted.
- [ ] **MUST**: Generated artefacts (build output, compiled binaries) are not version-controlled in `git`; `.gitignore` covers the language's or build system's default output.
- [ ] **MUST**: Publishing rights for artefacts are limited to authorised accounts/roles. Packages are published under the organisation's functional account, not under an individual employee's personal account or email. This avoids individual dependencies and keeps the package manageable over time.
- [ ] **SHOULD**: OpenSSF Scorecard is used to assess and improve the project's security health. Scorecard provides automated scoring of security practices. See the [OpenSSF Scorecard report](../../reports/openssf-scorecard/).
- [ ] **SHOULD**: The project aims for a SLSA level (Supply-chain Levels for Software Artifacts) appropriate to the risk, at least Build L2.

## F. Open source frameworks

- [ ] **MUST**: The project has reviewed relevant recommendations for open source software from [OpenSSF](https://openssf.org/).
- [ ] **SHOULD**: The [OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software) has been worked through and the project aligns with [ISO/IEC 18974](https://www.iso.org/standard/86529.html) (OpenChain Security Assurance) where reasonable.
