<!--
SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government

SPDX-License-Identifier: CC0-1.0
-->

# opensource-docs

Källan till vår handbok för arbete med öppen programvara.

- 📖 **Handboken:** <https://diggsweden.github.io/opensource-docs/>
- 🗂️ **Våra öppna källkodsprojekt:** <https://diggsweden.github.io/opensource-docs/sv/projekt/>

**Arbetsmaterial.** Webbplatsen är just nu ett utkast och förbättras. Indexering är avstängd (`robots.txt: Disallow: /`).

## Utveckling

### Bygga lokalt

```sh
hugo mod get -u
hugo server
```

Sajten serveras på <http://localhost:1313/>.

#### Två konfigurationslager

Konfigurationen är uppdelad i två lager så att inga flaggor behöver anges manuellt:

- `hugo.toml` — produktions­konfiguration. `baseURL = 'https://diggsweden.github.io/opensource-docs/'`.
- `config/development/hugo.toml` — lokal utvecklings­override. `baseURL = 'http://localhost:1313/'`.

`hugo server` använder miljön `development` och lägger overriden ovanpå produktionskonfigurationen.
`hugo` (och CI) använder `production` och struntar i overriden.
Inget `--baseURL` behöver anges i något fall.

### Innehåll och struktur

| Område | Plats |
|---|---|
| Innehåll (svenska) | `content/sv/` |
| Innehåll (engelska) | `content/en/` |
| Tema-overrider | `layouts/` |
| Egen CSS och brandtoning | `assets/css/custom.css` |
| Översättningar för UI-strängar | `i18n/sv.yaml`, `i18n/en.yaml` |
| Statiska resurser | `static/` |
| Tillgänglighetstester (CI) | `.pa11yci.json` |

## Licens

| Vad | Licens |
|---|---|
| Innehåll under `content/` och `static/` | CC0-1.0 |
| Bygginfrastruktur (Hextra-temat via Hugo Module) | följer uppströms — MIT |

För filspecifika deklarationer enligt [REUSE-specifikationen](https://reuse.software/), se `REUSE.toml`.

## Bidra

Förslag och rättelser tas emot via ärenden och ändringsförfrågningar i [`diggsweden/opensource-docs`](https://github.com/diggsweden/opensource-docs). Material och vägledning för arbete på GitHub finns i [handbokens kapitel om GitHub-arbete](https://diggsweden.github.io/opensource-docs/sv/arbeta-pa-github/).
