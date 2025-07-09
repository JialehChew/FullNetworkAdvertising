# 设置项目目录
$PUBLIC_DIR = ".\public"

# 查找所有包含 localhost:1313 的文件
Write-Host "查找包含 localhost:1313 的文件..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.html,*.css,*.js,*.xml,*.json | Select-String -Pattern "localhost:1313" | Format-Table Path

# 替换 HTML 文件中的引用
Write-Host "替换 HTML 文件中的引用..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.html | ForEach-Object {
    (Get-Content $_.FullName) -replace 'http://localhost:1313/', 'https://www.fullnetworkads.com/' | Set-Content $_.FullName
}

# 替换 CSS 文件中的引用
Write-Host "替换 CSS 文件中的引用..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.css | ForEach-Object {
    (Get-Content $_.FullName) -replace 'http://localhost:1313/', 'https://www.fullnetworkads.com/' | Set-Content $_.FullName
}

# 替换 JS 文件中的引用
Write-Host "替换 JS 文件中的引用..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.js | ForEach-Object {
    (Get-Content $_.FullName) -replace 'http://localhost:1313/', 'https://www.fullnetworkads.com/' | Set-Content $_.FullName
}

# 替换 XML 文件中的引用
Write-Host "替换 XML 文件中的引用..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.xml | ForEach-Object {
    (Get-Content $_.FullName) -replace 'http://localhost:1313/', 'https://www.fullnetworkads.com/' | Set-Content $_.FullName
}

# 替换 JSON 文件中的引用
Write-Host "替换 JSON 文件中的引用..."
Get-ChildItem -Path $PUBLIC_DIR -Recurse -Include *.json | ForEach-Object {
    (Get-Content $_.FullName) -replace 'http://localhost:1313/', 'https://www.fullnetworkads.com/' | Set-Content $_.FullName
}

Write-Host "替换完成"