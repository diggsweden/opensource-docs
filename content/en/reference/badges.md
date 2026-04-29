---
title: "Badges in README and CONTRIBUTING"
description: "Common badges for open repositories and contribution files, with Markdown and AsciiDoc examples"
weight: 35
---

Badges give a quick overview of a repository's status and link to the evidence behind the claim.
They do not replace documentation, checklists or reports, but they help users and contributors find the right information.
Not every repository is expected to use every badge.
Choose the badges that are relevant for the project's purpose and maturity; for example, not every project needs `publiccode.yml` or a Standard for Public Code badge.

The graphical previews below show how badges usually look in practice, but use static example values so that the dummy repository does not produce error badges.
The examples use `diggsweden/repo` as a dummy value; replace `repo` with the repository's actual name.

## Customise The Examples

Change repository:

- Replace `diggsweden/repo` with the correct `organisation/repository`.
- Replace local links such as `LICENSE`, `CODE_OF_CONDUCT.md` and `publiccode.yml` if the files live elsewhere.

Change style and colour:

- `style=for-the-badge` gives large badges used in several Digg projects.
- `style=flat-square` gives smaller badges.
- `color=green`, `color=blue`, `color=lightblue`, `color=orange` controls the colour when supported by the service.
- For URLs with multiple parameters, use `?` before the first parameter and `&` before the next one, for example `?style=for-the-badge&color=green`.

## README.md

Place README badges directly below the project title.
They should link to verifiable information: tags, the licence file, REUSE status, Scorecard report or equivalent.

<p>
  <a href="https://github.com/diggsweden/repo/tags"><img alt="Version v1.0.0" src="https://img.shields.io/badge/Version-v1.0.0-green?style=for-the-badge"></a>
  <a href="LICENSE"><img alt="License EUPL 1.2" src="https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge"></a>
  <a href="https://api.reuse.software/info/github.com/diggsweden/repo"><img alt="REUSE compliant" src="https://img.shields.io/badge/REUSE-compliant-lightblue?style=for-the-badge"></a>
  <a href="https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo"><img alt="OpenSSF Scorecard 7.4" src="https://img.shields.io/badge/OpenSSF%20Scorecard-7.4-green?style=for-the-badge"></a>
  <a href="https://www.standardforpubliccode.org/"><img alt="Standard for Public Code commitment" src="https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge"></a>
  <a href="publiccode.yml"><img alt="publiccode.yml available" src="https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge"></a>
</p>

### Version

Shows the latest tag and links to the project's tags.
Use this when the project has releases or versioned artefacts.

Markdown:

```md
[![Version](https://img.shields.io/github/v/tag/diggsweden/repo?style=for-the-badge&color=green&label=Version)](https://github.com/diggsweden/repo/tags)
```

AsciiDoc:

```adoc
image:https://img.shields.io/github/v/tag/diggsweden/repo?style=for-the-badge&color=green&label=Version["Version", link="https://github.com/diggsweden/repo/tags"]
```

### Licence

Shows the selected licence and links to `LICENSE`.
Adapt the text to the actual licence, for example `EUPL 1.2`, `MIT`, `BSD-3-Clause` or `CC0-1.0`.

Markdown:

```md
[![License: EUPL 1.2](https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge)](LICENSE)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge["License: EUPL 1.2", link="LICENSE"]
```

### REUSE

Shows whether the repository follows the REUSE specification and links to REUSE status information.
Use this for projects with per-file licence metadata.

Markdown:

```md
[![REUSE](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.reuse.software%2Fstatus%2Fgithub.com%2Fdiggsweden%2Frepo&query=status&style=for-the-badge&label=REUSE)](https://api.reuse.software/info/github.com/diggsweden/repo)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.reuse.software%2Fstatus%2Fgithub.com%2Fdiggsweden%2Frepo&query=status&style=for-the-badge&label=REUSE["REUSE", link="https://api.reuse.software/info/github.com/diggsweden/repo"]
```

### OpenSSF Scorecard

Shows automated assessment of security practice and links to the Scorecard view.
Use the new `scorecard.dev` domain, not the older `securityscorecards.dev` domain.

Markdown:

```md
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/diggsweden/repo/badge?style=for-the-badge)](https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo)
```

AsciiDoc:

```adoc
image:https://api.scorecard.dev/projects/github.com/diggsweden/repo/badge?style=for-the-badge["OpenSSF Scorecard", link="https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo"]
```

### Standard for Public Code

Shows that the project intends to follow or map against the Standard for Public Code.
Use this badge only when the project actually works with the criteria.

Markdown:

```md
[![Standard for Public Code Commitment](https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge)](https://www.standardforpubliccode.org/)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge["Standard for Public Code Commitment", link="https://www.standardforpubliccode.org/"]
```

### publiccode.yml

Shows that the project has the `publiccode.yml` metadata file and links to the file.
Use this when the project should be easier to index as public code.

Markdown:

```md
[![publiccode.yml](https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge)](publiccode.yml)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge["publiccode.yml", link="publiccode.yml"]
```

### OpenSSF Best Practices

Use this only for projects registered in OpenSSF Best Practices.
Replace `PROJECT_ID` with the project's actual id.

Markdown:

```md
[![OpenSSF Best Practices](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fbestpractices.coreinfrastructure.org%2Fprojects%2FPROJECT_ID.json&query=%24.badge_level&style=for-the-badge&label=OpenSSF%20Best%20Practices&color=green)](https://www.bestpractices.dev/projects/PROJECT_ID)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fbestpractices.coreinfrastructure.org%2Fprojects%2FPROJECT_ID.json&query=%24.badge_level&style=for-the-badge&label=OpenSSF%20Best%20Practices&color=green["OpenSSF Best Practices", link="https://www.bestpractices.dev/projects/PROJECT_ID"]
```

## CONTRIBUTING.md

Place CONTRIBUTING badges directly below the heading.
They should show how external contributions are handled and link to the rules the contributor needs to read.

<p>
  <a href="https://conventionalcommits.org"><img alt="Conventional Commits 1.0.0" src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white"></a>
  <a href="CODE_OF_CONDUCT.md"><img alt="Code of Conduct 2.1" src="https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge"></a>
  <a href="https://developercertificate.org/"><img alt="DCO - Developer Certificate of Origin" src="https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge"></a>
</p>

### Conventional Commits

Shows that the project wants structured commit messages.
This supports automated changelogs, release flows and clearer history.

Markdown:

```md
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white["Conventional Commits", link="https://conventionalcommits.org"]
```

### Code of Conduct

Shows that the project has a code of conduct and links to local `CODE_OF_CONDUCT.md`.

Markdown:

```md
[![Code of Conduct](https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge)](CODE_OF_CONDUCT.md)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge["Code of Conduct", link="CODE_OF_CONDUCT.md"]
```

### DCO

Shows that contributors are expected to certify the right to contribute the code.
Combine this with clear instructions in `CONTRIBUTING.md` about sign-off or the equivalent process.

Markdown:

```md
[![DCO - Developer Certificate of Origin](https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge)](https://developercertificate.org/)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge["DCO - Developer Certificate of Origin", link="https://developercertificate.org/"]
```

## Checks when copying

- The image source and click target should point to the same repository.
- Use `diggsweden/repo`, not misspelled organisation names or old repository names.
- Links to local files such as `LICENSE`, `CODE_OF_CONDUCT.md` and `publiccode.yml` must work from the file where the badge is placed.
- Use meaningful alt text in the Markdown badge.
- Keep the number of badges limited to information that helps the user decide.
