#!/bin/bash

# QA Rescue Squad Push Script
# 使用方法: ./push.sh

cd "$(dirname "$0")"

# 配置使用 ed25519 SSH key
git config core.sshCommand "ssh -i ~/.ssh/id_ed25519_spec_crusher -o IdentitiesOnly=yes"

echo "🚀 推送 test-crusher 到 GitHub..."
echo ""

git add README.md SKILL.md agents/openai.yaml
git commit -m "feat: 升级为测试用例生成器，一键产出 Excel

- 输入：开发功能点列表（.md/.xlsx）
- 输出：12字段测试用例 Excel
- 效率：3小时手动 → 30秒 AI 生成
- 支持平台：Claude Code / Codex / OpenClaw / QClaw / openCode"

git push -u origin master

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "🌐 仓库地址: https://github.com/gandalf6373/test-crusher.git"
else
    echo ""
    echo "❌ 推送失败，请检查 SSH key 配置"
fi
