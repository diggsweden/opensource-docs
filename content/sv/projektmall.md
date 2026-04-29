---
title: "Mallprojekt för öppen programvara"
description: "Diggs mall för att starta nya öppna programvaruprojekt enligt rekommenderad struktur"
weight: 35
---

Det här är guiden till Diggs mallprojekt — vad det innehåller, hur du använder det, och när det passar.

Digg tillhandahåller ett mallprojekt som hjälper dig starta ett nytt öppet programvaru-projekt med struktur och praxis som följer Diggs riktlinjer: gemenskapsfiler, [REUSE](../terminologi/)-licensiering, [OpenSSF Scorecard](../terminologi/)-integration, [Conventional Commits](../terminologi/) och anpassning till [Standard for Public Code](../terminologi/).

> **Mallen finns i ett separat kodförråd:**
> [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template)

## Vad mallen ger dig

| Område | Innehåll |
|---|---|
| **Gemenskapsfiler** | `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, `GOVERNANCE.md`, `CHANGELOG.md`, `CODEOWNERS` |
| **Licens och efterlevnad** | `LICENSE`, `REUSE.toml`, `publiccode.yml` |
| **GitHub-integration** | Ärende- och ändringsförfråge-mallar, `.github/workflows/` med kvalitets- och säkerhetskontroller |
| **Översättningar** | Svenska parallellversioner i `l10n/sv/` |
| **Mallfiler** | `templates/` med alla filer som ska kopieras till ditt projekt, med `INSERT_*`-platshållare |

Vad varje fil gör i detalj förklaras i mallens egen [`README`](https://github.com/diggsweden/open-source-project-template).

## Hur du använder mallen

1. Skapa ett nytt tomt kodförråd för ditt projekt.
2. Kopiera filerna under `templates/` från [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template) till ditt nya kodförråd.
3. Sök och ersätt platshållare med ditt projekts uppgifter. Mallen använder `INSERT_*`-konvention (t.ex. `INSERT_CONTACT_METHOD`, `INSERT_DAYS`, `INSERT_PROJECT_NAME`); fullständig lista finns i mallens egen [`README`](https://github.com/diggsweden/open-source-project-template).
4. Välj en lämplig [OSI](../terminologi/)-godkänd licens för projektet — se [Licens-checklistan](../checklistor/licenser/) för vägledning.
5. Gå igenom [checklistorna](../checklistor/) för publicering, säkerhet och förvaltning.

## När mallen passar och när den inte passar

Mallen är generell och utvecklad för Diggs egna projekt, men den fungerar för **vilken offentlig aktör som helst** som vill starta ett strukturerat öppet projekt.
Den förutsätter inga specifika programmeringsspråk eller ramverk.

För projekt som **inte** ska bli öppna i Diggs mening (interna verktyg, prototyper på direkt beställning för Diggs egen drift) finns separat intern dokumentation.
Se [Arbete på GitHub](../arbeta-pa-github/) för gränsdragningen.

## Bidra till mallen

Förslag och rättelser till mallen själv tas emot direkt i [`diggsweden/open-source-project-template`](https://github.com/diggsweden/open-source-project-template), där mallens egen `CONTRIBUTING.md` finns.

## Se även

- [Arbete på GitHub](../arbeta-pa-github/): kontoupplägg, säkerhet, ärendehantering och publicering
- [Checklistor](../checklistor/): publicering, säkerhet, licenser, förvaltning
- [Badges (statusmärken) i README och CONTRIBUTING](../referens/badges/): rekommenderade status- och processbadges
- [Terminologi](../terminologi/): begrepp som REUSE, OSI, OpenSSF Scorecard, Standard for Public Code
