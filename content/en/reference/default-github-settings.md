---
title: "Default GitHub settings"
description: "Security, permission and dependency settings enabled on Digg's GitHub organisation"
weight: 20
---

This is an overview of security, permission and dependency settings Digg has enabled on the DiggSweden organisation. The list is a selection — for more detail, see [`diggsweden/.github`](https://github.com/diggsweden/.github) and GitHub's documentation for each setting.

| Name | Setting | Effect |
| --- | --- | --- |
| [Base permissions](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization) | No Permission | A newly added member of the organisation has **no** permissions. This means they cannot see other projects, teams, private repositories etc., only what is public or what is in the teams they are added to. [Base permissions](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization#setting-base-permissions) |
| [Forking and creation of private repositories](https://docs.github.com/en/organizations/managing-organization-settings/managing-the-forking-policy-for-your-organization) | Enabled | A user can create and fork private repositories. |
| [Require approval for first-time contributors to run GitHub Actions](https://docs.github.com/en/actions/managing-workflow-runs/approving-workflow-runs-from-public-forks#about-workflow-runs-from-public-forks) | (enabled by default) | A new contributor to a repository requires explicit approval on their first contribution before they can run a workflow. |
| [Dependency Graph](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/about-the-dependency-graph) | Enabled | Dependency analysis for repositories. |
| [Dependabot](https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide) | Enabled | Automatically opens pull requests for vulnerabilities and out-of-date dependencies. Fine-tune the settings for your project. |
| [Secret Scanning](https://docs.github.com/en/code-security/secret-scanning/about-secret-scanning) | Enabled | Scans repositories for keys, passwords, etc. |
| [Code Scanning](https://docs.github.com/en/code-security/code-scanning/enabling-code-scanning/configuring-default-setup-for-code-scanning-at-scale) | Enabled | Scans the code base with SAST analysis (CodeQL). Fine-tune the settings for your repositories. |
| Standard base for the organisation: [DiggSweden's organisation base repo](https://github.com/diggsweden/.github) | Enabled | A template project containing project pre-settings for the GitHub organisation, applied "unless the project says otherwise". See its README for what it covers. You are very likely to want to fine-tune your projects if you have other needs. |

*Dependabot and Code Scanning are enabled at organisation level but are complemented or replaced by vendor-neutral tools such as [Renovate](https://docs.renovatebot.com/) and [Opengrep](https://opengrep.dev/) — see [Working on GitHub: Vulnerability and security](../../working-on-github/#vulnerability-and-security).*

{{< callout type="error" >}}
Several of the settings described do not apply if you use private repositories, since these require a paid GitHub plan.
{{< /callout >}}

## See also

- [Working on GitHub: Vulnerability and security](../../working-on-github/#vulnerability-and-security): Digg's tool preferences for security scanning
- [Roles in the GitHub organisation](../github-roles/): Owner, Member, External Collaborator, Admin
- [`diggsweden/.github`](https://github.com/diggsweden/.github): Digg's organisation base repo
