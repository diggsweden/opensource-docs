---
title: "Terminologi"
description: "Synonyma namn på öppen programvara samt svenska termer och begrepp i Diggs handbok"
weight: 50
---

Det här är handbokens ordlista — synonyma namn på området, plus svenska översättningar och förklaringar av tekniska begrepp.

## Synonyma benämningar

Termerna nedan refererar alla till samma sak: **programvara där källkoden är öppen och fritt tillgänglig att använda, studera, ändra och dela vidare**.
Olika namn har uppstått av historiska skäl (free software-rörelsen kontra open source-rörelsen, som vi inte behandlar närmare här).

| Begrepp | Förklaring |
|---|---|
| Öppen källkod / open source | Det vanligaste och mest sökbara namnet i Sverige och internationellt. |
| Fri- och öppen programvara | Vanligt uttryck för *free and open source software*. Betonar frihetsaspekten (att fritt få använda, studera, dela och förbättra programvaran) på det sätt som *open source* ensamt inte gör. |
| FLOSS, FOSS | Internationella förkortningar. **FLOSS** = *free, libre and open source software*. **FOSS** = *free and open source software*. FLOSS lägger till *libre* (från franska/spanska för "fri") för att tydliggöra att *free* syftar på frihet, inte på pris. |

## Termer och begrepp

Tabellen samlar både svenska översättningar och förklaringar av termer som förekommer i denna handbok.
Engelska motsvarigheter står inom parentes där det är hjälpsamt.

| Begrepp | Förklaring |
|---|---|
| Arkivering | Användning av ett projekts Arkivering-funktion på GitHub. Projektet är då fortsatt öppet och åtkomligt, men markerat som inaktivt mot omvärlden. |
| Avgrena, avgrening (fork) | Att skapa en egen kopia av ett projekts kodförråd för att utveckla vidare på egen hand eller bidra tillbaka. |
| Besvara ett ärende | Att besvara ett ärende eller en ändringsförfrågan. Minimalt bekräftas att ärendet är läst (det kan också i sig innebära lösning eller avslut i samma bekräftelse). |
| Bidragsgivare | Den som föreslår en ändring till ett projekt via en ändringsförfrågan eller kommentar. Skiljs från **underhållsansvarig**, som ansvarar för att granska och slå ihop bidragen. En enskild person kan vara båda i olika sammanhang. |
| Branch protection | Inställning på kodsamverkansplattformen som hindrar direkt push till skyddade grenar (t.ex. `main`). Ändringar måste gå via ändringsförfrågningar, och krav som kodgranskning och testpass kan vara obligatoriska innan merge. |
| CLA och DCO | Två sätt för bidragsgivare att intyga rätten att bidra. **DCO** (Developer Certificate of Origin) är en kort försäkran som signeras genom att lägga till `Signed-off-by:` i incheckningsmeddelandet. Vanligt i Linux-kärnan och liknande projekt. **CLA** (Contributor License Agreement) är ett mer formellt avtal som signeras separat. Vanligt hos företagsdrivna projekt. |
| Conventional Commits | Strukturerat format för incheckningsmeddelanden (t.ex. `feat:`, `fix:`, `docs:`). Möjliggör automatisk generering av ändringslogg och versions-bumpar. Se [conventionalcommits.org](https://www.conventionalcommits.org/). |
| Copyleft och tillåtande licens | Två huvudtyper av öppna licenser. **Copyleft** (t.ex. GPL, AGPL, EUPL) kräver att vidareutvecklingar publiceras under samma licens; friheten "smittar av sig". **Tillåtande** (t.ex. MIT, Apache 2.0, BSD) tillåter att vidareutveckling sker under valfri licens, inklusive sluten. **Notera:** ordet *copyleft* är en ordlek på *copyright* (right → left, höger → vänster). Det är ett *hack* av ordet, inte en politisk position. Forna tiders hackare var ofta särskilt förtjusta i sådana ordlekar. |
| Gemenskap (community) | Människorna runt ett projekt: användare, bidragsgivare, underhållsansvariga och övriga som följer eller deltar. |
| Gemenskapsfiler (community health files) | Standardfiler i ett projekt som gör det enklare att samverka — t.ex. `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`. |
| GitHub-Organisation | En samarbetsyta på GitHub kallas *Organisation*, och en Organisation innehåller en mängd kodförråd. |
| Gren (branch) | En parallell utvecklingslinje av koden i ett kodförråd, t.ex. för en ny funktion eller en programfix. |
| Hackare | I sin ursprungliga, positiva betydelse: en person som med kreativitet och nyfikenhet utforskar och bygger om system, ofta med uppfinningsrika genvägar och eleganta lösningar. Termen kommer från MIT:s tidiga datormiljöer på 1960-talet och lever kvar i öppen källkod-kulturen. I populärmedia har ordet senare också kommit att betyda *databrottsling*, men det är en avvikelse från den ursprungliga innebörden. |
| Inaktiva användare | Medarbetare (anställda, konsulter) som slutat, vars uppdrag upphört, eller som inte är eller planerar vara aktiva på Diggs GitHub över längre tid. |
| Incheckning (commit) | En sparad ändring i versionskontrollen, oftast med ett kort meddelande som beskriver vad som ändrats och varför. |
| Kodförråd (repository, repo) | Den centrala platsen där ett projekts kod, dess historik och tillhörande filer lagras. Ett kodförråd kan vara publikt eller privat. |
| OpenSSF | Open Source Security Foundation. Branschorganisation som tar fram standarder och verktyg för säkrare öppen programvara, bland annat OSPS Baseline, Scorecard, SLSA och Sigstore. Refereras explicit i Diggs riktlinje. |
| OSI | Open Source Initiative. Den organisation som upprätthåller den vedertagna definitionen av öppen källkod och godkänner licenser som uppfyller den. En **OSI-godkänd licens** är en licens som granskats och godkänts. Det är vanligtvis kravet för att en programvara ska räknas som öppen källkod. Lista: [opensource.org/licenses](https://opensource.org/licenses). |
| OSPO | Open Source Programs Office. Den funktion eller team i en organisation som ansvarar för strategi, policy och stöd kring öppen källkod. På Digg fyller **Open Source Guild** mycket av en OSPO-funktion (mejl: `ospo@digg.se`). |
| Paketarkiv | Den plats där färdiga programvarupaket publiceras och hämtas. Vi använder **paketarkiv** som generell term för alla typer: kod-paket (npm, Maven Central, PyPI, NuGet, Cargo) och container-avbildningar (Docker Hub, GHCR, Quay). Termen följer den etablerade Debian-/apt-traditionen i svenska FOSS-översättningar. För specifikare uppdelning används *containerarkiv* respektive *artefaktarkiv*. |
| Programfel (bug) | Ett fel eller oönskat beteende i programvaran. |
| Programfix (patch) | En ändring som rättar ett programfel eller löser ett specifikt problem. |
| Programvara | Bred svensk term för software. Kan avse själva källkoden, det körbara programmet (binär) eller hela paketet runt om (konfiguration, dokumentation, byggskript m.m.). Myndighetsspråk använder ofta den breda betydelsen. |
| Projekt | Övergripande samlingsnamn som kan implicera flera kodförråd eller GitHub-team.<br><br>Påhittat exempel: projektet *covidbevis* består av teamen `digg-interna` och `konsultTeam2`, och de har tillgång till kodförråden `covidgui` och `covid-sad`. |
| Pull Request, Merge Request (PR/MR) | Se *Ändringsförfrågan*. |
| REUSE och SPDX | Maskinläsbara standarder för fil-nivå-märkning av licens och upphovsrätt. Varje fil får `SPDX-License-Identifier` (vilken licens) och `SPDX-FileCopyrightText` (vem äger upphovsrätten). REUSE-specifikationen beskriver hur projekt ska följa konventionen. Verktyg: [reuse.software](https://reuse.software/). |
| Samarbetsytor för öppen programvara | Våra två ytor på GitHub i dagsläget. Dokumentationen berör ej interna, icke-publika ytor. |
| Sammanfoga, sammanslagning (merge) | Att flytta in ändringar från en gren till en annan, t.ex. när en funktion är klar och ska in i huvudgrenen. |
| SAST, SCA, secret scanning | Tre typer av automatisk kodanalys i CI. **SAST** (Static Application Security Testing) granskar källkoden efter sårbarhetsmönster. **SCA** (Software Composition Analysis) granskar tredjepartsberoenden för kända sårbarheter och licensproblem. **Secret scanning** letar efter oavsiktligt incheckade hemligheter (lösenord, tokens, API-nycklar). |
| SBOM | Software Bill of Materials. Strukturerad lista över alla komponenter och beroenden i en programvara, som en innehållsförteckning. Vanliga format: SPDX (ISO/IEC 5962) och CycloneDX. SBOM gör det möjligt att snabbt avgöra om ett projekt påverkas av en känd sårbarhet eller har problematiska licenser. |
| Scorecard | OpenSSF Scorecard. Automatiserat verktyg som granskar säkerhetspraxis i ett öppet projekt (branch protection, signering, beroendebevakning m.m.) och ger en poäng 0–10. Snabb hälsobedömning av projektet. |
| Semantic Versioning | Versionsnumrering enligt mönstret `X.Y.Z` (major.minor.patch). Major bumpas vid bakåtkompatibilitetsbrytande ändringar, minor vid nya bakåtkompatibla funktioner, patch vid fixar. Se [semver.org](https://semver.org/). |
| SLSA | Supply-chain Levels for Software Artifacts. Ramverk för att gradera mognaden i ett projekts byggkedja, från oansvarig (L0) till kraftigt härdad (L4). Hjälper förhindra angrepp på leveranskedjan. |
| Standard for Public Code | Internationell standard från Foundation for Public Code med 16 kriterier för kvalitet och hållbarhet hos öppen kod i offentlig sektor. Se [standard.publiccode.net](https://standard.publiccode.net/). |
| Team | Konstruktionen GitHub-team som kan ses som virtuella team. |
| Underhållsansvarig (maintainer) | Den eller de personer som ansvarar för ett projekts förvaltning: granska bidrag, slå ihop ändringsförfrågningar, släppa nya utgåvor och svara på ärenden. |
| Uppströms | Det ursprungliga projektet som vi använder eller hämtar kod från. Metaforen är hämtad från floder: kod flyter "nedströms" från källan till oss; bidrag tillbaka går *uppströms*. Att "bidra uppströms" betyder att skicka rättelser eller förbättringar tillbaka till originalprojektet. |
| Utgåva (release), att släppa | En namngiven version av programvaran som projektet officiellt har gjort tillgänglig (t.ex. version 1.2.0). Verb-form: *att släppa en utgåva*. |
| Utgåvenotiser (release notes) | Kommentar som följer med varje utgåva, oftast som beskrivning av en release-tagg på GitHub eller liknande. Mer berättande än ändringsloggen — kurerade höjdpunkter, motivering att uppgradera och eventuella säkerhetsvarningar. **Riktas till:** slutanvändare, beställare och beslutsfattare som vill veta *varför* de bör uppgradera utan alla tekniska detaljer. |
| Workflows | GitHubs benämning på CI/CD-pipelines. En rad konfigurerbara processer för att bygga, autotesta och deploya projekt som körs på GitHubs servrar (så kallade *Runners*). |
| Ändringslogg (changelog) | Fil som listar ändringar mellan versioner (oftast `CHANGELOG.md`). Innehåller tekniskt detaljerade poster per utgåva: nya funktioner, programfixar, brytande ändringar — i kronologisk ordning. **Riktas till:** utvecklare, integratörer och underhållsansvariga som behöver veta exakt vad som ändrats. Vanligt format: [Keep a Changelog](https://keepachangelog.com/). |
| Ärende (issue) | En rapporterad uppgift, fråga, programfel eller önskemål, oftast i projektets ärendehanterare. |
| Ändringsförfrågan (Pull Request, Merge Request, PR/MR) | Förslag att slå ihop ändringar från en gren till en annan. **GitHub** kallar dem *Pull Request* (PR), **GitLab** kallar dem *Merge Request* (MR) — det är samma sak. På svenska kallar vi båda för *ändringsförfrågan*. |

## Se även

- [Språkpolicy på samverkansplattformen](../referens/sprakpolicy/): Språklag (2009:600) i praktiken
- [Arbete på GitHub](../arbeta-pa-github/): kontoupplägg, säkerhet, ärendehantering och publicering
- [Checklistor](../checklistor/): publicering, säkerhet, licenser, förvaltning
