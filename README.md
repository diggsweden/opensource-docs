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

### Testa rapporter lokalt

Om `digg-scorecard-monitor` finns som sibling-repo kan rapportdata genereras och importeras innan `hugo server` startas.
Importscript och monitorscript är skrivna i Bash och kräver `jq`.
Om `reporting/repositories.json` saknas eller är gammal behöver GitHub-anropet en token för att undvika rate limits.

```fish
cd ../digg-scorecard-monitor

# Kör bara om reporting/repositories.json saknas eller behöver uppdateras.
set -x GITHUB_TOKEN "your-token-here"
bash scripts/list_public_repositories

bash scripts/generate_reuse_report_json
bash scripts/generate_sca_renovate_report_json
bash scripts/generate_codeowners_report_json

cd ../opensource-docs
set monitor_commit (git -C ../digg-scorecard-monitor rev-parse HEAD)

bash scripts/import_openssf_scorecard_report.sh \
  --report "../digg-scorecard-monitor/reporting/openssf-scorecard-report.json" \
  --source-commit "$monitor_commit" \
  --output "data/reports/openssf_scorecard.json"
bash scripts/import_reuse_report.sh \
  --report "../digg-scorecard-monitor/reporting/reuse-report.json" \
  --source-commit "$monitor_commit" \
  --output "data/reports/reuse.json"
bash scripts/import_sca_renovate_report.sh \
  --report "../digg-scorecard-monitor/reporting/sca-renovate-report.json" \
  --source-commit "$monitor_commit" \
  --output "data/reports/sca_renovate.json"
bash scripts/import_codeowners_report.sh \
  --report "../digg-scorecard-monitor/reporting/codeowners-report.json" \
  --source-commit "$monitor_commit" \
  --output "data/reports/codeowners.json"

hugo server
```

Scorecard-rapporten genereras normalt av monitorns GitHub Actions-workflow. Lokalt importeras den befintliga `reporting/openssf-scorecard-report.json` som redan finns i sibling-repot.
Samma JSON används av Hugo och av den manuella importen i GitHub Actions.
Rapporterade kodförråd och rapportproveniens kommer från JSON-rapporterna under `digg-scorecard-monitor/reporting/`.
OpenSSF Scorecard använder monitorns `scope.json`; övriga rapporter använder den publika repo-listan och respektive lista i `reporting/report-exclusions.json`.

Vid manuell körning hämtar workflowen `Update reports and publish docs` de monitor-rapporter och scope som ligger i `diggsweden/digg-scorecard-monitor`, importerar rapportdata, committar ändringar och publicerar sajten.

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
