# 将 QA Rescue Squad 安装到 Codex

这个仓库只提供一个 skill：`test-crusher`。

## 1. 克隆仓库

```bash
git clone <your-repo-url>
cd test-crusher
```

## 2. 挂载 skill

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force "$HOME\.codex\skills" | Out-Null
Copy-Item -Recurse -Force ".\*" "$HOME\.codex\skills\test-crusher"
```

### macOS / Linux

```bash
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)" ~/.codex/skills/test-crusher
```

## 3. 重启 Codex

重启后再说一句：

```text
使用 test-crusher 帮我根据开发功能点生成测试用例
```

如果 Codex 开始按“先校验输入完整度，再生成测试用例”的方式响应你，说明 skill 已经生效。

## 4. 更新 skill

```bash
git pull --ff-only origin master
```

如果你是复制安装，更新后再复制一次；如果你是符号链接安装，重启 Codex 即可。
