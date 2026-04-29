---
title: "Om handboken"
description: "Om Diggs handbok för öppen programvara: terminologi, teman, policy"
weight: 90
---

Det här är en sida om handboken själv — vilka teman den täcker, vad som gäller kring integritet och licens, samt hur du bidrar.

## Diggs teman på GitHub

Diggs öppna kod är grupperad i flera teman på `github.com/diggsweden`.
Varje tema har sin egen dokumentationssajt:

| Tema | Plats |
|---|---|
| Öppen programvara | denna handbok |
| Plånboksekosystemet | [docs.wallet.digg.se](https://docs.wallet.digg.se/) *(planerad)* |
| Öppen data (DCAT-AP-SE) | [docs.dataportal.se/dcat](https://docs.dataportal.se/dcat) |

## Policy och riktlinjer

Handboken vilar på Diggs officiella policy och riktlinjer samt internationella standarder.
För komplett källista, se [Standarder, specifikationer och principer](../checklistor/standarder/).

## Integritet

Webbplatsen lagrar ditt val av tema (ljust/mörkt) i webbläsarens `localStorage` så att valet kommer ihåg vid återbesök.
Värdet är `light` eller `dark` under nyckeln `color-theme`. Det innehåller ingen personuppgift och lämnar aldrig din enhet.

Vi gör i övrigt inget av följande:

- Inga kakor sätts.
- Ingen statistik eller besöksanalys samlas in.
- Inga tredjepartstjänster (analys, typsnitt, inbäddade videor) anropas.
- Sökningen körs lokalt i webbläsaren. Sökord lämnar inte din enhet.

## Tillgänglighet

Handboken strävar efter att uppfylla [WCAG 2.1 nivå AA](https://www.w3.org/Translations/WCAG21-sv/).
Semantiska landmärken, språkmärkning per sida, hoppa-till-innehåll-länk och stöd för ljust/mörkt tema samt högkontrast är på plats.
Manuell webbläsartest av fokusring, omflöde vid 400 % zoom och fokusfälla i mobilmenyn återstår.

Rapportera problem i [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs/issues).

## Källkod och licens

Källkoden för denna handbok finns på [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs).
Innehållet är **CC0-1.0** och får fritt återanvändas, modifieras och delas vidare.
Andra organisationer är välkomna att fritt utgå från materialet i sin egen dokumentation.

Bygginfrastrukturen följer [Hextra-temats licens](https://github.com/imfing/hextra) (MIT).

## Bidra

Förslag och rättelser tas tacksamt emot via ärenden och ändringsförfrågningar i [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs).

**SKA**: Bidragsgivaren har själv granskat, förstått och kvalitetssäkrat AI-genererat innehåll innan ändringsförfrågan skickas in. AI-bidrag behandlas på samma sätt som mänskliga — ansvaret för innehållet ligger på den som bidrar.

## Status

Denna handbok är **arbetsmaterial** under uppbyggnad.

## Se även

- [Arbete på GitHub](../arbeta-pa-github/): kontoupplägg, säkerhet, ärendehantering och publicering
- [Checklistor](../checklistor/): publicering, säkerhet, licenser, förvaltning
- [Öppna källkodsprojekt](../projekt/): katalog över Diggs och Sweden Connects projekt
- [Mallprojekt för öppen programvara](../projektmall/): startstruktur för nya projekt
- [Terminologi](../terminologi/): begrepp och förkortningar i handboken
