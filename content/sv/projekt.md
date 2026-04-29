---
title: "Öppna källkodsprojekt"
description: "Ett urval av öppna programvaruprojekt på github.com/diggsweden och github.com/swedenconnect"
weight: 30
---

Det här är en katalogsida över Diggs och Sweden Connects öppna programvaruprojekt, grupperade efter tema. Här finns ett urval av aktiva projekt; den fullständiga listan finns på [`github.com/diggsweden`](https://github.com/diggsweden) och [`github.com/swedenconnect`](https://github.com/swedenconnect).

## Plånboksekosystemet: digital identitet

Tjänster och bibliotek runt EUDI-plånboken (European Digital Identity).

| Projekt | Beskrivning |
|---|---|
| [`wallet-provider`](https://github.com/diggsweden/wallet-provider) | Tjänst för att skapa och hantera WUA:er (Wallet Unit Attestations). |
| [`wallet-account`](https://github.com/diggsweden/wallet-account) | Tjänst som hanterar användarkonton kopplade till plånboken. |
| [`wallet-attribute-attestation`](https://github.com/diggsweden/wallet-attribute-attestation) | Attributattestering för digital identitet. |
| [`wallet-app-ios`](https://github.com/diggsweden/wallet-app-ios) | Plånboksapp för iOS. |
| [`wallet-app-android`](https://github.com/diggsweden/wallet-app-android) | Plånboksapp för Android. |
| [`wallet-verifier-test-web`](https://github.com/diggsweden/wallet-verifier-test-web) | Testgränssnitt för verifieringsflöden. |
| [`wallet-ecosystem`](https://github.com/diggsweden/wallet-ecosystem) | Podman Compose-skript för att köra hela plånboksmiljön lokalt (utveckling och testning). |
| [`wallet-r2ps`](https://github.com/diggsweden/wallet-r2ps) | Bakgrundstjänst som hanterar R2PS-bearbetning med HSM-signering och Kafka-meddelanden. |

## Sweden Connect: federerad identitet och eID-infrastruktur

Bibliotek och referensimplementationer för Sweden Connect-federationen (svensk e-legitimation och eIDAS), publicerade på [`github.com/swedenconnect`](https://github.com/swedenconnect).

| Projekt | Beskrivning |
|---|---|
| [`swedish-eid-idp`](https://github.com/swedenconnect/swedish-eid-idp) | Referensimplementation av identitetsutfärdare (IdP) för Swedish eID Framework. |
| [`opensaml-addons`](https://github.com/swedenconnect/opensaml-addons) | Tillägg till OpenSAML — grunden för flera SAML-baserade identitetstjänster. |
| [`eidas-connector`](https://github.com/swedenconnect/eidas-connector) | Tjänst för att koppla mot eIDAS-infrastrukturen. |
| [`credentials-support`](https://github.com/swedenconnect/credentials-support) | Bibliotek för PKI-credentials med stöd för PKCS#11 och HSM. |
| [`signature-validation`](https://github.com/swedenconnect/signature-validation) | Kärnlogik för validering av digitala signaturer. |

## Data och portal

Källkod för Diggs portallösningar.

| Projekt | Beskrivning |
|---|---|
| [`dataportal-web`](https://github.com/diggsweden/dataportal-web) | Källkod för [dataportal.se](https://www.dataportal.se/). |

## Verktyg och tjänster

Fristående verktyg som löser specifika utvecklar- eller integrationsbehov.

| Projekt | Beskrivning |
|---|---|
| [`rest-api-profil-lint-processor`](https://github.com/diggsweden/rest-api-profil-lint-processor) | Kommandoradsverktyg för att linta OpenAPI-definitioner mot Diggs API-profil. |
| [`mla`](https://github.com/diggsweden/mla) | Verktyg för att skapa nätverksanalysdiagram. |

## Stöd för öppen programvara

Mall, verktyg och dokumentation som hjälper Digg-projekt att följa praxis kring öppen programvara.

| Projekt | Beskrivning |
|---|---|
| [`open-source-project-template`](https://github.com/diggsweden/open-source-project-template) | Diggs mallprojekt för nya öppna programvaruprojekt. |
| [`reusable-ci`](https://github.com/diggsweden/reusable-ci) | Återanvändbara arbetsflöden för automatiserad bygge, test och utgivning (CI/CD) i GitHub Actions. |
| [`opensource-docs`](https://github.com/diggsweden/opensource-docs) | Den här handbokens källkod. |

## Arkiverade projekt

Projekt som inte längre har aktiv förvaltning men finns kvar som referensmaterial att bygga vidare på.

### Verktygslåda för digital inkludering

| Projekt | Beskrivning |
|---|---|
| [`UserFeedbackApp`](https://github.com/diggsweden/UserFeedbackApp) | React.js-applikation för att samla in anonym feedback. |
| [`SupportModalApp`](https://github.com/diggsweden/SupportModalApp) | Vue.js-applikation med hjälpfunktioner och hjälpknapp. |
| [`UserFeedbackApi`](https://github.com/diggsweden/UserFeedbackApi) | Server-API för att samla in anonym feedback. |
| [`InclusionToolbox`](https://github.com/diggsweden/InclusionToolbox) | JavaScript drop-in toolbox-plugin. |

## Förvaltning av projektlistan

Projekt utan aktiv underhållsansvarig arkiveras. Aktivitet bedöms enligt mönstret i [Arbete på GitHub: Arkivering av projekt](../arbeta-pa-github/#arkivering-av-projekt).

## Se även

- [Mallprojekt för öppen programvara](../projektmall/): startstruktur för nya projekt
- [Arbete på GitHub](../arbeta-pa-github/): kontoupplägg, säkerhet, ärendehantering och publicering
- [Andra svenska offentliga aktörer](../referens/andra-offentliga-aktorer/): myndigheter, kommuner och regioner på kodsamverkansplattformar
