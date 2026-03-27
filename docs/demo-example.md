# Demo Example / 演示示例

This is a copyable example you can paste into a chat or ticket to try the skill immediately.

这是一个可以直接复制的示例，适合放到聊天窗口、需求单或提测单里测试效果。

## Markdown input / Markdown 输入

```markdown
## 开发功能点
- [前端] 设备新增页面（设备编号必填校验 / 站点选择必填 / 提交成功提示）
- [前端] 新增设备表单页（字段必填校验 / 提交提示）
- [测试] 正常新增 / 设备编号重复拦截 / 站点未选择拦截
```

## What the output looks like / 输出会长什么样

| 用例编号 | 模块 | 用例标题 | 用例类型 | 前置条件 | 预期结果 |
|---|---|---|---|---|---|
| DEV-001 | 设备管理 | 正常新增设备 | 功能测试 | 已登录，进入设备新增页面 | 页面提示新增成功，列表出现新设备 |
| DEV-002 | 设备管理 | 设备编号重复拦截 | 异常测试 | 已存在相同设备编号 | 页面提示设备编号重复 |
| DEV-003 | 设备管理 | 站点未选择拦截 | 边界测试 | 未选择站点 | 页面提示站点必填 |

If the input does not explicitly include a page name or entry route, those fields should stay `待确认`.

如果输入里没有明确给出页面名称或入口路径，这些字段就应该保留为 `待确认`。

## Why this matters / 为什么这有用

The example shows the exact pattern the skill is designed for: take organized dev tasks, expand them into page actions and visible validations, and output a reviewable Excel file.

这个示例对应的就是这个 skill 的核心场景：把整理好的开发点扩展成页面操作、异常、边界测试，再输出成可审核的 Excel。
