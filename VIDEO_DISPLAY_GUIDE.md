# GitHub README 视频显示指南

## 问题说明

GitHub 的 README.md **不支持直接嵌入视频播放器**。即使使用 HTML `<video>` 标签，GitHub 也会将其渲染为普通链接，无法在仓库主界面直接播放视频。

## 解决方案

### 方案1：使用外部视频平台（⭐ 推荐）

将视频上传到 Bilibili 或 YouTube，然后在 README 中显示带预览图的链接。

#### 使用 Bilibili

1. 上传视频到 Bilibili
2. 获取视频 BV 号（如：BV1xx411c7mD）
3. 在 README 中使用以下格式：

```markdown
[![演示视频1：弱纹理环境性能展示](https://i0.hdslb.com/bfs/archive/{BV号}_cover.jpg)](https://www.bilibili.com/video/{BV号})
```

或者使用 Bilibili 提供的缩略图API：

```markdown
[![演示视频1：弱纹理环境性能展示](https://img.shields.io/badge/演示视频1-点击观看-00A1D6?style=for-the-badge&logo=bilibili)](https://www.bilibili.com/video/{BV号})
```

#### 使用 YouTube

1. 上传视频到 YouTube
2. 获取视频 ID
3. 在 README 中使用：

```markdown
[![演示视频1：弱纹理环境性能展示](https://img.youtube.com/vi/{VIDEO_ID}/maxresdefault.jpg)](https://www.youtube.com/watch?v={VIDEO_ID})
```

### 方案2：使用 GitHub Pages（需要启用 GitHub Pages）

1. 创建 HTML 页面来显示视频
2. 启用 GitHub Pages
3. 在 README 中链接到该页面

**步骤：**

1. 在仓库中创建 `docs/videos.html` 或 `gh-pages` 分支
2. 创建 HTML 文件：

```html
<!DOCTYPE html>
<html>
<head>
    <title>演示视频</title>
</head>
<body>
    <h1>演示视频1：弱纹理环境性能展示</h1>
    <video width="800" controls>
        <source src="https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo1.webm" type="video/webm">
    </video>
    
    <h1>演示视频2：快速大视角运动性能展示</h1>
    <video width="800" controls>
        <source src="https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo2.webm" type="video/webm">
    </video>
</body>
</html>
```

3. 在 README 中添加链接：

```markdown
[🎥 观看演示视频](https://lucien.github.io/robust-visual-slam/videos.html)
```

### 方案3：使用 GIF 动图

将视频转换为 GIF 动图，但会显著增加文件大小且质量下降。

**工具：**
- ffmpeg: `ffmpeg -i video.webm -vf "fps=10,scale=640:-1" demo.gif`
- 在线工具：ezgif.com

### 方案4：使用视频预览图 + 链接

1. 从视频中提取一帧作为预览图
2. 使用图片 + 链接的方式：

```markdown
[![演示视频1：弱纹理环境性能展示](videos/thumbnails/demo1_thumbnail.jpg)](https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo1.webm)
```

## 推荐实施方案

**最佳方案：Bilibili + GitHub Releases**

1. 将视频上传到 Bilibili（国内访问更快）
2. 在 README 中显示 Bilibili 视频链接（带预览图）
3. 同时提供 GitHub Releases 下载链接（供海外用户或下载使用）

这样既能满足国内用户直接观看，又能提供下载选项。

## 当前实现

目前 README 中使用的是 GitHub Releases 直接链接，用户需要点击下载。建议采用方案1或方案2来改进视频显示效果。

