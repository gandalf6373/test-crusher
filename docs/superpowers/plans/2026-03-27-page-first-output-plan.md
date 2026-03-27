# Page-First Output Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Reposition `test-crusher` so generated test cases are page-operation-first, focusing on clicks, form input, and visible outcomes instead of API paths.

**Architecture:** Keep the existing skill scope, but change the output contract and public examples. The skill will default to UI-driven test cases, use explicit API details only as optional context, and preserve `待确认` for anything that is not visible from the source material. README and demo docs will mirror the same rule so the public message matches the generator behavior.

**Tech Stack:** Markdown, Git, GitHub README rendering.

---

### Task 1: Update the skill contract to prefer page operations

**Files:**
- Modify: `SKILL.md`

- [ ] **Step 1: Rewrite the Excel field rules**

Set the default representation to page-operation language:
- `执行路径` becomes page entry point or screen location when the source explicitly provides it
- `输入数据` becomes visible form input or test data when explicitly provided
- `操作步骤` should emphasize click, fill, submit, verify, and navigation actions

- [ ] **Step 2: Tighten the generation rules**

Add a rule that:
- page-driven descriptions are the default
- API details are optional context only
- if the source does not explicitly provide a page, use `待确认` rather than inventing one

- [ ] **Step 3: Verify the skill text reads consistently**

Run: `sed -n '1,220p' SKILL.md`
Expected: the file consistently describes page-first output and no longer implies API-first generation.


### Task 2: Rewrite the README to match the page-first positioning

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Update the hero and value proposition**

Make the headline and summary say the repo saves QA time by generating page-operation test cases for "点点点" workflows.

- [ ] **Step 2: Adjust the example section**

Show a UI-oriented sample that uses screen actions, field input, and validation outcomes instead of API-centric language.

- [ ] **Step 3: Update the "why star" and notes copy**

Explain that the repo is easy to try for manual QA work because it maps naturally to page clicks and form checks.

- [ ] **Step 4: Verify the README flow**

Run: `sed -n '1,260p' README.md`
Expected: the README reads like a product page for UI-driven test case generation.


### Task 3: Update the demo example to demonstrate page interaction output

**Files:**
- Modify: `docs/demo-example.md`

- [ ] **Step 1: Replace API-leaning wording with UI actions**

Use examples like:
- open page
- fill form
- click submit
- verify toast or validation message

- [ ] **Step 2: Keep the sample short and copyable**

Make sure the demo still fits on one screen and can be pasted into a chat or ticket.

- [ ] **Step 3: Verify the example matches the new positioning**

Run: `sed -n '1,220p' docs/demo-example.md`
Expected: the example clearly shows page-operation-first behavior.

