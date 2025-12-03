# 面向室内弱纹理与快速大视角的鲁棒视觉SLAM方法

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 📖 简介

针对室内快速大视角、弱纹理及剧烈抖动等复杂场景下传统视觉SLAM易丢失、精度差的问题，本项目提出一种基于深度学习与传统视觉SLAM融合的方法。该方法在经典的TUM和ICL NUIM数据集上进行了详细验证，实验结果表明所提方法有效解决了传统的视觉SLAM方法在快速大视角、弱纹理和剧烈抖动环境下的跟踪失效和定位精度不足的问题。

## ✨ 主要贡献

1. **深度学习特征提取**：采用轻量级的深度学习模型XFeat进行特征点和对应描述子的提取，以替换全部的ORB特征，提高室内复杂环境下的鲁棒性。

2. **层次化匹配策略**：设计了一种层次化的匹配策略，部分阶段采用轻量级的深度学习模型LightGlue进行匹配，其他匹配阶段引入改进的耦合匹配算法，显著提高了视觉SLAM系统在复杂室内环境中的性能。

3. **双模块协同关键帧选择**：改进了关键帧选择算法，引入双模块协同的关键帧选取机制。第一个模块计算两帧之间的相对旋转角度和平移距离，第二个模块则从频域角度进行两帧之间的相似度计算，减少了视觉SLAM系统在曲线运动过程中关键帧的丢失。

4. **自适应权重优化**：针对剧烈抖动环境下易出现的跟踪丢失问题，将关键点置信度嵌入信息矩阵，实现位姿初始化阶段的自适应权重优化，进一步提高了系统的鲁棒性。

## 🎥 效果演示

### 演示视频1：弱纹理环境性能展示
<video width="640" height="360" controls>
  <source src="https://github.com/YOUR_USERNAME/robust-visual-slam/releases/download/v1.0/demo1.webm" type="video/webm">
  您的浏览器不支持视频标签。
</video>

**下载链接**: [demo1.webm](https://github.com/YOUR_USERNAME/robust-visual-slam/releases/download/v1.0/demo1.webm)

### 演示视频2：快速大视角运动性能展示
<video width="640" height="360" controls>
  <source src="https://github.com/YOUR_USERNAME/robust-visual-slam/releases/download/v1.0/demo2.webm" type="video/webm">
  您的浏览器不支持视频标签。
</video>

**下载链接**: [demo2.webm](https://github.com/YOUR_USERNAME/robust-visual-slam/releases/download/v1.0/demo2.webm)

> **注意**：论文被接收后，演示视频将上传至GitHub Releases。当前视频文件位于项目根目录的`videos/`文件夹中，可用于本地测试。

## 🚀 快速开始

### 环境要求

- Ubuntu 18.04/20.04
- ROS Melodic/Noetic (可选)
- CUDA 11.0+ (用于深度学习模型)
- CMake 3.10+
- OpenCV 3.4+
- Eigen3
- PCL 1.8+

### 编译安装

```bash
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/robust-visual-slam.git
cd robust-visual-slam

# 创建构建目录
mkdir build && cd build

# 编译
cmake ..
make -j4

# 安装
sudo make install
```

### 运行示例

```bash
# 运行TUM数据集示例
./bin/run_tum_dataset /path/to/tum/dataset

# 运行ICL NUIM数据集示例
./bin/run_icl_dataset /path/to/icl/dataset
```

## 📁 项目结构

```
robust-visual-slam/
├── CMakeLists.txt          # CMake构建配置
├── README.md               # 项目说明文档
├── LICENSE                 # 开源许可证
├── src/                    # 源代码目录
│   ├── tracking/          # 跟踪模块
│   ├── mapping/           # 建图模块
│   ├── loop_closure/      # 闭环检测模块
│   └── utils/             # 工具函数
├── include/                # 头文件目录
├── config/                 # 配置文件目录
├── datasets/               # 数据集相关脚本
├── docs/                   # 文档目录
└── videos/                 # 演示视频（本地，不上传至git）
```

## 🔬 实验数据集

本项目在以下数据集上进行了验证：

- **TUM RGB-D Dataset**: 包含多个室内场景序列
- **ICL NUIM Dataset**: 合成RGB-D数据集

## 📊 实验结果

详细的实验结果和对比分析请参考论文。

## 📝 引用

如果本项目对您的研究有帮助，请引用：

```bibtex
@article{robust_visual_slam_2024,
  title={面向室内弱纹理与快速大视角的鲁棒视觉SLAM方法},
  author={Your Name},
  journal={Journal Name},
  year={2024},
  note={待发表}
}
```

## 📄 许可证

本项目采用 [MIT License](LICENSE) 开源许可证。

## 👥 作者

- Your Name - *Initial work*

## 🙏 致谢

- ORB-SLAM2/3 项目团队
- XFeat 和 LightGlue 模型开发者
- TUM 和 ICL NUIM 数据集提供者

## 📧 联系方式

如有问题或建议，请通过以下方式联系：

- 提交 Issue: [GitHub Issues](https://github.com/YOUR_USERNAME/robust-visual-slam/issues)
- 邮箱: your.email@example.com

## ⚠️ 注意事项

- 本项目代码将在论文被接收后正式开源
- 演示视频将在论文接收后上传至GitHub Releases
- 当前版本为预发布版本，可能存在一些问题

---

**状态**: 🚧 开发中 | 📝 论文待接收 | 🔜 即将开源

