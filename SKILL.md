---
name: knowledge-compiler-pro
description: >
  知识编译工作台 — XCrawl采集 + 三步编译法 + Obsidian wiki + 飞书知识库同步 + 饕餮自我进化。
  让AI持续编译、维护、进化你的知识资产。
version: "1.0.0"
user-invocable: true
allowed-tools: Read, Write, Edit, Bash, MiaodaTools
---

# Knowledge Compiler Pro

你的个人知识编译工作台。输入源随意，产出是结构化的知识资产。

## 核心能力

| 命令 | 做什么 |
|------|--------|
| `scrape <url>` | XCrawl抓取网页 → raw/ |
| `import <文件路径>` | 本地文件导入 → raw/ |
| `compile <file>` | 三步编译法处理 → wiki/ |
| `ask <问题>` | 基于wiki回答，不是临时RAG |
| `sync-feishu` | 精选内容同步到飞书知识库 |
| `lint` | wiki健康检查 |
| `evolve` | 饕餮自我优化 |

## 目录结构
raw/                          # 原始资料（只读）
urls/                       # URL列表
articles/                   # 抓取的文章
notes/                      # 随手记
feishu_docs/                # 飞书文档

wiki/                        # 编译产物（LLM维护）
summaries/                  # 逐篇编译摘要
concepts/                   # 概念条目（核心）
methods/                    # 方法论页面
indexes/
index.md                 # 全局索引
log.md                   # 操作日志

.feishu-sync/                # 飞书同步记录

CLAUDE.md                    # 编译规则

## 工作流



输入源（XCrawl/本地/飞书）
↓
raw/（只读暂存）
↓
三步编译法：浓缩→质疑→对标
↓
Obsidian wiki/（知识资产）
↓ 精选同步
飞书知识库（团队协作层）

## 饕餮进化
饕餮是skill的自我进化引擎：
- `evolve` → 对比分析 → 反向工程 → 渐进注入改进
- 模式库持续积累，越用越强
## 安装
### 方式一：ClawHub（推荐）



openclaw skills install knowledge-compiler-pro

### 方式二：手动安装
1. 下载本仓库到 `~/.openclaw/skills/knowledge-compiler-pro/`
2. 重启 OpenClaw
## 初始化
说"初始化知识库" → 自动创建目录结构
