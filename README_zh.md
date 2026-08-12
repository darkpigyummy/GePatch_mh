[English](README.md) | 简体中文

# 中文说明
本项目是 GePatch 的修改与专用分支版本，面向《怪物猎人携带版3rd》（Monster Hunter Portable 3rd）进行适配优化。

这是一个轻量级 GE（Graphics Engine）补丁插件，重点优化帧节奏、输入响应与战斗稳定性，而不是追求不稳定的极限性能提升。

---
## 🎯目标

本项目侧重于**mhp3的专用gepatch优化而非通用支持**。

## ✨ 特性

* 提升战斗场景帧稳定性（尤其是 Boss 战）
* 降低翻滚 / 出刀的输入延迟
* 优化 GE 指令处理流程
* 改进 framebuffer 更新策略
* 减少卡顿与状态抖动
* 避免“看起来流畅但操作变差”的负优化

---

## 🎯 设计理念

本插件不追求“跑分最高”，而是：

* 帧节奏稳定
* 操作响应稳定
* 战斗体验优先

在怪猎这种游戏里：

👉 **稳定性 > 极限性能**

---

## 📦 安装方法

### PSVita (Adrenaline 7, 6.61)

编辑：

`ux0:pspemu/seplugins/game.txt`

加入：

```
ms0:/seplugins/ge_mh_patch.prx 1
```

---

### PSVita (Adrenaline 8 + ARK-5)

编辑：

`ux0:pspemu/seplugins/PLUGINS.TXT`

加入：

```
game, ms0:/seplugins/ge_mh_patch.prx, on
```

---

### PSVita (Adrenaline 8 + EPI)

编辑：

`ux0:pspemu/seplugins/EPIplugins.txt`

加入：

```
game, ms0:/seplugins/ge_mh_patch.prx, on
```

---
## 📘 指南

- 👉 CheatMaster&Gepatch
  CheatMaster&Gepatch利用漏洞兼容，具体步骤在下面的文件中。
  请参阅 [CheatMaster + GePatch Usage Guide](./cheatmaster.md)file.
  
- 除赛车类游戏外，大部分支持 GePatch 的游戏均可通过该方法同时兼容 CheatMaster。
  已在多种类型游戏中验证。
  
- 已测试：P3P、秋叶原之旅2、战场女武神2、黑岩射手、火影、.hack、命运石之门、洛克人等  
## ⚠️ 注意

* 主要针对《怪物猎人P3》优化
* 其他 3D 游戏可能表现不同
* 如果出现操作延迟，说明优化过度，需要回退
* 优化存在边际效应，不会无限提升

---

## 🧠 原理（简化版）

主要思路：

* 减少 GE 冗余计算
* 控制 framebuffer 更新频率
* 降低 cache 频繁刷新带来的抖动
* 避免状态频繁切换

核心目标一句话：

👉 **让游戏“稳”和“跟手”**

---

## 📌 免责声明

本插件属于实验性优化，不同设备和环境效果可能不同。

## 说明

本项目基于原始 GePatch 项目进行修改。


有关详细的修改内容、版权信息及致谢，请参阅 [NOTICE](./NOTICE) 文件。

## 许可证

本项目基于 GPL-2.0 许可证发布，并包含来自 PSPSDK 的附加许可声明。

完整内容请参见 [LICENSE](./LICENSE) 文件。
