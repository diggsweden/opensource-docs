---
title: "Roles in the GitHub organisation"
description: "Definitions of Owner, Member, External Collaborator and Admin in Digg's GitHub organisation"
weight: 10
---

This is an overview of the roles Digg uses on the GitHub organisation, together with their responsibilities and permissions.

## Overview of roles

* **Owner** — super-administrators of the organisation itself.
* **Member** — anyone invited to the organisation.
  Should be added to one or more Teams for access to specific repositories or projects.
* **External Collaborator** — external users who have not been invited to the organisation but are granted individual permissions to specific projects.

{{< callout type="info" >}}
A GitHub Organisation can have more roles than these three. See [organisation roles](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization).
{{< /callout >}}

### The Member role {#member}

`Member` has in turn a number of finer roles that govern what the user can do in a repository.
Examples are `admin`, `maintain` and `read`. See [repository roles](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization).

#### The Admin role and its responsibilities {#admin}

Every repository MUST have one or more users in the Admin role.
***An Admin in a team must have overall oversight and knowledge of their project*** and:

* take responsibility for acting on, or delegating responsibility for, their team's or their own:
  * security alerts
  * removing users from the team who are inactive
  * keeping full control of who has, for example, write permissions in the project.
* take responsibility for the project's overall health by following recommended conventions. See [Working on GitHub: Links](../../working-on-github/#links).
* be the team's or individual's first contact point with Owners for administrative matters as needed. [Contact OSPO](mailto:ospo@digg.se) in the first instance.
* as Admin — always ask if you are unsure.

### The External Collaborator role {#external-collaborator}

External Collaborator is a GitHub role that grants an external user specific permissions on a single repository without making them a member of the organisation.

Each member of a GitHub Organisation costs a licence, so Digg avoids adding users to Teams where it is not needed. External Collaborator is one option when an external person needs write permissions on a specific project — but not always the right choice.

## General notes on roles {#general}

* For public projects, external contributors do not need to belong to a team or have the External Collaborator role. They can contribute via pull requests and forks, just as in any other open source project.

## See also

- [Working on GitHub](../../working-on-github/): account setup, security, issue handling and publication
- [Default GitHub settings](../default-github-settings/): security, permissions and dependency settings
- [Glossary](../../glossary/): concepts and terms like Owner, Member, Team, repository
