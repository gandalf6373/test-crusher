# 将 QA Rescue Squad 安装到 Codex

这个仓库只提供一个 skill：`qa-rescue-squad`。

## 1. 克隆仓库

```bash
git clone <your-repo-url>
cd qa-rescue-squad
```

## 2. 挂载 skill

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force "$HOME\.codex\skills" | Out-Null
Copy-Item -Recurse -Force ".\skills\qa-rescue-squad" "$HOME\.codex\skills\qa-rescue-squad"
```

### macOS / Linux

```bash
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)/skills/qa-rescue-squad" ~/.codex/skills/qa-rescue-squad
```

## 3. 重启 Codex

重启后再说一句：

```text
使用 qa-rescue-squad 帮我处理这次提测
```

如果 Codex 开始按提测单整理的方式响应你，说明 skill 已经生效。

## 4. 更新 skill

```bash
git pull --ff-only origin master
```

如果你是复制安装，更新后再复制一次；如果你是符号链接安装，重启 Codex 即可。
