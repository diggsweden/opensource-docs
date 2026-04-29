---
title: "Handling of issues, questions and external contributions"
description: "Checklist for teams handling issues, questions and pull requests in open projects"
weight: 90
---

**Purpose:** Support for how teams handle issues, questions and pull requests (PR/MR) in open projects.

## A. Monitoring issues

- [ ] **MUST**: The issue tracker is public and turned on for as long as the service is actively developed.
- [ ] **MUST**: There is an agreed frequency for going through issues and pull requests (e.g. weekly).
- [ ] **MUST**: New issues are categorised (bug, enhancement, question, other).
- [ ] **MUST**: New issues receive a first response within a reasonable time (recommended: ≤ 5 working days). This confirms the report has been read, even if the fix is delayed.
- [ ] **MUST**: Issues with potential security implications are handled in accordance with the vulnerability procedures. See [Security](../security/).

## B. Questions and contact routes

- [ ] **MUST**: Product and project-related questions are answered by the responsible team via the issue tracker or equivalent.
- [ ] **MUST**: General questions about open source are referred to the agreed function (e.g. OSPO or community).
- [ ] **MUST**: General questions about the organisation's activities are referred to the regular contact routes (e.g. info/registry).
- [ ] **MUST**: These contact routes are stated in the README or documentation, so that questions are routed correctly from the start.

## C. External contributions (pull requests)

- [ ] **MUST**: External pull requests are welcomed and reviewed systematically in line with [Working on a code-collaboration platform](../platform/).
- [ ] **MUST**: Contributions are reviewed through the same flows as other development: review, tests, dependency checks, both manual and automated quality checks.
- [ ] **MUST**: Clear guidelines in `CONTRIBUTING.md` set out scope and quality requirements. AI-generated contributions are judged on the same grounds as others; automated checks and clear boundaries are particularly important.
- [ ] **MUST**: Code quality, style and testability are checked.
- [ ] **MUST**: Security impact is assessed (especially for changes near interfaces or permission handling).
- [ ] **MUST**: Licence and copyright questions for the contribution are acceptable; the contributor has certified the right to contribute (DCO or CLA). See [Release preparation](../release-preparation/) for the project's policy on DCO/CLA.
- [ ] **MUST**: The impact on the project's direction is assessed against documented goals and roadmap.
- [ ] **MUST**: Contributions may be rejected if they do not follow procedures, templates or requirements, or if they are judged not to fit the project's direction. Rejection is communicated respectfully and clearly.
- [ ] **SHOULD**: The Contributor Covenant or an equivalent code of conduct is used. It sets the social ground rules for the community.

## D. Closed/archived projects

- [ ] **MUST**: If the project is no longer actively maintained, this is clear in the README.
- [ ] **MUST**: The project is marked as archived or similar on the platform.
- [ ] **MUST**: Open issues and pull requests are handled (closed or commented) with a justification.
