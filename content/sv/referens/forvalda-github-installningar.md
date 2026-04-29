---
title: "Förvalda GitHub-inställningar"
description: "Säkerhets-, behörighets- och beroendeinställningar som är aktiverade på Diggs GitHub-organisation"
weight: 20
---

Det här är en översikt av säkerhets-, behörighets- och beroendeinställningar som Digg har aktiverat på DiggSweden-organisationen. Listan är ett urval — för mer detaljer, se [`diggsweden/.github`](https://github.com/diggsweden/.github) och GitHub-dokumentationen per inställning.

| Namn | Inställning | Effekt |
| --- | --- | --- |
| [Basepermission](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization) | No Permission | En nytillagd medlem i organisationen har **inga** rättigheter. Det innebär att hen inte ser andra projekt, team, privata kodförråd etc., utan bara det som är publikt, eller för de team som hen blir tillagd i. [Basrättigheter](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization#setting-base-permissions) |
| [Forking and creation of private repositories](https://docs.github.com/en/organizations/managing-organization-settings/managing-the-forking-policy-for-your-organization) | Aktiverad | En användare kan skapa samt avgrena privata kodförråd. |
| [Require approval for first-time contributors to run GitHub Actions](https://docs.github.com/en/actions/managing-workflow-runs/approving-workflow-runs-from-public-forks#about-workflow-runs-from-public-forks) | (aktiverad som standard) | En nytillkommen bidragsgivare i ett kodförråd kräver ett explicit godkännande vid första bidraget för att få starta ett Workflow. |
| [Dependency Graph](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/about-the-dependency-graph) | Aktiverad | Beroendeanalyser för kodförråd. |
| [Dependabot](https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide) | Aktiverad | Skapar automatiska ändringsförfrågningar för sårbarheter samt utdaterade beroenden. Finjustera inställningar för ditt projekt. |
| [Secrets Scanning](https://docs.github.com/en/code-security/secret-scanning/about-secret-scanning) | Aktiverad | Genomsöker kodförråd efter nycklar, lösenord etc. |
| [Code Scanning](https://docs.github.com/en/code-security/code-scanning/enabling-code-scanning/configuring-default-setup-for-code-scanning-at-scale) | Aktiverad | Genomsöker kodbasen med SAST-analys. CODEQL. Finjustera inställningar för dina kodförråd. |
| Standard-bas för organisationen [DiggSwedens Organisations-basrepo](https://github.com/diggsweden/.github) | Aktiverad | Ett mall-projekt som innehåller projekt-förinställningar för GitHub-organisationen "om projektet inte anger något annat". Se dess README för vad det täcker. Det är högst möjligt att du vill finjustera dina projekt om andra behov. |

*Dependabot och Code Scanning är aktiverade på org-nivå men kompletteras eller ersätts gärna av plattformsoberoende verktyg som [Renovate](https://docs.renovatebot.com/) och [Opengrep](https://opengrep.dev/) — se [Arbete på GitHub: Sårbarhet och säkerhet](../../arbeta-pa-github/#sårbarhet-och-säkerhet).*

{{< callout type="error" >}}
Flera av de beskrivna inställningarna gäller inte om du använder privata kodförråd, då det kräver en betalplan för GitHub.
{{< /callout >}}

## Se även

- [Arbete på GitHub: Sårbarhet och säkerhet](../../arbeta-pa-github/#sårbarhet-och-säkerhet): Diggs verktygspreferens för säkerhetsskanning
- [Roller i organisationen på GitHub](../github-roller/): Owner, Member, External Collaborator, Admin
- [`diggsweden/.github`](https://github.com/diggsweden/.github): Diggs basrepo för organisationen

