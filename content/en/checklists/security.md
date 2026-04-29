---
title: "Security"
description: "Checklist for security work specific to open source software: dependencies, vulnerabilities, supply chain"
weight: 60
---

**Purpose:** Support for security work that is specific to open source software.
General security requirements (information classification, risk analysis, threat modelling, secure systems development) are handled in:

- **IT-security guideline** (Digg, internal)
- **Information-handling guideline** (Digg, internal)

This checklist complements those with requirements specific to published open source software: SECURITY policy, vulnerability reporting, SBOM delivery, dependency analysis, signing and release verification.

For branch protection, 2FA and code review, see [Working on a code-collaboration platform](../platform/).

## A. Prerequisites for publication

- [ ] **MUST**: General security requirements (information classification, risk analysis, secure systems development) follow Digg's IT-security guideline and Information-handling guideline.
- [ ] **MUST**: The source code has been reviewed against the information classification and judged suitable for publication.

## B. Dependencies and components

- [ ] **MUST**: Dependency-analysis tooling (SCA, Software Composition Analysis) is used in CI to detect vulnerabilities and licence incompatibilities in third-party components.
- [ ] **MUST**: A procedure is in place to update dependencies quickly when critical vulnerabilities appear.
- [ ] **MUST**: Automated monitoring watches for critical vulnerabilities in dependencies. Common tools are Renovate and Dependabot, which open pull requests with upgrades.
- [ ] **MUST**: Third-party components' licences and security practices are known and documented.
- [ ] **SHOULD**: The health of every new direct dependency is evaluated before it is added. Assess activity, maintainers and security history.
- [ ] **SHOULD**: A package manager with pinning (lockfiles) is used where possible. Pinning locks exact versions so that the same build produces the same result.

## C. Code quality and development flow

- [ ] **MUST**: Linter tools are used in CI to detect bugs and questionable development practice. Security-specific linters (Bandit, gosec etc.) complement SAST/SCA.
- [ ] **MUST**: Static analysis (SAST, Static Application Security Testing) is run in CI to detect potential vulnerabilities in the code.
- [ ] **MUST**: Secret-scanning tooling is run to detect accidentally committed secrets (passwords, tokens, API keys).
- [ ] **MUST**: Code review is required before merge. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: Branch protection (protection against direct pushes to the release branch) is enabled. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: Permissions follow the principle of least privilege. See [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: Automated testing is used, including tests for invalid input (negative cases).
- [ ] **SHOULD**: Incoming pull requests are readable and reasonably scoped; large opaque binary files are minimised so that review is meaningful.
- [ ] **SHOULD**: The project's testing goals and ambitions are discussed and established.

## D. Vulnerability handling

- [ ] **MUST**: The project has a published `SECURITY.md` with a reporting route and contact address.
- [ ] **MUST**: A **private** reporting channel is available (e.g. GitHub Private Vulnerability Reporting or a dedicated email). This lets reporters reach the project without disclosing the vulnerability publicly.
- [ ] **MUST**: `SECURITY.md` states a time window for acknowledgement and preliminary assessment (recommended: ≤ 5 working days).
- [ ] **MUST**: A function or person responsible for vulnerability handling is appointed.
- [ ] **MUST**: Identification, assessment and remediation of vulnerabilities are documented traceably.
- [ ] **MUST**: Procedures are in place for fast handling of severe vulnerabilities.
- [ ] **MUST**: An SBOM (Software Bill of Materials, in SPDX 2.3 or CycloneDX 1.5 format) is generated in CI and **delivered with every release**. This lets end users verify components, vulnerabilities and licences.
- [ ] **SHOULD**: If the project exposes public interfaces: threat modelling and attack-surface analysis (carried out under the IT-security guideline) also covers the published interface.

## E. Data and configuration in published code

Requirements specific to open source software.
General information handling follows the Information-handling guideline.

- [ ] **MUST**: No internal or sensitive information lives in open repositories (personal data, credentials, internal environment details, keys).
- [ ] **MUST**: Source code and data are clearly separated. Configuration parameters and deployment specific to the agency's environments live outside the published repository.
- [ ] **MUST**: Test data is synthetic, anonymised or masked.

## F. Releases and supply chain

- [ ] **MUST**: Releases are signed (Sigstore/cosign recommended; GPG accepted). This lets users verify that the release comes from the project and has not been tampered with.
- [ ] **MUST**: Releases have public instructions for verifying integrity and authenticity, so that users actually know how to verify.
- [ ] **MUST**: CI fetches dependencies over encrypted channels (HTTPS/TLS) and the release pipeline's external services are accessed encrypted.
- [ ] **MUST**: Generated artefacts (build output, compiled binaries) are not version-controlled in `git`; `.gitignore` covers the language's or build system's default output.
- [ ] **MUST**: Publishing rights for artefacts are limited. Only authorised accounts/roles can publish to external package registries.
- [ ] **MUST**: Packages are published under the organisation's functional account (email tied to a functional mailbox or equivalent), not under an individual employee's personal account or email. This avoids individual dependencies and keeps the package manageable over time.
- [ ] **SHOULD**: OpenSSF Scorecard is used to assess and improve the project's security health. Scorecard provides automated scoring of security practices.
- [ ] **SHOULD**: The project aims for a SLSA level (Supply-chain Levels for Software Artifacts) appropriate to the risk, at least Build L2.

## G. Open source frameworks

- [ ] **MUST**: The project has reviewed relevant recommendations for open source software from [OpenSSF](https://openssf.org/).
- [ ] **SHOULD**: The [OpenSSF Concise Guide for Developing More Secure Software](https://best.openssf.org/Concise-Guide-for-Developing-More-Secure-Software) has been worked through.
- [ ] **SHOULD**: The project aligns with [ISO/IEC 18974](https://www.iso.org/standard/86529.html) (OpenChain Security Assurance) where reasonable.
