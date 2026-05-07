---
title: "Upstream contribution"
description: "Checklist for employees contributing bug fixes to external open source libraries"
weight: 30
---

**Purpose:** Support for employees contributing bug fixes (patches) to an external open source library that we use internally.

We encourage active contributions — bug fixes, patches, bug reports and improvement suggestions — to the projects we use.

## A. Before you write any code

- [ ] **MUST**: Approval from the immediate manager or assignment lead is in place for larger code contributions (e.g. a whole codebase). For smaller contributions such as bug fixes and bug reports, no approval is needed.
- [ ] **MUST**: The project's licences are compatible with how we use the library (for example an OSI-approved licence for code, Creative Commons for content). See [Licensing](../licensing/).
- [ ] **MUST**: No CLA (Contributor License Agreement) is signed without consulting legal or an authorised person. As a rule, we do not contribute to projects that require a CLA.
- [ ] **MUST**: The project's contributing guide (`CONTRIBUTING.md`), developer guide or wiki has been read.
- [ ] **MUST**: At the slightest doubt about licensing, legal and the OSPO lead are contacted for clearance.

## B. Scope the change

- [ ] **MUST**: Existing issues and pull/merge requests for the same bug or feature have been searched.
- [ ] **MUST**: Existing issue discussions have been commented on or joined — or, if none exist, a new issue describing the problem and the proposed fix has been opened.
- [ ] **MUST**: The project's maintainers have confirmed interest in this kind of change.
- [ ] **MUST**: The pull request or bug fix contains no sensitive information — e.g. internal environment configuration, secrets (API keys, tokens), customer or user data, internal URLs, IP addresses or system names, or logs and stack traces with sensitive content.

## C. Implement the bug fix

- [ ] **MUST**: The project's coding style and conventions are followed.
- [ ] **MUST**: The project's formatter and linter configuration is used.
- [ ] **MUST**: Tests covering the change have been added or updated.
- [ ] **MUST**: Documentation or comments are updated if behaviour changes.

## D. Prepare the pull request (PR/MR)

- [ ] **MUST**: The latest changes from the upstream target branch have been synchronised.
- [ ] **MUST**: All merge conflicts have been resolved cleanly.
- [ ] **MUST**: Commit history is tidy (squashed or reordered as needed).
- [ ] **MUST**: Commit messages are clear (imperative mood, referencing the issue where appropriate).
- [ ] **MUST**: Your commits are signed with your key and include a DCO sign-off (`git commit -S -s`). The DCO (Developer Certificate of Origin) is a line in the commit message certifying that you have the right to contribute the code.
- [ ] **MUST**: The pull request title is clear and descriptive.
- [ ] **MUST**: The description includes:
  - [ ] Problem statement (what is wrong or missing?).
  - [ ] Summary of the fix (how is it fixed?).
  - [ ] How to reproduce, before/after.
  - [ ] Any limitations or side effects.
- [ ] **MUST**: Any breaking changes are clearly flagged.
- [ ] **MUST**: It has been double-checked that the following are not present:
  - [ ] Internal URLs or internal system names.
  - [ ] API keys, tokens or other secrets.
  - [ ] Customer data or other sensitive information.
  - [ ] Internal references (ticket numbers, logs) that do not belong in public.

## E. During review

- [ ] **MUST**: Feedback from maintainers is answered factually and reasonably promptly.
- [ ] **MUST**: The implementation is adjusted in line with feedback (or it is justified why not).
- [ ] **MUST**: Internal stakeholders are kept up to date (the PR is linked from the internal ticket or issue).
- [ ] **MUST**: Larger changes the maintainers make to the bug fix are noted (for internal follow-up).

## F. After merge or rejection

- [ ] **MUST**: The upstream version that contains the bug fix is noted.
- [ ] **MUST**: There is a plan for when the dependency is upgraded internally.
- [ ] **MUST**: If the bug fix is needed before an upstream release:
  - [ ] A temporary fork or internal patch is documented.
  - [ ] There is a plan to remove the fork or internal patch once an official release is available.
- [ ] **MUST**: On rejection:
  - [ ] The reasoning is documented internally.
  - [ ] Any internal workaround or fork is decided where required.

## G. Internal log

- [ ] **SHOULD**: Links to the upstream issue and pull request.
- [ ] **SHOULD**: Reference to approval for special cases (CLA, large codebases, other).
- [ ] **SHOULD**: Short summary: *"We contributed X to project Y, included in version Z."*

