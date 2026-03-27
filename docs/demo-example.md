# Demo Example / 演示示例

This is a copyable example you can paste into a chat or ticket to try the skill immediately.

这是一个可以直接复制的示例，适合放到聊天窗口、需求单或提测单里测试效果。

## Markdown input / Markdown 输入

```markdown
## 开发功能点
- [后端] 设备新增接口（device_no 唯一校验 / station_id 存在性校验 / 默认 AVAILABLE）
- [前端] 新增设备表单页（字段必填校验 / 提交提示）
- [测试] 正常新增 / device_no 重复拦截 / station_id 无效拦截
```

## What the output looks like / 输出会长什么样

| 用例编号 | 模块 | 用例标题 | 用例类型 | 前置条件 | 预期结果 |
|---|---|---|---|---|---|
| DEV-001 | 设备管理 | 正常新增设备 | 接口测试 | 已登录，设备编号可用 | 返回成功，设备创建完成 |
| DEV-002 | 设备管理 | device_no 重复拦截 | 异常测试 | 已存在相同设备编号 | 返回重复校验错误 |
| DEV-003 | 设备管理 | station_id 无效拦截 | 边界测试 | station_id 不存在 | 返回校验失败，提示参数无效 |

If the input does not explicitly include an API path or request payload, those columns should stay `待确认`.

如果输入里没有明确给出接口路径或请求参数，这两列就应该保留为 `待确认`。

## Why this matters / 为什么这有用

The example shows the exact pattern the skill is designed for: take organized dev tasks, expand them into positive and negative cases, and output a reviewable Excel file.

这个示例对应的就是这个 skill 的核心场景：把整理好的开发点扩展成正向、异常、边界测试，再输出成可审核的 Excel。
