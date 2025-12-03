# GitHub 仓库设置指南

本文档说明如何将项目推送到GitHub并设置演示视频。

## 1. 创建GitHub仓库

1. 登录GitHub
2. 点击右上角的 "+" 号，选择 "New repository"
3. 仓库名称建议：`robust-visual-slam`
4. 描述：`面向室内弱纹理与快速大视角的鲁棒视觉SLAM方法`
5. 选择 Public（公开）或 Private（私有，论文接收后可改为公开）
6. **不要**初始化README、.gitignore或LICENSE（我们已经创建了）
7. 点击 "Create repository"

## 2. 连接本地仓库到GitHub

```bash
cd /home/lucien/robust-visual-slam

# 添加远程仓库（替换YOUR_USERNAME为您的GitHub用户名）
git remote add origin https://github.com/YOUR_USERNAME/robust-visual-slam.git

# 或者使用SSH（如果您配置了SSH密钥）
# git remote add origin git@github.com:YOUR_USERNAME/robust-visual-slam.git

# 提交初始文件
git add .
git commit -m "Initial commit: Robust Visual SLAM project setup"

# 推送到GitHub
git branch -M main  # 将分支重命名为main（GitHub默认）
git push -u origin main
```

## 3. 更新README.md中的链接

在推送到GitHub之前，请更新 `README.md` 文件中的以下内容：

1. 将所有 `YOUR_USERNAME` 替换为您的实际GitHub用户名
2. 更新作者信息、联系方式等

## 4. 上传演示视频到GitHub Releases

### 方法1：通过GitHub网页界面（推荐）

1. 在GitHub仓库页面，点击右侧的 "Releases"
2. 点击 "Create a new release"
3. 填写版本号（如 `v1.0.0`）
4. 填写Release标题和描述
5. 在 "Attach binaries" 部分，拖拽上传两个视频文件：
   - `videos/demo1.webm`
   - `videos/demo2.webm`
6. 点击 "Publish release"

### 方法2：使用GitHub CLI

```bash
# 安装GitHub CLI（如果未安装）
# Ubuntu/Debian: sudo apt install gh

# 登录GitHub
gh auth login

# 创建Release并上传视频
gh release create v1.0.0 \
  videos/demo1.webm \
  videos/demo2.webm \
  --title "v1.0.0 - Initial Release" \
  --notes "论文接收后的初始版本发布"
```

### 方法3：使用GitHub Actions（自动）

当您创建Release时，GitHub Actions工作流（`.github/workflows/release.yml`）会自动上传视频文件。

## 5. 验证视频显示

上传视频后，视频的下载链接格式为：
```
https://github.com/YOUR_USERNAME/robust-visual-slam/releases/download/v1.0.0/demo1.webm
```

更新README.md中的版本号（从v1.0改为实际版本号），然后提交更改。

## 6. 设置仓库描述和主题

1. 在仓库主页，点击右侧的 "⚙️ Settings"
2. 在 "General" 部分，可以设置：
   - Repository description
   - Topics（如：`visual-slam`, `deep-learning`, `robotics`, `computer-vision`）
   - Website（如果有项目网站）

## 7. 添加README徽章（可选）

可以在README.md顶部添加一些徽章，例如：

```markdown
![GitHub release](https://img.shields.io/github/release/YOUR_USERNAME/robust-visual-slam)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Linux-lightgrey.svg)
```

## 注意事项

- 视频文件较大，建议使用GitHub Releases而不是直接提交到仓库
- 确保README.md中的视频链接指向正确的Release版本
- 论文接收后，记得更新README中的状态和引用信息

