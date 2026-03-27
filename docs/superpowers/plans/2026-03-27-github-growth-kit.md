# GitHub Growth Kit Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Reposition the repository as a bilingual QA productivity tool that converts GitHub visitors into stars and first-time users.

**Architecture:** This is a docs-first growth pass. The repository will keep the same skill behavior, but the public-facing surface will be rebuilt around a single value proposition, a fast-start example, and ready-to-share copy. The README will become the main conversion page, while small companion docs will provide sample inputs and social snippets.

**Tech Stack:** Markdown, Git, GitHub README rendering.

---

### Task 1: Rebuild the README as a bilingual landing page

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Draft the new content structure**

```text
Hero -> Problem -> What it does -> Before/After -> Quick Start -> Output -> Audience -> FAQ -> English summary
```

- [ ] **Step 2: Rewrite the README copy**

Include:
- one strong headline focused on saving QA testing time
- a short bilingual description
- a tiny example showing input -> generated Excel output
- a compact install/use section
- a short star-worthy value statement

- [ ] **Step 3: Verify the markdown still reads cleanly**

Run: `sed -n '1,260p' README.md`
Expected: the sections read in a clear order with no broken markdown tables or code fences.


### Task 2: Add a reusable demo example for first-time visitors

**Files:**
- Create: `docs/demo-example.md`

- [ ] **Step 1: Write a synthetic but realistic example**

Include:
- one Markdown input sample
- one Excel column preview
- one short explanation of how the example maps to QA work

- [ ] **Step 2: Keep the example short and copyable**

Make the example easy to paste into chat or a ticket so users can try the skill immediately.

- [ ] **Step 3: Verify the file is easy to scan**

Run: `sed -n '1,220p' docs/demo-example.md`
Expected: the example fits in one screen and is understandable without extra context.


### Task 3: Add share copy for GitHub and social channels

**Files:**
- Create: `docs/share-kit.md`

- [ ] **Step 1: Draft 3 versions of share copy**

Include:
- one Chinese post
- one English post
- one short GitHub issue/PR description

- [ ] **Step 2: Tie each post back to the same core claim**

Use the same proof point everywhere: QA can turn organized dev tasks into test cases much faster.

- [ ] **Step 3: Verify the copy is ready to reuse**

Run: `sed -n '1,220p' docs/share-kit.md`
Expected: each snippet is concise enough to paste directly into a post or message.

