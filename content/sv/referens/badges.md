---
title: "Badges (statusmärken) i README och CONTRIBUTING"
description: "Vanliga badges/statusmärken för öppna kodförråd och bidragsfiler, med Markdown- och AsciiDoc-exempel"
weight: 35
---

Badges, eller statusmärken, ger snabb överblick över ett kodförråds status och länkar vidare till underlaget bakom påståendet.
I GitHub- och Shields.io-sammanhang används ofta det engelska ordet badge; ordet etikett bör undvikas här eftersom det kan blandas ihop med GitHub-etiketter för ärenden.
De ersätter inte dokumentation, checklistor eller rapporter, men gör det lättare för användare och bidragsgivare att hitta rätt information.
Det är inte meningen att varje kodförråd ska ha alla badges.
Välj de badges som är relevanta för projektets syfte och mognad; alla projekt behöver till exempel inte `publiccode.yml` eller en badge för Standard for Public Code.

De grafiska förhandsvisningarna nedan visar hur badges brukar se ut på riktigt, men använder statiska exempelvärden för att inte visa fel för dummyrepon.
Exemplen använder `diggsweden/repo` som dummyvärde; ersätt `repo` med kodförrådets faktiska namn.

## Anpassa exemplen

Byt kodförråd:

- Ersätt `diggsweden/repo` med rätt `organisation/kodförråd`.
- Ersätt lokala länkar som `LICENSE`, `CODE_OF_CONDUCT.md` och `publiccode.yml` om filerna ligger någon annanstans.

Byt stil och färg:

- `style=for-the-badge` ger stora badges som används i flera Digg-projekt.
- `style=flat-square` ger mindre badges.
- `color=green`, `color=blue`, `color=lightblue`, `color=orange` styr färgen när tjänsten stödjer det.
- För URL:er med flera parametrar används `?` före första parametern och `&` före nästa, till exempel `?style=for-the-badge&color=green`.

## README.md

Placera README-badges direkt under projekttiteln.
De ska länka till verifierbar information: taggar, licensfil, REUSE-status, Scorecard-rapport eller motsvarande.

<p>
  <a href="https://github.com/diggsweden/repo/tags"><img alt="Version v1.0.0" src="https://img.shields.io/badge/Version-v1.0.0-green?style=for-the-badge"></a>
  <a href="LICENSE"><img alt="License EUPL 1.2" src="https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge"></a>
  <a href="https://api.reuse.software/info/github.com/diggsweden/repo"><img alt="REUSE compliant" src="https://img.shields.io/badge/REUSE-compliant-lightblue?style=for-the-badge"></a>
  <a href="https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo"><img alt="OpenSSF Scorecard 7.4" src="https://img.shields.io/badge/OpenSSF%20Scorecard-7.4-green?style=for-the-badge"></a>
  <a href="https://www.standardforpubliccode.org/"><img alt="Standard for Public Code commitment" src="https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge"></a>
  <a href="publiccode.yml"><img alt="publiccode.yml available" src="https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge"></a>
</p>

### Version

Visar senaste tagg och länkar till projektets taggar.
Används när projektet har utgåvor eller versionssatta releaser.

Markdown:

```md
[![Version](https://img.shields.io/github/v/tag/diggsweden/repo?style=for-the-badge&color=green&label=Version)](https://github.com/diggsweden/repo/tags)
```

AsciiDoc:

```adoc
image:https://img.shields.io/github/v/tag/diggsweden/repo?style=for-the-badge&color=green&label=Version["Version", link="https://github.com/diggsweden/repo/tags"]
```

### Licens

Visar vald licens och länkar till `LICENSE`.
Anpassa texten till faktisk licens, till exempel `EUPL 1.2`, `MIT`, `BSD-3-Clause` eller `CC0-1.0`.

Markdown:

```md
[![License: EUPL 1.2](https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge)](LICENSE)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/License-EUPL%201.2-blue?style=for-the-badge["License: EUPL 1.2", link="LICENSE"]
```

### REUSE

Visar om kodförrådet följer REUSE-specifikationen och länkar till REUSE:s statusinformation.
Används för projekt som har filnära licensmetadata.

Markdown:

```md
[![REUSE](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.reuse.software%2Fstatus%2Fgithub.com%2Fdiggsweden%2Frepo&query=status&style=for-the-badge&label=REUSE)](https://api.reuse.software/info/github.com/diggsweden/repo)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.reuse.software%2Fstatus%2Fgithub.com%2Fdiggsweden%2Frepo&query=status&style=for-the-badge&label=REUSE["REUSE", link="https://api.reuse.software/info/github.com/diggsweden/repo"]
```

### OpenSSF Scorecard

Visar automatiserad bedömning av säkerhetspraxis och länkar till Scorecard-vyn.
Använd den nya `scorecard.dev`-domänen, inte äldre `securityscorecards.dev`.

Markdown:

```md
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/diggsweden/repo/badge?style=for-the-badge)](https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo)
```

AsciiDoc:

```adoc
image:https://api.scorecard.dev/projects/github.com/diggsweden/repo/badge?style=for-the-badge["OpenSSF Scorecard", link="https://scorecard.dev/viewer/?uri=github.com/diggsweden/repo"]
```

### Standard for Public Code

Visar att projektet avser att följa eller mappas mot Standard for Public Code.
Använd bara denna badge om projektet faktiskt arbetar med kriterierna.

Markdown:

```md
[![Standard for Public Code Commitment](https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge)](https://www.standardforpubliccode.org/)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Standard%20for%20Public%20Code-commitment-green?style=for-the-badge["Standard for Public Code Commitment", link="https://www.standardforpubliccode.org/"]
```

### publiccode.yml

Visar att projektet har metadatafilen `publiccode.yml` och länkar till filen.
Används när projektet ska vara lättare att indexera som offentlig kod.

Markdown:

```md
[![publiccode.yml](https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge)](publiccode.yml)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/publiccode.yml-available-orange?style=for-the-badge["publiccode.yml", link="publiccode.yml"]
```

### OpenSSF Best Practices

Används bara för projekt som är registrerade i OpenSSF Best Practices.
Ersätt `PROJECT_ID` med projektets faktiska id.

Markdown:

```md
[![OpenSSF Best Practices](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fbestpractices.coreinfrastructure.org%2Fprojects%2FPROJECT_ID.json&query=%24.badge_level&style=for-the-badge&label=OpenSSF%20Best%20Practices&color=green)](https://www.bestpractices.dev/projects/PROJECT_ID)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fbestpractices.coreinfrastructure.org%2Fprojects%2FPROJECT_ID.json&query=%24.badge_level&style=for-the-badge&label=OpenSSF%20Best%20Practices&color=green["OpenSSF Best Practices", link="https://www.bestpractices.dev/projects/PROJECT_ID"]
```

## CONTRIBUTING.md

Placera CONTRIBUTING-badges direkt under rubriken.
De ska visa hur externa bidrag hanteras och länka till reglerna som bidragsgivaren behöver läsa.

<p>
  <a href="https://conventionalcommits.org"><img alt="Conventional Commits 1.0.0" src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white"></a>
  <a href="CODE_OF_CONDUCT.md"><img alt="Code of Conduct 2.1" src="https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge"></a>
  <a href="https://developercertificate.org/"><img alt="DCO - Developer Certificate of Origin" src="https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge"></a>
</p>

### Conventional Commits

Visar att projektet vill ha strukturerade incheckningsmeddelanden.
Det stödjer automatiserad ändringslogg, releaseflöden och tydligare historik.

Markdown:

```md
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white["Conventional Commits", link="https://conventionalcommits.org"]
```

### Code of Conduct

Visar att projektet har en uppförandekod och länkar till lokal `CODE_OF_CONDUCT.md`.

Markdown:

```md
[![Code of Conduct](https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge)](CODE_OF_CONDUCT.md)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa.svg?style=for-the-badge["Code of Conduct", link="CODE_OF_CONDUCT.md"]
```

### DCO

Visar att bidragsgivare förväntas intyga rätten att bidra med koden.
Kombinera med tydlig instruktion i `CONTRIBUTING.md` om sign-off eller motsvarande process.

Markdown:

```md
[![DCO - Developer Certificate of Origin](https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge)](https://developercertificate.org/)
```

AsciiDoc:

```adoc
image:https://img.shields.io/badge/DCO-Developer%20Certificate%20of%20Origin-lightyellow?style=for-the-badge["DCO - Developer Certificate of Origin", link="https://developercertificate.org/"]
```

## Kontroller vid kopiering

- Bildens källa och klicklänken ska peka på samma kodförråd.
- Använd `diggsweden/repo`, inte felstavade organisationsnamn eller gamla repo-namn.
- Länkar till lokala filer som `LICENSE`, `CODE_OF_CONDUCT.md` och `publiccode.yml` ska fungera från filen där badgen ligger.
- Använd meningsfull alt-text i Markdown-badgen.
- Håll antalet badges begränsat till information som hjälper användaren att fatta beslut.
