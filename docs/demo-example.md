# Demo Example / 演示示例

This is a copyable example you can paste into a chat or ticket to try the skill immediately.

这是一个可以直接复制的示例，适合放到聊天窗口、需求单或提测单里测试效果。

## Case 1: Enough Information / 可直接生成

```markdown
## 系统：管理后台
### 模块：设备管理
- [后端] 设备新增接口（device_no 唯一校验 / station_id 存在性校验 / 默认 AVAILABLE）
- [前端] 新增设备表单页（设备编号 / 所属站点 / 状态字段 / 必填校验 / 提交成功提示）
- [测试] 正常新增 / device_no 重复拦截 / station_id 无效拦截 / 状态默认值校验
```

### Expected behavior / 预期行为

- 能识别模块、开发点主体、页面动作和可见结果
- 可以直接生成测试用例 Excel
- 对后端描述推断出的页面行为，在备注中标注 `由后端描述推断`

### Sample output summary / 输出摘要示例

| 用例编号 | 模块 | 用例标题 | 用例类型 | 前置条件 | 预期结果 |
|---|---|---|---|---|---|
| DEV-001 | 设备管理 | 正常新增设备 | 功能测试 | 已登录，进入设备新增页面 | 页面提示新增成功，列表出现新设备 |
| DEV-002 | 设备管理 | 设备编号重复拦截 | 异常测试 | 已存在相同设备编号 | 页面提示设备编号重复 |
| DEV-003 | 设备管理 | 站点未选择拦截 | 边界测试 | 未选择站点 | 页面提示站点必填 |
| DEV-004 | 设备管理 | 默认状态为 AVAILABLE | 页面测试 | 进入新增页面 | 状态字段默认展示为 AVAILABLE |

If the input does not explicitly include a page name or entry route, those fields should stay `待确认`.

如果输入里没有明确给出页面名称或入口路径，这些字段就应该保留为 `待确认`。

## Case 2: Missing Critical Info / 应先拦截补信息

```markdown
## 功能点
- [后端] 新增接口
- [后端] 修改校验逻辑
- [测试] 测一下正常和异常
```

### Expected behavior / 预期行为

- 不应直接生成 Excel
- 应先返回缺失信息清单
- 应明确说明为什么当前信息不足以产出可执行用例

### Expected missing info list / 缺失项示例

1. 缺少明确模块名
2. 缺少开发点主体，例如新增什么、修改什么
3. 缺少页面动作或可见业务结果，无法落到页面测试步骤

### Suggested format / 建议补充格式

```markdown
## 系统：管理后台
### 模块：设备管理
- [后端] 设备新增接口（device_no 唯一校验 / station_id 存在性校验）
- [前端] 设备新增表单（设备编号 / 所属站点 / 提交提示）
- [测试] 正常新增 / 编号重复拦截 / 站点无效拦截
```

## Why this matters / 为什么这有用

The example shows the exact pattern the skill is designed for: take organized dev tasks, expand them into page actions and visible validations, and output a reviewable Excel file.

这个示例不只展示“能生成什么”，也展示“什么时候不该硬生成”。这能让用户更快理解 skill 边界，减少低质量输入导致的返工。
