# QA Rescue Squad

> **Generate page-operation test cases from organized dev tasks in seconds.**  
> **把整理好的开发功能点，秒级生成可审核的页面操作测试用例 Excel。**

## Why this exists / 为什么要做这个

QA teams spend too much time turning scattered requirements into structured test cases. This skill reduces that manual work by generating a standardized `.xlsx` test case file from a cleaned-up Markdown or Excel task list, with page clicks, form inputs, and visible outcomes as the default format.

测试同学最耗时的工作之一，就是把研发拆解好的功能点整理成测试用例。这个 skill 的目标很直接：把这件事从“手工反复整理”变成“秒级生成可审核的页面操作测试用例 Excel”。

## What you get / 你会得到什么

- A ready-to-review test case Excel file (`.xlsx`)
- Standardized fields for case ID, module, priority, type, page steps, expected result, and automation hints
- A faster handoff from dev task list to QA review to execution

输出的不是一段文本，而是可以直接拿去审核、执行、流转的测试用例 Excel。

## Example / 示例

If you already have a clean task list, you can paste Markdown like this:

```markdown
## 开发功能点
- [后端] 设备新增接口（device_no 唯一校验 / station_id 存在性校验 / 默认 AVAILABLE）
- [前端] 新增设备表单页（字段必填校验 / 提交提示）
- [测试] 正常新增 / device_no 重复拦截 / station_id 无效拦截
```

The generated Excel will include rows such as:

| 用例编号 | 模块 | 用例标题 | 优先级 | 用例类型 | 预期结果 |
|---|---|---|---|---|---|
| DEV-001 | 设备管理 | 正常新增设备 | P0 | 功能测试 | 页面提示新增成功，列表出现新设备 |
| DEV-002 | 设备管理 | device_no 重复拦截 | P0 | 异常测试 | 页面提示重复校验错误 |

See a copy-paste friendly sample here: [docs/demo-example.md](docs/demo-example.md)

## Why star this repo / 为什么值得点 star

- It solves a real QA pain point: turning dev task lists into usable page-operation test cases
- It is easy to try with plain Markdown or Excel
- It stays focused on one workflow, so it is easy to remember and share
- It favors page clicks, form inputs, and visible outcomes over API details

这个项目值得收藏的原因也很简单：

- 解决的是 QA 真实高频痛点
- 输入门槛低，Markdown 或 Excel 都能试
- 只做一件事，而且做得足够清楚
- 默认用页面点击、输入和校验来写用例，不输出 API 路径

## Quick Start / 快速开始

### 1. Install the skill

**Codex**

```bash
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)" ~/.codex/skills/test-crusher
```

**Other tools**

Follow the platform-specific instructions in [docs/install-codex.md](docs/install-codex.md).

### 2. Use it

```text
Use test-crusher to generate test cases from this dev task list.
```

Or in Chinese:

```text
用 test-crusher 帮我把这份开发功能点生成测试用例 Excel
```

### 3. Try the demo

Start with [docs/demo-example.md](docs/demo-example.md), then adapt the input to your own project.

## Who it is for / 适合谁

- QA engineers who need to convert dev requirements into structured test cases quickly
- Test leads who want a consistent Excel format across projects
- AI tool and Skill users who want a reusable test-case generation workflow
- Manual testers who want page-operation-first test cases

## Supported platforms / 支持平台

- Codex
- Claude Code
- OpenClaw
- QClaw
- openCode
- Other Skill-compatible tools

## More assets / 更多可复用材料

- [Demo example](docs/demo-example.md)
- [Share kit](docs/share-kit.md)

## Notes / 说明

- If the input is incomplete, the skill marks uncertain fields as `待确认` instead of inventing data.
- The main goal is speed plus consistency, not replacing QA judgment.
