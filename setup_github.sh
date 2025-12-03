#!/bin/bash

# GitHub仓库设置脚本
# 使用方法: ./setup_github.sh YOUR_GITHUB_USERNAME

set -e

if [ -z "$1" ]; then
    echo "错误: 请提供GitHub用户名"
    echo "使用方法: ./setup_github.sh YOUR_GITHUB_USERNAME"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME="robust-visual-slam"

echo "=========================================="
echo "GitHub仓库设置脚本"
echo "=========================================="
echo "GitHub用户名: $GITHUB_USERNAME"
echo "仓库名称: $REPO_NAME"
echo ""

# 检查是否已设置远程仓库
if git remote get-url origin &>/dev/null; then
    echo "警告: 远程仓库已存在"
    read -p "是否要更新远程仓库URL? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git remote set-url origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
        echo "✓ 已更新远程仓库URL"
    fi
else
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    echo "✓ 已添加远程仓库"
fi

# 更新README.md中的用户名
if [ -f "README.md" ]; then
    sed -i "s/YOUR_USERNAME/$GITHUB_USERNAME/g" README.md
    echo "✓ 已更新README.md中的GitHub用户名"
fi

# 重命名分支为main（如果当前是master）
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" = "master" ]; then
    git branch -M main
    echo "✓ 已将分支重命名为main"
fi

echo ""
echo "=========================================="
echo "下一步操作:"
echo "=========================================="
echo "1. 在GitHub上创建仓库: https://github.com/new"
echo "   仓库名称: $REPO_NAME"
echo "   不要初始化README、.gitignore或LICENSE"
echo ""
echo "2. 推送代码到GitHub:"
echo "   git push -u origin main"
echo ""
echo "3. 创建Release并上传视频:"
echo "   访问: https://github.com/$GITHUB_USERNAME/$REPO_NAME/releases/new"
echo "   上传 videos/demo1.webm 和 videos/demo2.webm"
echo ""
echo "4. 更新README.md中的Release版本号（如果需要）"
echo "=========================================="

