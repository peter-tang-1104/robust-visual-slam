# README 视频显示示例

这些是可以在 README.md 中使用的视频显示代码示例。

## 方案1：Bilibili 视频（⭐ 最推荐，国内用户友好）

### 使用方法

1. 将视频上传到 Bilibili
2. 获取视频 BV 号（如：BV1xx411c7mD）
3. 将以下代码替换 README 中的视频部分

```markdown
## 🎥 效果演示

### 演示视频1：弱纹理环境性能展示

[![演示视频1：弱纹理环境性能展示](https://img.shields.io/badge/B站-演示视频1-00A1D6?style=for-the-badge&logo=bilibili&logoColor=white)](https://www.bilibili.com/video/BV号)

或者使用视频封面图：

[![演示视频1：弱纹理环境性能展示](https://i0.hdslb.com/bfs/archive/{BV号}_cover.jpg)](https://www.bilibili.com/video/{BV号})

### 演示视频2：快速大视角运动性能展示

[![演示视频2：快速大视角运动性能展示](https://img.shields.io/badge/B站-演示视频2-00A1D6?style=for-the-badge&logo=bilibili&logoColor=white)](https://www.bilibili.com/video/BV号)
```

## 方案2：YouTube 视频

```markdown
## 🎥 效果演示

### 演示视频1：弱纹理环境性能展示

[![演示视频1：弱纹理环境性能展示](https://img.youtube.com/vi/{VIDEO_ID}/maxresdefault.jpg)](https://www.youtube.com/watch?v={VIDEO_ID})

### 演示视频2：快速大视角运动性能展示

[![演示视频2：快速大视角运动性能展示](https://img.youtube.com/vi/{VIDEO_ID}/maxresdefault.jpg)](https://www.youtube.com/watch?v={VIDEO_ID})
```

## 方案3：GitHub Pages 链接

```markdown
## 🎥 效果演示

点击下方链接在线观看演示视频：

### 🎬 [在线观看所有演示视频](https://lucien.github.io/robust-visual-slam/videos.html)

或下载观看：

- **演示视频1**：弱纹理环境性能展示 - [📥 下载](https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo1.webm)
- **演示视频2**：快速大视角运动性能展示 - [📥 下载](https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo2.webm)
```

## 方案4：带预览图的下载链接

如果视频文件不太大，可以：
1. 从视频中提取一帧作为预览图
2. 将预览图放在仓库中
3. 使用图片+链接的方式

```markdown
## 🎥 效果演示

### 演示视频1：弱纹理环境性能展示

[![演示视频1预览](videos/thumbnails/demo1_thumb.jpg)](https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo1.webm)

### 演示视频2：快速大视角运动性能展示

[![演示视频2预览](videos/thumbnails/demo2_thumb.jpg)](https://github.com/lucien/robust-visual-slam/releases/download/v1.0/demo2.webm)
```

## 推荐方案

**最佳实践：Bilibili + GitHub Releases**

- 将视频上传到 Bilibili（国内用户友好）
- 在 README 中显示 Bilibili 链接（带预览）
- 同时提供 GitHub Releases 下载链接（供下载或海外用户）

这样既能在 README 中显示视频预览，又提供了多种观看方式。

