# Knowledge Compiler Pro
**知识编译工作台** — 让AI持续编译、维护、进化你的知识资产。
XCrawl采集 → 三步编译法 → Obsidian wiki → 飞书知识库同步 → 饕餮自我进化
## 特性
- 🕷️ **多源采集** — XCrawl抓取网页、本地文件导入、飞书文档
- 🧠 **三步编译法** — 浓缩→质疑→对标，不是简单摘要
- 📚 **Obsidian wiki** — LLM直接读文件，稳定可靠
- 👥 **飞书同步** — 精选内容同步到飞书知识库，团队协作
- 🔄 **饕餮进化** — Skill自我优化，持续变强
## 快速开始
### 1. 初始化


bash
cd knowledge-compiler-pro
bash scripts/init-workspace.sh
或在对话中直接说：**"初始化知识库"**
### 2. 抓取内容


scrape https://example.com/article
### 3. 编译知识


compile raw/articles/xxx.md
### 4. 提问


ask XX领域的核心概念是什么？
### 5. 同步飞书


sync-feishu
### 6. 自我进化


evolve
## 架构


输入层（XCrawl/本地/飞书）
↓
raw/（只读暂存）
↓
三步编译法：浓缩→质疑→对标
↓
Obsidian wiki/（知识资产）
↓ 精选同步
飞书知识库（团队协作层）
## 文件结构


knowledge-compiler-pro/
├── SKILL.md              # 安装说明
├── CLAUDE.md             # 编译规则
├── prompts/              # 核心提示词
│   ├── compile.md        # 三步编译法
│   ├── lint.md           # 健康检查
│   └── query.md          # 查询模式
├── templates/            # 模板
├── xcrawl/               # XCrawl采集层
├── taotie/               # 饕餮进化能力
└── scripts/             # 工具脚本
## 安装

bash
openclaw skills install knowledge-compiler-pro
## License
MIT
