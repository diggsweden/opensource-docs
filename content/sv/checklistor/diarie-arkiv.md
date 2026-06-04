---
title: "Diarieföring och arkivering"
description: "Checklista för säker hantering av projekt som allmänna handlingar enligt offentlighetsprincipen"
weight: 100
---

**Syfte:** Hantera ett projekts publicering och arkivering som allmänna handlingar enligt offentlighetsprincipen.

**Avgränsning:** Checklistan listar det som är specifikt för öppen programvara. Generell diarieföring, arkivredovisning och gallring förutsätts ske enligt era ordinarie processer.

## A. Diarieföring

- [ ] **SKA**: Beslutet att publicera källkoden externt är diariefört, inklusive underlag som licensval och risk- och säkerhetsbedömning.
- [ ] **SKA**: Kopplingen mellan ärende och kodförråd (URL/ID) är dokumenterad, så att diariet kan följas till sin kod och tvärtom.
- [ ] **SKA**: Eventuella avtal eller överenskommelser om gemensam utveckling är diarieförda.
- [ ] **SKA**: Beslut om att avsluta eller arkivera projektet är diariefört.

## B. Arkivering

- [ ] **SKA**: Projektets status är uppdaterad (t.ex. arkiverat i kodsamverkansplattformen, noterat i README).
- [ ] **SKA**: Handlingar som ska bevaras utanför plattformen är exporterade enligt arkivfunktionens anvisningar.

## C. Gallring och GDPR

- [ ] **SKA**: Om personuppgifter förekommit i ärenden, ändringsförfrågningar eller incheckningsmeddelanden är en GDPR-bedömning gjord. Personuppgifter kan finnas kvar i git-historiken även om de raderats i den aktuella versionen.

## Så hanteras informationen på kodsamverkansplattformar

På en kodsamverkansplattform för öppen programvara finns minst tre informationstyper att hålla reda på. Alla är spårbara, sökbara och sparas publikt — historiken bevaras, och normalt gallras ingenting.

- **Kod, systemdokumentation och bilder** — versionshanteras. Varje incheckning får en unik identifierare (SHA) så att en exakt version alltid kan återskapas. Utgåvor (1.0.0, 1.1.0 …) med ändringslogg ger ytterligare spårbarhet, men förekommer inte i alla projekt.
- **Frågor och ärenden (issues)** — varje ärende får ett id som finns kvar även när det stängs eller kodförrådet arkiveras, och går att söka fram i efterhand (fritext, avsändare med mera).
- **Kodbidrag (ändringsförfrågningar, PR/MR)** — fungerar som ärenden: id bevaras och de är sökbara i efterhand.

**Att tänka på vid arkivering.** Plattformarna som används är ofta externa molntjänster från tredjepartsleverantör — det som finns där idag är inte alltid garanterat tillgängligt imorgon, eftersom villkor och funktioner kan ändras. Arkivera därför i öppna, väldefinierade format som kan återskapas utan beroende till en viss programvara:

- **Kod och dokumentation:** helst ren text i UTF-8 (t.ex. Markdown eller AsciiDoc) och bilder i öppet format (PNG, SVG, WebP, AVIF med mera). Exportera hela kodförrådet med historik.
- **Frågor/ärenden och ändringsförfrågningar:** exportera via plattformens API, normalt som JSON.

Bevarandeformat bör följa [Riksarkivets krav för elektroniska handlingar](https://riksarkivet.se/arkivera-och-forvalta/medium-och-format/elektroniska-handlingar). Kraven ses för närvarande över genom Riksarkivets [arbete med nya formatföreskrifter](https://riksarkivet.se/projekt/oversyn-av-riksarkivets-foreskrifter-och-allmanna-rad-om-elektroniska-handlingar); förslagen är ännu inte beslutade (2025–2026), så stäm av mot den senaste versionen.
