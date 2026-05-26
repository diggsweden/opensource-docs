---
title: "SCA/Renovate-rapport"
description: "Genererad rapport över Renovate-konfiguration för Diggs öppna kodförråd"
weight: 30
---

Rapporten visar om Diggs öppna kodförråd har Renovate konfigurerat för beroendeövervakning.
Den visar också om kodförrådet använder Diggs gemensamma Renovate-baspreset och länkar till kodförrådets Dependency Dashboard-ärende när det finns.

{{< sca-renovate-report >}}

## Källa

Rapportdata hämtas från `diggsweden/digg-scorecard-monitor`.
Baspreset-kontrollen accepterar Diggs gemensamma Renovate-baskonfiguration både i lokal preset-form och GitHub-preset-form.
