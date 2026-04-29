---
title: "Roller i organisationen på GitHub"
description: "Definitioner av Owner, Member, External Collaborator och Admin på Diggs GitHub-organisation"
weight: 10
---

Det här är en översikt av de roller Digg använder på GitHub-organisationen, samt deras ansvar och rättigheter.

## Översikt av roller

* Owner - superadministratörer för organisationen i sig.
* Member - alla inbjudna till organisationen.
  Ska läggas i olika Team för tillgång till specifika kodförråd/projekt.
* External Collaborator - externa användare som inte är inbjudna till organisationen men ges enskilda rättigheter till projekt.

{{< callout type="info" >}}
En GitHub-Organisation kan ha fler än tre roller, se [organisationsroller](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization)
{{< /callout >}}

### Member-rollen {#member}

`Member` har i sin tur en mängd finare roller som styr vad de kan göra i ett kodförråd.
Exempel är `admin, maintain, read` [Se repository-roller](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization).

#### Admin-rollen och dess ansvar {#admin}

Varje kodförråd SKA ha en eller flera användare i rollen som Admin.
***En Admin i ett team ska ha övergripande översikt och kunskap om sitt projekt*** och:

* ta ansvar för att agera eller delegera ansvaret för sina teams:
  * säkerhetsvarningar
  * ta bort användare ur teamet som är inaktiva
  * ha full kontroll över vilka som har t.ex. skrivrättigheter i projektet.
* ta ansvar för att projekten i övrigt arbetar för god projekthälsa genom att följa rekommenderade konventioner. Se [Arbete på GitHub: Länkar](../../arbeta-pa-github/#länkar).
* vara teamets eller egna första kontaktytan mot Owners för administrativa frågor vid behov. [Kontakta OSPO](mailto:ospo@digg.se) i första hand.
* som admin - fråga alltid om du är osäker

### External Collaborator-rollen {#external-collaborator}

External Collaborator är en GitHub-roll som ger en extern användare specifika rättigheter på ett enskilt kodförråd, utan att hen blir medlem i organisationen.

Varje medlem i en GitHub-Organisation kostar en licens, så Digg undviker att lägga till användare i Team där det inte behövs. External Collaborator är ett alternativ när en extern person behöver skrivrättigheter på ett specifikt projekt — men inte alltid rätt val.

## Allmänt om roller {#allmant}

* För offentliga projekt behöver externa bidragsgivare inte tillhöra ett team eller ha rollen External Collaborator. De kan bidra med ändringsförfrågningar och avgreningar, precis som i andra öppna projekt.

## Se även

- [Arbete på GitHub](../../arbeta-pa-github/): kontoupplägg, säkerhet, ärendehantering och publicering
- [Förvalda GitHub-inställningar](../forvalda-github-installningar/): säkerhets-, behörighets- och beroendeinställningar
- [Terminologi](../../terminologi/): begrepp som Owner, Member, Team, kodförråd
