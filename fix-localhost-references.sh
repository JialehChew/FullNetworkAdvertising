#!/bin/bash

# 进入项目目录
cd "hugo project/fullnetworkads"

# 查找所有包含 localhost:1313 的文件
echo "查找包含 localhost:1313 的文件..."
grep -r "localhost:1313" --include="*.html" --include="*.css" --include="*.js" --include="*.toml" --include="*.yaml" --include="*.json" ./public

# 替换 HTML 文件中的图片引用
echo "替换 HTML 文件中的图片引用..."
find ./public -name "*.html" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 CSS 文件中的 URL 引用
echo "替换 CSS 文件中的 URL 引用..."
find ./public -name "*.css" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 JS 文件中的 URL 引用
echo "替换 JS 文件中的 URL 引用..."
find ./public -name "*.js" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 XML 文件中的 URL 引用
echo "替换 XML 文件中的 URL 引用..."
find ./public -name "*.xml" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 JSON 文件中的 URL 引用
echo "替换 JSON 文件中的 URL 引用..."
find ./public -name "*.json" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

echo "替换完成"
