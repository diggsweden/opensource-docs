---
title: "Reports"
description: "Generated reports about Digg's open repositories"
weight: 35
---

This section contains generated reports that give an overview of project health, security and stewardship for Digg's open repositories.

## Pages

- [OpenSSF Scorecard report](openssf-scorecard/): security practice and project health according to OpenSSF Scorecard
- [REUSE report](reuse/): REUSE API registration and selected licensing metadata
- [SCA/Renovate report](sca-renovate/): dependency monitoring setup with Renovate
- [CODEOWNERS report](codeowners/): maintainer ownership coverage from CODEOWNERS files

## Data freshness

Reports are regenerated hourly between roughly 05:00 and 21:00 Stockholm time. The underlying OpenSSF Scorecard scores themselves are recomputed about twice a week, so the same scorecard values may appear in several consecutive hourly snapshots. Each report page shows when it was last generated; the Scorecard report additionally shows when the underlying scores were last refreshed.
