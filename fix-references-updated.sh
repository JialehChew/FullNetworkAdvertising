#!/bin/bash

# 设置项目目录的完整路径
PROJECT_DIR="C:/Users/uSER/hugo project/fullnetworkads"
PUBLIC_DIR="$PROJECT_DIR/public"

# 检查public目录是否存在
if [ ! -d "$PUBLIC_DIR" ]; then
    echo "错误: public目录不存在于 $PROJECT_DIR"
    echo "请确认您的Hugo项目已经构建，并且public目录已生成"
    echo "您可以通过运行 'hugo' 命令来生成public目录"
    exit 1
fi

# 查找所有包含 localhost:1313 的文件
echo "查找包含 localhost:1313 的文件..."
grep -r "localhost:1313" --include="*.html" --include="*.css" --include="*.js" --include="*.toml" --include="*.yaml" --include="*.json" "$PUBLIC_DIR"

# 替换 HTML 文件中的图片引用
echo "替换 HTML 文件中的图片引用..."
find "$PUBLIC_DIR" -name "*.html" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 CSS 文件中的 URL 引用
echo "替换 CSS 文件中的 URL 引用..."
find "$PUBLIC_DIR" -name "*.css" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 JS 文件中的 URL 引用
echo "替换 JS 文件中的 URL 引用..."
find "$PUBLIC_DIR" -name "*.js" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 XML 文件中的 URL 引用
echo "替换 XML 文件中的 URL 引用..."
find "$PUBLIC_DIR" -name "*.xml" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

# 替换 JSON 文件中的 URL 引用
echo "替换 JSON 文件中的 URL 引用..."
find "$PUBLIC_DIR" -name "*.json" -type f -exec sed -i 's|http://localhost:1313/|https://www.fullnetworkads.com/|g' {} \;

echo "替换完成"