# XCrawl Scrape — 单URL抓取

## 描述

从指定URL抓取网页内容，输出为干净的Markdown或JSON。

## 输入

用户指定一个URL。

## 执行

调用XCrawl API或MCP Server抓取URL内容。

## 输出

1. 保存到 `raw/articles/{日期}-{标题}.md`
2. 生成frontmatter：
yaml
source: {URL}scraped_at: {YYYY-MM-DD HH:mm:ss}title: {标题}
3. 更新 `wiki/indexes/log.md`
## 成功标准
- 正文内容完整提取
- 图片本地化或记录原始URL
- HTML标签清理干净
- 代码块保留原格式
