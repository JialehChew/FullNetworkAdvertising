# Full Network Advertising - Hugo Website

这是一个使用Hugo框架构建的多语言网站，提供中文、英文和马来语支持。

## 项目结构

- `content/`: 内容文件
- `layouts/`: 布局模板
- `static/`: 静态资源（CSS、JS、图片等）
- `i18n/`: 多语言翻译文件

## 本地开发

1. 安装Hugo: https://gohugo.io/installation/
2. 克隆此仓库
3. 在项目根目录运行 `hugo server`
4. 在浏览器中访问 http://localhost:1313

## 构建生产版本

运行 `hugo` 命令生成静态网站文件，输出将在 `public/` 目录中。

## 多语言支持

网站支持以下语言:
- 中文 (默认)
- 英文
- 马来语

语言切换通过URL路径实现，例如:
- 中文: /
- 英文: /en/
- 马来语: /ms/