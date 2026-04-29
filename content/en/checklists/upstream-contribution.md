---
title: "Upstream contribution"
description: "Checklist for employees contributing bug fixes to external open source libraries"
weight: 30
---

**Purpose:** Support for employees contributing bug fixes (patches) to an external open source library that we use internally.

## A. Before you write any code

- [ ] **MUST**: Internal policy has been consulted: contributing to the project on working time is permitted.
- [ ] **MUST**: Approval from a manager or assignment lead is in place where required.
- [ ] **MUST**: The exact upstream repository and version used internally are identified.
- [ ] **MUST**: The project's licence is OSI-approved.
- [ ] **MUST**: The licence is compatible with how we use the library. See [Licensing](../licensing/).
- [ ] **MUST**: At the slightest doubt about licensing: legal has been contacted for a go/no-go.
- [ ] **MUST**: It is clear whether the project requires a CLA (Contributor License Agreement) or a DCO (Developer Certificate of Origin).
- [ ] **MUST**: It is clear whether a corporate or agency CLA is already in place.
- [ ] **MUST**: No CLA is signed without consulting legal or an authorised person.
- [ ] **MUST**: The project's `CONTRIBUTING.md`, development guide or wiki has been read.
- [ ] **MUST**: The project's branching strategy and target branch (`main`, `develop`, etc.) are understood.
- [ ] **MUST**: How tests and linters are run according to the project's instructions is known.

## B. Scope the change

- [ ] **MUST**: Existing issues and pull/merge requests for the same bug or feature have been searched.
- [ ] **MUST**: Duplicated work is avoided (existing discussion has been commented on or joined).
- [ ] **MUST**: An issue or comment describing the problem and the proposed fix has been opened.
- [ ] **MUST**: The maintainers' interest in this kind of change has been confirmed.
- [ ] **MUST**: The bug fix exposes no internal or sensitive information:
  - [ ] No internal URLs, IP addresses or system names.
  - [ ] No customer or user data.
  - [ ] No internal logs or stack traces with sensitive content.

## C. Implement the bug fix

- [ ] **MUST**: The project's coding style and conventions are followed.
- [ ] **MUST**: The project's formatter and linter configuration is used.
- [ ] **MUST**: The change is as small and focused as possible (no unrelated refactors).
- [ ] **MUST**: Tests covering the change have been added or updated.
- [ ] **MUST**: The full test suite has been run locally.
- [ ] **MUST**: Documentation or comments are updated if behaviour changes.

## D. Prepare the pull request (PR/MR)

- [ ] **MUST**: The latest changes from the upstream target branch have been synchronised.
- [ ] **MUST**: All merge conflicts have been resolved cleanly.
- [ ] **MUST**: Commit history is tidy (squashed or reordered as needed).
- [ ] **MUST**: Commit messages are clear (imperative mood, referencing the issue where appropriate).
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

- [ ] **SHOULD**: Link to the internal ticket or issue.
- [ ] **SHOULD**: Link to the upstream issue.
- [ ] **SHOULD**: Link to the upstream pull request.
- [ ] **SHOULD**: Reference to legal approval (for a CLA or special case).
- [ ] **SHOULD**: Short summary: *"We contributed X to project Y, included in version Z."*

> This checklist is inspired by external guidelines for open source contribution (e.g. TODO Group, GitHub Docs and various FOSS policy templates) but is adapted for internal use and should not be taken as legal advice.
