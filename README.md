# 🚀 QA Rescue Squad

> 你还在手动一条条写测试用例？让 AI 帮你一键生成！

## 🎯 这个 Skill 解决什么问题

### ❌ 痛点现状

- **手动写用例累断手** —— 10+ 个模块、50+ 个开发点，一个一个敲，字数过万
- **逻辑遗漏被甩锅** —— 边界条件、异常场景总是测不到，上线就 Bug
- **格式不统一** —— 每个人写的用例格式千奇百怪，审核痛苦
- **重复劳动** —— 同样的功能点，换个项目又得重写一遍

### ✅ 一键生成测试用例

把**研发任务拆解**（.md 或 .xlsx）丢给它，**秒级产出标准化测试用例 Excel**，直接发给自动化工具执行！

## ⚡ 效率提升

| 场景 | 原来 | 现在 |
|------|------|------|
| 50 个开发点 | 手动写 3-5 小时 | **30 秒** |
| 用例格式统一 | 每个人格式不同 | **全项目统一** |
| 边界遗漏 | 总是漏测异常 | **AI 补全边界用例** |
| 交接成本 | 新人培训半天 | **直接看懂 Excel** |

**实测：3 小时手动工作 → 30 秒 AI 生成，效率提升 360 倍！**

## 📦 会产出什么

**测试用例 Excel**（.xlsx），包含：

| 字段 | 说明 |
|------|------|
| 用例编号 | `模块-001` 格式 |
| 模块 | 功能模块 |
| 用例标题 | 简洁测试目标 |
| 优先级 | P0/P1/P2 |
| 用例类型 | 功能/接口/边界/异常 |
| 前置条件 | 测试前置条件 |
| 执行路径 | 接口或操作路径 |
| 输入数据 | 测试参数 |
| 操作步骤 | 1. 2. 3. 具体步骤 |
| 预期结果 | 期望返回值 |
| 执行方式 | 手动/自动化 |
| 是否可自动化 | 是/否/待定 |
| 备注 | 补充说明 |

生成的 Excel **直接给 QA 审核 → 审核通过 → 交给 OpenClaw/QClaw 执行**，全链路自动化！

## 🛠️ 支持平台

- Claude Code ✅
- Codex ✅
- OpenClaw ✅
- QClaw ✅
- openCode ✅
- 其他支持 Skill 的工具 ✅

## 📥 安装

### Windows PowerShell

```powershell
git clone <your-repo-url>
Set-Location qa-rescue-squad
New-Item -ItemType Directory -Force "$HOME\.codex\skills" | Out-Null
Copy-Item -Recurse -Force ".\*" "$HOME\.codex\skills\qa-rescue-squad"
```

### macOS / Linux

```bash
git clone <your-repo-url>
cd qa-rescue-squad
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)" ~/.codex/skills/qa-rescue-squad
```

安装后重启 AI 工具。

## 🚀 怎么用

### 方式一：贴 Markdown

```text
帮我生成测试用例，这是研发任务拆解：

## 系统：管理后台
### 模块：设备管理
- [后端] 设备新增接口（device_no 唯一校验）
- [前端] 新增设备表单页（字段校验）
- [测试] 正常新增 / 编号重复拦截
```

### 方式二：上传 Excel

直接上传 `.xlsx` 格式的研发任务拆解表，说：

```text
根据这个 Excel 生成测试用例
```

### 输出

秒级返回 Excel 文件，下载 → 审核 → 执行！
