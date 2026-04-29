---
title: "Working on GitHub"
description: "A guide for those working on Digg's GitHub spaces"
weight: 10
---

This is the guide for newcomers to our GitHub spaces.
It gives an overall, practical overview of how we work on the collaboration spaces: accounts, security, issue handling, stewardship and publication.
The details are in our [checklists](../checklists/) and other supporting material.

The focus is on [DiggSweden](https://github.com/diggsweden); in time the same principles will apply to [SwedenConnect](https://github.com/swedenconnect).

If you are new to open source as a whole, we recommend you first read through [opensource.guide](https://opensource.guide/) — a broader introduction to the field, the community and how to contribute. There is also a [Glossary of terms and concepts](../glossary/) — definitions of the concepts used in this handbook.

## Collaboration spaces

Digg currently has two external collaboration spaces on the GitHub platform:

- **DiggSweden** — Digg's own GitHub organisation, for solutions and documentation where Digg is the lead.
- **SwedenConnect** — the GitHub organisation for the Sweden Connect federation (Swedish eID and eIDAS), operated by Digg.

That is where work happens around different projects, together with external consultants, contributors and Digg staff. The spaces hold mostly programming-heavy projects, but pure documentation and specification projects also occur.

| Organisation | Purpose | Main responsibility |
| --- | --- | --- |
| [DiggSweden](https://github.com/diggsweden) | Releasing our own solutions, working with others | [`ospo@digg.se`](mailto:ospo@digg.se) (**Open Source Guild** — fills much of an [OSPO](../glossary/) role at Digg)<br>GitHub users with the Owner role |
| [SwedenConnect](https://github.com/swedenconnect) | Most SwedenConnect-related projects | GitHub users with the Owner role |

*The list of Owner accounts is not published externally. OSPO/Open Source Guild is active on DiggSweden; SwedenConnect is coordinated through its Owner roles. The rest of this guide describes processes specific to DiggSweden.*

## GitHub accounts

You first need a [GitHub account](https://github.com/signup).

* You should add your `name@digg.se` address to your existing GitHub account if you already have one. That is the simplest path, and personal contributions to open-source projects are not a problem from Digg's perspective. If you prefer to keep work and personal activity separate for privacy reasons, creating a dedicated account for your Digg role is also fine.
* Bear in mind that your account is partly public and may be linked to Digg, which means you are expected to conduct yourself professionally and in a way befitting a public agency on the account linked to your `name@digg.se` address.
* Whatever username you have, also fill in your real name (GitHub → Edit Profile → Name).

### Basic security for your GitHub account

Two-factor authentication (2FA) must be enabled — set it up via [GitHub's instructions](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa) and keep the recovery codes somewhere safe so you don't risk being locked out if you lose your device.

If you contribute via pull requests, two more things matter. Always use your `name@digg.se` address in your commits — that is how Digg, as a public authority, can show who contributed what. You must also [sign your commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#ssh-commit-signature-verification) so others can verify that you really are the sender.

Also enable "[Vigilant Mode](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits)" on your GitHub account — it makes your signed commits show as verified to others.

<!-- TO-DO: image of signing -->

### Adding a user to DiggSweden

You need to join Digg's GitHub organisation and be added to one or more [Teams](../glossary/) (GitHub's term for a group of users inside the organisation).

The invitation comes from someone with the [Owner or Admin role](../reference/github-roles/) — in most cases through a project or consultant team you are already part of. If you don't know who has that role for your team, [contact OSPO](mailto:ospo@digg.se) — state your purpose and what you need, and they will help from there.

## Base settings and template project

There are two different supports to know about.
One is inherited automatically, the other you choose actively.

### The organisation's base settings

All repositories on DiggSweden inherit a default set of templates for bug reports, feature requests and pull requests from [`diggsweden/.github`](https://github.com/diggsweden/.github).
The templates are active from the first commit, and the repository can then adapt them to the project's needs.

### Template project for new open projects

To make it easy to get started with a new open-source project, Digg provides a [Template project for open source software](../project-template/) with community files, REUSE licensing, OpenSSF Scorecard and more. The template's files are copied into the new repository and adapted to the project's needs.

## Stewardship and lifecycle management

### Issue handling

The team that owns a repository has primary responsibility for responding to issues.
How the team organises that work in detail is up to the team.

Digg's GitHub and project spaces are primarily intended for project-focused issues.
Discussions that do not relate to a project directly should be steered to other spaces.
Questions that are not technical or do not concern a specific project are referred onward to [Digg's customer service](https://www.digg.se/om-oss/kontakta-oss) (`info@digg.se`).

{{< callout type="info" >}}
Digg is a public agency and the public expects us to answer politely, correctly and within a reasonable time.
***Recommended response time for an issue is five days.***
{{< /callout >}}

### Handling inactive members

Two cases are handled differently:

**When someone leaves.** When someone leaves Digg or otherwise ends their assignment, they are removed from the GitHub organisation — that means Team memberships go away, but the personal GitHub account remains. Each Team's Admin keeps an informal eye on its members (an automated check is in the works).

**On prolonged inactivity.** Users in the GitHub organisation who have had no visible activity (commits, comments, issue updates) for a year are removed automatically — even if their employment with Digg is still active. If you need to re-join, the route is the same as the first time: contact your Admin/Owner or [OSPO](mailto:ospo@digg.se).

### Archiving projects

Projects without maintainers count as inactive and must be archived — ideally with a note in the README.

Inactivity is judged on a yearly basis. Inactivity means the project has no commits, issue updates or other visible activity.

## Vulnerability and security

GitHub provides several built-in tools for automated vulnerability and security scanning. Digg, however, prefers vendor-neutral tools where possible — for example, [Renovate](https://docs.renovatebot.com/) for dependency monitoring and [Opengrep](https://opengrep.dev/) for static code analysis. GitHub-native features such as secret scanning are used where they fit better.

Which features are enabled at organisation level is listed in [Reference: Default GitHub settings](../reference/default-github-settings/). Defaults may need fine-tuning by the team.

When a security alert comes in, the team that owns the repository has primary responsibility to address it.

<!-- TO-DO: Add image of GitHub Security tab -->

## Publication of external libraries and container images

{{< callout type="warning" >}}
Work in progress. This section is being migrated.
{{< /callout >}}

You must not publish artefacts that Digg is responsible for under personal names. Instead, use a shared Digg account with [`ospo@digg.se`](mailto:ospo@digg.se) as the owner/sender address — that way we avoid person-dependencies and, in the worst case, stale email addresses. A [release bot](#release-bot-ci-flow-and-available-variables) with signing keys is also set up — see the section below. Active developers can then be added as "Developers" on the package.

If a project needs a new shared account on a package registry, [contact OSPO](mailto:ospo@digg.se).

### Package registry: [npmjs.com](https://www.npmjs.com/)

For Javascript/Typescript libraries.

Digg currently owns two organisations on NPMJS: [`digg`](https://www.npmjs.com/org/digg) and [`diggsweden`](https://www.npmjs.com/org/diggsweden).
The `digg` organisation is archived; `diggsweden` is the one to be used going forward.

### Package registry: [Maven Central Portal](https://central.sonatype.com/)

For Java/Kotlin libraries.

Digg owns two namespaces on Maven Central Portal: [`se.digg`](https://central.sonatype.com/search?namespace=se.digg) and [`se.swedenconnect`](https://central.sonatype.com/search?namespace=se.swedenconnect).

### Package registry: [GitHub Container and Package Registry](https://github.com/features/packages)

* GitHub Packages is intended for development, not production releases. Access requires a GitHub token, among other things, which does not work well in Digg's environments. Therefore also publish on Maven Central Portal.
* What is published on Maven Central Portal and is not `SNAPSHOT` cannot be removed, except in very special cases.
* For container images: prefer small, secure base containers (e.g. distroless, Wolfi or Chainguard).

### Release bot, CI flow and available variables

Most newer projects on DiggSweden now use this setup — a release bot together with reusable workflows and configured secrets. We recommend it if you want many of the baseline requirements from the [checklists](../checklists/) covered out of the box: secure signing, dependency checks, licensing and project-health indicators are part of the default, and individual developers do not have to handle keys or become person-dependencies in the flow. The bot can sign and commit releases in a CI flow triggered by a tag push.

For DiggSweden:

* [DiggSwedenBot](https://github.com/diggswedenbot)

#### Secrets and variables

An up-to-date list of secrets and variables configured for Digg projects — and what each is used for — lives in [reusable-ci/docs/reference.md](https://github.com/diggsweden/reusable-ci/blob/main/docs/reference.md).

Secrets are not set by default but are made available per project.

#### Reusable CI components

Lints, security scans, signing, package publishing and more are available as ready-made building blocks. An up-to-date list with a description of each component lives in [reusable-ci/docs/components.md](https://github.com/diggsweden/reusable-ci/blob/main/docs/components.md).

For a practical example of a release pipeline that uses them, see [`diggsweden/cose-lib`](https://github.com/diggsweden/cose-lib/tree/main/.github/workflows).

## Frequently asked questions (FAQ)

### Teams

* **How do I create a GitHub team?**

  Ask someone with the Owner role, or [contact OSPO](mailto:ospo@digg.se).

* **Do I have to create a GitHub team?**

  No. For cost reasons, not everyone who contributes needs to be in a team in the organisation. If the project is public, it can be enough that one or two maintainers approve external pull requests, just as in any other open source project.

* **How should teams be divided: per product, per consultancy, or how?**

  Existing teams are sometimes split by area of responsibility, sometimes by consultancy affiliation, sometimes by project. Decide what suits you best. *Made-up example: a product team for "covidbevis" plus a consultancy team "konsultTeam2" working across several projects.* A `Member` can belong to several teams.

* **A team gets access to one or more repositories. What rights should they have by default?**

  No security-cleared people are part of a team, so a repository team's write rights must be `Read`. The team admin then grants individual members the rights they need (`Write`, `Maintainer` etc.) where required.

* **I want to fork an external project. Should I do it under Digg's GitHub organisation or under my private user?**

  In most cases: no fork under the Digg organisation. Fork under your own user in the first instance. We do not want DiggSweden to be perceived as having taken on the stewardship of a fork of an external project. Forks placed under the organisation without prior discussion will be archived.

### Schrems II and GDPR

* **May we use GitHub at Digg? It is, after all, an American cloud service. What about GDPR and Schrems II?**

  For now GitHub is used at Digg as a complement, which is also mentioned in Digg's guidelines for open source software. At the same time there is an effort to find other solutions, not least because [the adequacy decision eases information transfer but does not solve the other risks (eSamverkan summary, in Swedish, PDF)](https://www.esamverka.se/download/18.43a3add4188b9f2345a2ffd0/1687333877690/ES2023-10%20Adekvansbeslut%20och%20ny%20sekretessbrytande%20best%C3%A4mmelse%20-%20%C3%84r%20det%20gr%C3%B6nt%20ljus.pdf).

### Contribution

* **May we contribute bug fixes and issues upstream?**

  Yes. For practical steps, see the [Upstream contribution](../checklists/upstream-contribution/) checklist — it covers policy check, licence choice, CLA/DCO, communication and escalation.

  In practice, this already happens at times: Digg contributes to open source and open data through procurements and collaborations with external partners where we encourage and require open source.

### Licence headers (REUSE/SPDX)

* **How do I write licence headers correctly with REUSE/SPDX? There are several common conventions.**

  Several conventions exist for the licence statement itself, for example:

  * `<YEAR> <COPYRIGHTOWNER>`
  * `<YEAR> <GITHUBSPACE/PROJECTNAME>`
  * `<YEAR> The <projectname> Authors`

  Digg recommends `<YEAR> <COPYRIGHTOWNER>` as the first choice for clarity.
  Concrete example: `2026 Digg - Agency for Digital Government`.
  See also the [REUSE FAQ](https://reuse.software/faq/) for further information on licence headers.

### Private and public projects

* **Why are there private projects on Digg's GitHub? Is it not a platform for open source software?**

  There are several reasons why a project may need to be private for a phase: ownership is not settled, we have not decided whether an older project from another organisation should become open source, or we need to quality-assure the project before publishing it openly.
  The premise is still that private projects should primarily be collaborated on in more suitable (closed, more secure) spaces. Only in exceptional cases, and as a deliberate choice, should they live on GitHub.

* **I just have more questions. Where do I turn?**

  [Contact OSPO](mailto:ospo@digg.se) in the first instance.
  In the second instance, contact someone with the [Owner role](../reference/github-roles/).

## See also

- [Roles in the GitHub organisation](../reference/github-roles/): definitions of Owner, Member, External Collaborator and Admin
- [Default GitHub settings](../reference/default-github-settings/): security, permissions and dependency settings
- [Language policy on the code-collaboration platform](../reference/language-policy/): Language Act (2009:600) in practice, with examples per situation
- [Glossary](../glossary/): concepts and terms used in this handbook

## Links

* [General guidelines for open source software at Digg (2022, still current; an updated 2026 version will be published soon)](https://www.digg.se/download/18.72c5e64d183579af3fd1b6c/1664286148293/riktlinjer-for-utveckling-och-publicering-av-oppen-programvara.pdf) (in Swedish)
* [Digg's helper template project for open source projects](https://github.com/diggsweden/open-source-project-template)
* [Digg's base repo for the DiggSweden organisation](https://github.com/diggsweden/.github)
