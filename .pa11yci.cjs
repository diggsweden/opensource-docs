// SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
//
// SPDX-License-Identifier: CC0-1.0
//
// pa11y-ci config. URLs are derived from BASE_URL so the same file works
// against a local hugo server and against the deployed site.
//
//   BASE_URL=http://localhost:1313/opensource-docs/                    (local, default)
//   BASE_URL=https://diggsweden.github.io/opensource-docs/             (remote)

const baseUrl = (
  process.env.BASE_URL || 'http://localhost:1313/opensource-docs/'
).replace(/\/?$/, '/');

const paths = [
  '',
  'sv/',
  'en/',
  'sv/jobba-pa-github/',
  'sv/projektmall/',
  'sv/rapporter/',
  'sv/rapporter/openssf-scorecard/',
  'sv/om/',
  'sv/terminologi/',
  'sv/referens/',
  'sv/referens/github-roller/',
  'sv/referens/forvalda-github-installningar/',
  'sv/referens/sprakpolicy/',
  'en/about/',
  'en/reports/',
  'en/reports/openssf-scorecard/',
  'sv/checklistor/',
  'sv/checklistor/publicering-forvaltning/',
  'sv/checklistor/publicering-1.0/',
  'sv/checklistor/standarder/',
  'sv/checklistor/licenser/',
  'sv/checklistor/sakerhet/',
  'sv/checklistor/plattform/',
  'sv/checklistor/anskaffning/',
  'sv/checklistor/anvandning/',
  'sv/checklistor/bidrag-uppstrom/',
  'sv/checklistor/arenden-community/',
  'sv/checklistor/diarie-arkiv/',
];

module.exports = {
  defaults: {
    standard: 'WCAG2AA',
    timeout: 30000,
    wait: 1000,
    concurrency: 1,
    chromeLaunchConfig: {
      args: ['--no-sandbox', '--disable-setuid-sandbox'],
    },
    ignore: [],
  },
  urls: paths.map((p) => baseUrl + p),
};
