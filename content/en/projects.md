---
title: "Open source projects"
description: "A selection of open source projects at github.com/diggsweden and github.com/swedenconnect"
weight: 30
---

This is a catalogue page of Digg's and Sweden Connect's open-source software projects, grouped by theme. Here you find a selection of active projects; the full list lives on [`github.com/diggsweden`](https://github.com/diggsweden) and [`github.com/swedenconnect`](https://github.com/swedenconnect).

## The wallet ecosystem: digital identity

Services and libraries around the EUDI wallet (European Digital Identity).

| Project | Description |
|---|---|
| [`wallet-provider`](https://github.com/diggsweden/wallet-provider) | Service for creating and managing WUAs (Wallet Unit Attestations). |
| [`wallet-account`](https://github.com/diggsweden/wallet-account) | Service managing user accounts linked to the wallet. |
| [`wallet-attribute-attestation`](https://github.com/diggsweden/wallet-attribute-attestation) | Attribute attestation for digital identity. |
| [`wallet-app-ios`](https://github.com/diggsweden/wallet-app-ios) | Wallet app for iOS. |
| [`wallet-app-android`](https://github.com/diggsweden/wallet-app-android) | Wallet app for Android. |
| [`wallet-verifier-test-web`](https://github.com/diggsweden/wallet-verifier-test-web) | Test interface for verification flows. |
| [`wallet-ecosystem`](https://github.com/diggsweden/wallet-ecosystem) | Podman Compose scripts for running the full wallet environment locally (development and testing). |
| [`wallet-r2ps`](https://github.com/diggsweden/wallet-r2ps) | Background service handling R2PS processing with HSM signing and Kafka messaging. |

## Sweden Connect: federated identity and eID infrastructure

Libraries and reference implementations for the Sweden Connect federation (Swedish eID and eIDAS), published at [`github.com/swedenconnect`](https://github.com/swedenconnect).

| Project | Description |
|---|---|
| [`swedish-eid-idp`](https://github.com/swedenconnect/swedish-eid-idp) | Reference identity provider (IdP) for the Swedish eID Framework. |
| [`opensaml-addons`](https://github.com/swedenconnect/opensaml-addons) | Extensions to OpenSAML — the foundation for several SAML-based identity services. |
| [`eidas-connector`](https://github.com/swedenconnect/eidas-connector) | Service for connecting to the eIDAS infrastructure. |
| [`credentials-support`](https://github.com/swedenconnect/credentials-support) | Library for PKI credentials with PKCS#11 and HSM support. |
| [`signature-validation`](https://github.com/swedenconnect/signature-validation) | Core logic for digital signature validation. |

## Data and portal

Source code for Digg's portal solutions.

| Project | Description |
|---|---|
| [`dataportal-web`](https://github.com/diggsweden/dataportal-web) | Source code for [dataportal.se](https://www.dataportal.se/). |

## Tools and services

Standalone tools that solve specific developer or integration needs.

| Project | Description |
|---|---|
| [`rest-api-profil-lint-processor`](https://github.com/diggsweden/rest-api-profil-lint-processor) | Command-line tool for linting OpenAPI definitions against Digg's API profile. |
| [`mla`](https://github.com/diggsweden/mla) | Tool for producing network-analysis diagrams. |

## Support for open source

Template, tools and documentation that help Digg projects follow open-source practice.

| Project | Description |
|---|---|
| [`open-source-project-template`](https://github.com/diggsweden/open-source-project-template) | Digg's template project for new open source projects. |
| [`reusable-ci`](https://github.com/diggsweden/reusable-ci) | Reusable workflows for automated build, test and release (CI/CD) on GitHub Actions. |
| [`opensource-docs`](https://github.com/diggsweden/opensource-docs) | The source code of this handbook. |

## Archived projects

Projects no longer actively maintained but kept as reference material to build upon.

### Digital inclusion toolbox

| Project | Description |
|---|---|
| [`UserFeedbackApp`](https://github.com/diggsweden/UserFeedbackApp) | React.js application for collecting anonymous feedback. |
| [`SupportModalApp`](https://github.com/diggsweden/SupportModalApp) | Vue.js application with help functions and help button. |
| [`UserFeedbackApi`](https://github.com/diggsweden/UserFeedbackApi) | Server API for collecting anonymous feedback. |
| [`InclusionToolbox`](https://github.com/diggsweden/InclusionToolbox) | JavaScript drop-in toolbox plugin. |

## Stewardship of the project list

Projects without an active maintainer are archived. Activity is judged according to the pattern in [Working on GitHub: Archiving projects](../working-on-github/#archiving-projects).
For security practice and project health, see also the [OpenSSF Scorecard report](../reports/openssf-scorecard/).

## See also

- [Template project for open source software](../project-template/): starter structure for new projects
- [Working on GitHub](../working-on-github/): account setup, security, issue handling and publication
- [Reports](../reports/): generated reports about project health, security and stewardship
- [Other Swedish public sector organisations](../reference/other-public-sector-organisations/): state agencies, municipalities and regions on code-collaboration platforms
