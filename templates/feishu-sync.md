# 飞书同步模板

## 同步策略

- 同步频率：每周一次（周一）或手动触发
- 同步内容：精选概念 + 方法论
- 不同步：raw/ 内容、内部笔记、标注了隐私标记的概念

## 飞书知识库结构




Knowledge Compiler Pro
├── 📚 概念库 # wiki/concepts/ 精选
├── 🔧 方法论 # wiki/methods/ 全部
├── 📖 编译摘要 # wiki/summaries/ 精选
└── 📋 更新日志 # 最近编译记录

## 同步流程
1. 读取 `.feishu-sync/last-sync.txt` 获取上次同步时间
2. 扫描 `wiki/` 自上次同步以来的变更
3. 生成待同步文件列表
4. 创建或更新飞书知识库节点
5. 更新 `.feishu-sync/last-sync.txt`
6. 记录同步日志
## 隐私过滤规则
以下内容不同步到飞书：
- frontmatter 中 `privacy: internal` 的概念
- 涉及个人隐私、内部计划的内容
- 未公开发布的方法论
