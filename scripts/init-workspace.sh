#!/bin/bash
# 初始化知识库工作区
set -e
echo "🧠 初始化 Knowledge Compiler Pro 工作区..."
mkdir -p raw/{urls,articles,notes,feishu_docs}
mkdir -p wiki/{summaries,concepts,methods,indexes}
mkdir -p .feishu-sync
mkdir -p taotie/snapshots
# 创建初始文件
if [ ! -f "wiki/indexes/index.md" ]; then
  cat > wiki/indexes/index.md << 'EOF'
---
wiki_index: v1.0
last_updated: CURRENT_DATE
total_concepts: 0
total_sources: 0
---
# 知识库索引
## 概念清单
（暂无）
## 来源清单
（暂无）
## 最近更新
（初始化完成）
*本文件由 LLM 自动维护。*
EOF
fi
if [ ! -f "wiki/indexes/log.md" ]; then
  cat > wiki/indexes/log.md << 'EOF'
# 操作日志
## 日志格式
| 日期 | 操作 | 涉及文件 | 结果 |
## 历史记录
- CURRENT_DATE: 知识库初始化
*本文件由 LLM 自动维护。*
EOF
fi
if [ ! -f ".feishu-sync/last-sync.txt" ]; then
  echo "从未同步" > .feishu-sync/last-sync.txt
fi
echo "✅ 初始化完成！"
echo ""
echo "目录结构："
find . -type d | grep -v "^\.$" | head -20
echo ""
echo "下一步："
echo "1. 说『scrape <URL>』抓取网页"
echo "2. 说『import <文件路径>』导入本地文件"
echo "3. 说『compile <文件>』执行三步编译"
