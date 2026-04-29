---
title: "About this handbook"
description: "About Digg's open source handbook: terminology, themes, policy"
weight: 90
---

This is a page about the handbook itself — which themes it covers, what applies to privacy and licensing, and how to contribute.

## Digg's themes on GitHub

Digg's open code is grouped into several themes on `github.com/diggsweden`.
Each theme has its own documentation site:

| Theme | Location |
|---|---|
| Open source | this handbook |
| Wallet ecosystem | [docs.wallet.digg.se](https://docs.wallet.digg.se/) *(planned)* |
| Open data (DCAT-AP-SE) | [docs.dataportal.se/dcat](https://docs.dataportal.se/dcat) |

## Policy and guidelines

The handbook rests on Digg's official policy and guidelines together with international standards.
For the full list of sources, see [Standards, specifications and principles](../checklists/standards/).

## Privacy

The site stores your theme choice (light or dark) in the browser's `localStorage` so that the choice persists across visits.
The value is `light` or `dark` under the key `color-theme`. It contains no personal data and never leaves your device.

Beyond that, we do none of the following:

- No cookies are set.
- No analytics or visitor statistics are collected.
- No third-party services (analytics, fonts, embedded video) are called.
- Search runs locally in the browser. Search terms never leave your device.

## Accessibility

The handbook aims to meet [WCAG 2.1 Level AA](https://www.w3.org/TR/WCAG21/).
Semantic landmarks, per-page language marking, a skip-to-content link, and light/dark plus high-contrast theming are in place.
Manual browser testing of the focus ring, reflow at 400 % zoom, and the mobile-menu focus trap is still pending.

Report problems at [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs/issues).

## Source code and licence

The source for this handbook lives at [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs).
The content is **CC0-1.0** and may be freely reused, modified and shared.
Other organisations are welcome to draw freely on the material for their own documentation.

The build infrastructure follows the [Hextra theme licence](https://github.com/imfing/hextra) (MIT).

## Contributing

Suggestions and corrections are gratefully received via issues and pull requests in [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs).

**MUST**: The contributor has personally reviewed, understood and quality-checked any AI-generated content before submitting a pull request. AI contributions are treated the same as human ones — responsibility for the content lies with the contributor.

## Status

This handbook is **working material** under development.

## See also

- [Working on GitHub](../working-on-github/): account setup, security, issue handling and publication
- [Checklists](../checklists/): publication, security, licensing, stewardship
- [Open source projects](../projects/): catalogue of Digg's and Sweden Connect's projects
- [Template project for open source software](../project-template/): starter structure for new projects
- [Glossary](../glossary/): concepts and abbreviations used in the handbook
