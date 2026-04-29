---
title: "Arbete på GitHub"
description: "En guide för den som jobbar på Diggs GitHub-ytor"
weight: 10
aliases:
  - /jobba-pa-github/
---

Det här är guiden för dig som är ny till våra GitHub-ytor.
Den ger en övergripande och praktisk översikt av hur vi jobbar på samarbetsytorna: konton, säkerhet, ärendehantering, förvaltning och publicering.
Detaljerna hittar du sedan i bland annat våra [checklistor](../checklistor/) och annat stödmaterial.

Fokus ligger på [DiggSweden](https://github.com/diggsweden); samma principer ska på sikt tillämpas även på [SwedenConnect](https://github.com/swedenconnect).

Är du ny till hela ämnet öppen programvara, rekommenderar vi att du först läser igenom [opensource.guide](https://opensource.guide/) — en bredare introduktion till området, gemenskapen och hur man bidrar (engelska). Det finns också en [Terminologi och begreppslista](../terminologi/) — svenska termer för vanliga engelska tekniska begrepp.

## Samarbetsytor

Digg har idag två externa samarbetsytor på samverkansplattformen GitHub:

- **DiggSweden** — Diggs egen GitHub-organisation, för lösningar och dokumentation där Digg är huvudansvarig.
- **SwedenConnect** — GitHub-organisationen för Sweden Connect-federationen (svensk e-legitimation och eIDAS), som drivs av Digg.

Där sker arbete kring olika projekt, tillsammans med externa konsulter, bidragsgivare och Digg-anställda. På ytorna finns mest programmeringstunga projekt, men även rena dokumentations- och specifikationsprojekt förekommer.

| Organisation | Syfte | Huvudansvariga |
| --- | --- | --- |
| [DiggSweden](https://github.com/diggsweden) | Släpp av egna lösningar, samarbete med andra | [`ospo@digg.se`](mailto:ospo@digg.se) (**Open Source Guild** — fyller mycket av en [OSPO](../terminologi/)-funktion på Digg)<br>GitHub-användare med rollen Owner |
| [SwedenConnect](https://github.com/swedenconnect) | De flesta SwedenConnect-relaterade projekt | GitHub-användare med rollen Owner |

*Listan över Owner-konton publiceras inte externt. OSPO/Open Source Guild är aktiv på DiggSweden; SwedenConnect koordineras via Owner-rollerna där. Resten av guiden beskriver processer specifika för DiggSweden.*

## GitHub-konton

Du behöver först skaffa ett [GitHub-konto](https://github.com/signup).

* Du bör lägga till din `namn@digg.se`-adress på ditt befintliga GitHub-konto om du redan har ett. Det är enklast, och egna bidrag till öppna projekt är inget problem för Diggs del. Vill du av integritetsskäl hålla isär jobb och privat går det också bra att skapa ett separat konto för din Digg-roll.
* Tänk på att ditt konto är delvis offentligt och kan komma att kopplas till Digg, vilket innebär att du förväntas uppträda professionellt och myndighetsmässigt på det konto som är kopplat till din `namn@digg.se`-adress.
* Oavsett vilket användarnamn du har, fyll också i ditt riktiga namn (GitHub → Edit Profile → Name).

### Grundläggande säkerhet för ditt GitHub-konto

Tvåfaktorsautentisering (2FA) ska vara aktiverat — sätt upp det via [GitHubs instruktioner](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa) och spara återställningskoderna på ett säkert ställe så du inte riskerar att bli utlåst om enheten försvinner.

Om du bidrar med ändringsförfrågningar (Pull Requests) tillkommer två saker. Använd alltid din `namn@digg.se`-adress i incheckningarna — det är så Digg som myndighet kan visa vem som bidragit med vad. Du ska också [signera dina incheckningar](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#ssh-commit-signature-verification) så andra kan verifiera att du verkligen är avsändaren.

Aktivera även "[Vigilant Mode](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits)" på ditt GitHub-konto — det gör att dina signerade incheckningar visas som verifierade för andra.

<!-- TO-DO: image of signing -->

### Att lägga till en användare till DiggSweden

Du behöver gå med i Diggs GitHub-organisation och bli tillagd i ett eller flera [Team](../terminologi/) (GitHubs benämning för en grupp användare i organisationen).

Inbjudan kommer från någon med [Owner- eller Admin-roll](../referens/github-roller/) — i de flesta fall via ett projekt- eller konsultteam som du redan ingår i. Om du inte vet vem som har den rollen för ditt team, [kontakta OSPO](mailto:ospo@digg.se) — ange ditt syfte och vad du behöver, så hjälper de dig vidare.

## Basinställningar och mallprojekt

Det finns två olika stöd att känna till.
Det ena ärvs automatiskt, det andra väljer du aktivt.

### Organisationens basinställningar

Alla kodförråd på DiggSweden ärver som grundinställning en uppsättning mallar för felrapporter, funktionsförslag och ändringsförfrågningar från [`diggsweden/.github`](https://github.com/diggsweden/.github).
Mallarna är aktiva från första incheckningen, och kodförrådet kan sedan anpassa dem efter projektets behov.

### Mallprojekt för nya öppna projekt

För att enkelt komma igång med ett nytt öppen källkod-projekt tillhandahåller Digg ett [Mallprojekt för öppen programvara](../projektmall/) med gemenskapsfiler, REUSE-licensiering, OpenSSF Scorecard med mera. Mallens filer kopieras in i det nya kodförrådet och anpassas efter projektets behov.

## Förvaltning och livscykelhantering

### Ärendehantering

Teamet som äger ett kodförråd har förstahandsansvaret för att svara på ärenden.
Hur teamet lägger upp det arbetet i detalj är upp till teamet.

Diggs GitHub och projektytor är primärt avsedda för projektfokuserade ärenden.
Diskussioner som inte rör ett projekt direkt ska styras vidare till andra ytor.
Frågor som inte är tekniska eller inte rör ett specifikt projekt hänvisas vidare till [Diggs kundservice](https://www.digg.se/om-oss/kontakta-oss) (`info@digg.se`).

{{< callout type="info" >}}
Digg är en myndighet och förväntas av allmänheten besvara vänligt, korrekt och inom rimlig tid.
***Rekommenderad svarstid för ett ärende är fem dagar.***
{{< /callout >}}

### Hantera inaktiva medlemmar

Två fall hanteras olika:

**När någon slutar.** När en medarbetare slutar på Digg eller på annat sätt avslutar sitt uppdrag tas hen bort från GitHub-organisationen — det innebär att Team-medlemskapen försvinner men det personliga GitHub-kontot finns kvar. Admin-rollen för respektive Team håller översiktlig koll på sina medlemmar (en automatiserad kontroll är på gång).

**Vid längre inaktivitet.** Användare i GitHub-organisationen som inte har haft synlig aktivitet (incheckningar, kommentarer, ärendeuppdateringar) på ett år rensas automatiskt — även om anställningen på Digg är aktiv. Behöver du återinträda är vägen samma som första gången: kontakta din admin/owner eller [OSPO](mailto:ospo@digg.se).

### Arkivering av projekt

Projekt som saknar underhållsansvariga räknas som inaktiva och ska arkiveras — gärna med ett tydliggörande i README.

Inaktivitet bedöms på årsbasis. Med inaktivitet menas att projektet inte har några incheckningar, ärendeuppdateringar eller annan synlig aktivitet.

## Sårbarhet och säkerhet

GitHub erbjuder flera inbyggda verktyg för automatiserad sårbarhets- och säkerhetsskanning. Digg strävar dock i första hand efter plattformsoberoende verktyg när det går — t.ex. [Renovate](https://docs.renovatebot.com/) för beroendebevakning och [Opengrep](https://opengrep.dev/) för statisk kodanalys. GitHub-native funktioner som hemlighetsscanning används där de passar bättre.

Vilka funktioner som är aktiverade på organisationsnivå listas i [Referens: Förvalda GitHub-inställningar](../referens/forvalda-github-installningar/). Förinställningarna kan behöva finjusteras av teamet.

När en säkerhetsvarning kommer in är det teamet som äger kodförrådet som har förstahandsansvaret att åtgärda.

<!-- TO-DO: Add image of GitHub Security tab -->

## Publicering av externa bibliotek och container-avbildningar

{{< callout type="warning" >}}
Arbete pågår. Den här sektionen är under migration.
{{< /callout >}}

Du ska inte publicera artefakter som Digg ansvarar för under personliga namn. Använd i stället ett gemensamt Digg-konto med [`ospo@digg.se`](mailto:ospo@digg.se) som ägar-/avsändaradress, så undviker vi personberoenden och i värsta fall inaktuella e-postadresser. Det finns också en färdig [release-bot](#release-bot-ci-flöde-och-tillgängliga-variabler) med signeringsnycklar uppsatt — se sektionen nedan. Aktiva utvecklare läggs sedan till som "Developers" på paketet.

Behöver projektet ett nytt gemensamt konto på ett paketregister, [kontakta OSPO](mailto:ospo@digg.se).

### Paketarkiv: [npmjs.com](https://www.npmjs.com/)

För Javascript/Typescript-bibliotek.

Digg äger för närvarande två organisationer på NPMJS: [`digg`](https://www.npmjs.com/org/digg) och [`diggsweden`](https://www.npmjs.com/org/diggsweden).
Organisationen `digg` är arkiverad; `diggsweden` är den som ska användas framöver.

### Paketarkiv: [Maven Central Portal](https://central.sonatype.com/)

För Java/Kotlin-bibliotek.

Digg äger två namespace på Maven Central Portal: [`se.digg`](https://central.sonatype.com/search?namespace=se.digg) och [`se.swedenconnect`](https://central.sonatype.com/search?namespace=se.swedenconnect).

### Paketarkiv: [GitHub Container och Package Registry](https://github.com/features/packages)

* GitHub Packages är avsett för utveckling, inte skarpa utgåvor.
  Åtkomst kräver bland annat en GitHub-token, vilket inte fungerar bra i Diggs miljöer.
  Publicera därför också på Maven Central Portal.
* Det som publiceras på Maven Central Portal och inte är `SNAPSHOT` går inte att ta bort, utom i mycket speciella fall.
* För container-avbildningar: föredra små säkra bascontainrar (t.ex. distroless, Wolfi eller Chainguard).

### Release-bot, CI-flöde och tillgängliga variabler

Numera använder de flesta nyare projekt på DiggSweden den här lösningen — en Release-bot tillsammans med återanvändbara workflows och konfigurerade secrets. Vi rekommenderar den om du vill få många av grundkraven från [checklistorna](../checklistor/) uppfyllda direkt: säker signering, beroendekontroll, licensiering och projekthälsoindikatorer ingår i basuppsättningen, och enskilda utvecklare slipper hantera nycklar eller bli personberoenden i flödet. Boten kan signera och checka in utgåvor i ett CI-flöde som triggas av en tag-push.

För DiggSweden:

* [DiggSwedenBot](https://github.com/diggswedenbot)

#### Secrets och variabler

En aktuell lista över secrets och variabler som finns konfigurerade för Digg-projekt — och vad var och en används till — finns i [reusable-ci/docs/reference.md](https://github.com/diggsweden/reusable-ci/blob/main/docs/reference.md).

Secrets sätts inte som standard utan görs tillgängliga per projekt.

#### Återanvändbara CI-komponenter

Lints, säkerhetsscans, signering, paketpublicering med mera finns som färdiga byggblock. En aktuell lista och beskrivning av varje komponent finns i [reusable-ci/docs/components.md](https://github.com/diggsweden/reusable-ci/blob/main/docs/components.md).

För ett praktiskt exempel på en release-pipeline som använder dem, se [`diggsweden/cose-lib`](https://github.com/diggsweden/cose-lib/tree/main/.github/workflows).

## Vanliga frågor (FAQ)

### Team

* **Hur skapar jag ett GitHub-team?**

  Be någon med Owner-rollen, eller [kontakta OSPO](mailto:ospo@digg.se).

* **Måste jag skapa ett GitHub-team?**

  Nej.
  Av kostnadsskäl behöver inte alla som bidrar vara med i ett team i organisationen.
  Är projektet publikt kan det räcka att en eller två underhållsansvariga godkänner ändringsförfrågningar utifrån, på samma sätt som i ett vanligt öppet projekt.

* **Hur ska team delas in: per produkt, per konsultgrupp, eller hur?**

  Befintliga team är ibland uppdelade efter ansvarsområde, ibland efter konsulttillhörighet, ibland efter projekt.
  Avgör vad som passar er bäst.
  *Påhittat exempel: ett produktteam för "covidbevis" plus ett konsultteam "konsultTeam2" som arbetar tvärs över flera projekt.*
  En `Member` kan vara medlem i flera team.

* **Ett team får tillgång till ett eller flera kodförråd. Vilka rättigheter ska de ha som standard?**

  Det förekommer inte säkerhetsklassade personer i ett team, så ett kodförrådsteams skrivrättigheter ska vara `Read/Läs`.
  Admin för teamet ger sedan vid behov enskilda medlemmar de rättigheter som krävs (`Write`, `Maintainer` etc.).

* **Jag vill avgrena ett externt projekt. Ska jag göra det under Diggs GitHub-organisation eller under min privata användare?**

  I de flesta fall: nej till avgrening under Digg-organisationen. Avgrena under din egen användare i första hand.
  Vi vill inte att DiggSweden ska uppfattas som att vi har tagit på oss att förvalta en avgrening av ett externt projekt.
  Avgreningar som ligger under organisationen utan att ha diskuterats i förväg kommer att arkiveras.

### Schrems II och GDPR

* **Får vi använda GitHub på Digg? Det är ju en amerikansk molntjänst. Vad gäller med GDPR och Schrems II?**

  Tillsvidare används GitHub på Digg som komplement, vilket också nämns i Diggs riktlinjer för öppen programvara.
  Samtidigt pågår en strävan att hitta andra lösningar, bland annat eftersom [adekvansbeslutet underlättar informationsöverföring men inte löser övriga risker (eSamverkans sammanfattning, PDF)](https://www.esamverka.se/download/18.43a3add4188b9f2345a2ffd0/1687333877690/ES2023-10%20Adekvansbeslut%20och%20ny%20sekretessbrytande%20best%C3%A4mmelse%20-%20%C3%84r%20det%20gr%C3%B6nt%20ljus.pdf).

### Bidrag

* **Får vi bidra med felrättningar och ärenden uppströms?**

  Ja. För praktiska steg, se checklistan [Bidrag uppströms](../checklistor/bidrag-uppstrom/) — den täcker policy-koll, licensval, CLA/DCO, kommunikation och eskalering.

  I praktiken sker det redan att Digg ibland bidrar aktivt till öppen programvara och öppna data genom upphandlingar och samarbeten med externa partners där vi uppmuntrar och kräver öppen programvara.

### Licens-headrar (REUSE/SPDX)

* **Hur anger jag licens-headrar korrekt med REUSE/SPDX? Det finns flera vanliga konventioner.**

  För själva licensdeklarationen finns flera konventioner, exempelvis:

  * `<YEAR> <COPYRIGHTOWNER>`
  * `<YEAR> <GITHUBSPACE/PROJECTNAME>`
  * `<YEAR> The <projectname> Authors`

  Digg rekommenderar i första hand `<YEAR> <COPYRIGHTOWNER>` för tydlighet.
  Konkret exempel: `2026 Digg - Agency for Digital Government`.
  Se även [REUSE FAQ](https://reuse.software/faq/) för ytterligare information om licensheaders.

### Privata och publika projekt

* **Varför finns privata projekt på Diggs GitHub? Är det inte en plattform för öppen programvara?**

  Det finns flera skäl till att projekt kan behöva vara privata under en fas: ägarskapet är inte klart, vi har inte beslutat om ett äldre projekt från en annan organisation ska bli öppen programvara, eller vi behöver kvalitetssäkra projektet innan det publiceras öppet.
  Premissen är ändå att privata projekt i första hand ska samarbetas om på lämpligare (stängda, säkrare) ytor. Bara i undantagsfall, och som ett medvetet val, ska de ligga på GitHub.

* **Jag har bara fler frågor. Vart vänder jag mig?**

  [Kontakta OSPO](mailto:ospo@digg.se) i första hand.
  I andra hand: kontakta någon med [Owner-rollen](../referens/github-roller/).

## Se även

- [Roller i organisationen på GitHub](../referens/github-roller/): definitioner av Owner, Member, External Collaborator och Admin
- [Förvalda GitHub-inställningar](../referens/forvalda-github-installningar/): säkerhets-, behörighets- och beroendeinställningar
- [Språkpolicy på samverkansplattformen](../referens/sprakpolicy/): Språklag (2009:600) i praktiken, med exempel per situation
- [Terminologi](../terminologi/): svenska termer för vanliga engelska tekniska begrepp (kodförråd, ärende, ändringsförfrågan m.fl.)

## Länkar

* [Allmänna riktlinjer för öppen programvara på Digg (2022, fortsatt aktuella; uppdaterad version 2026 publiceras snart)](https://www.digg.se/download/18.72c5e64d183579af3fd1b6c/1664286148293/riktlinjer-for-utveckling-och-publicering-av-oppen-programvara.pdf)
* [Diggs hjälpmallprojekt för öppna programvaruprojekt](https://github.com/diggsweden/open-source-project-template)
* [Diggs basrepo för organisationen DiggSweden](https://github.com/diggsweden/.github)
