English | [简体中文](README_zh.md)

# Ge MHp3 Patch (PSP/PSVita)

This project is a modified and specialized fork of GePatch, designed for Monster Hunter Portable 3rd compatibility.
A lightweight GE patch plugin focused on improving frame pacing, input responsiveness, 和 combat stability—rather than maximizing unstable performance.

---
## 🎯 Goal

This project focuses on **p3-specific gepatch optimizations rather than general support**.

## ✨ Features

* Improved **frame stability** in gameplay and boss fights
* Better **input responsiveness** (reduced roll / attack delay)
* Optimized **GE command handling** to reduce unnecessary workload
* Smarter **framebuffer update strategy**
* Reduced micro-stutter caused by frequent state switching
* Balanced performance (avoids aggressive optimizations that break gameplay timing)

---

## 🎯 Design Philosophy

This patch does **not aim for maximum FPS at all costs**.

Instead, it prioritizes:

* Stable frame pacing
* Consistent input response
* Playable combat experience

In fast-paced games like Monster Hunter, **consistency > raw speed**.

---

## 📦 Installation

### PSVita (Adrenaline 7, 6.61)

Add the following line to:

`ux0:pspemu/seplugins/game.txt`

```
ms0:/seplugins/ge_mh_patch.prx 1
```

---

### PSVita (Adrenaline 8 + ARK-5)

Add the following line to:

`ux0:pspemu/seplugins/PLUGINS.TXT`

```
game, ms0:/seplugins/ge_mh_patch.prx, on
```

---

### PSVita (Adrenaline 8 + EPI)

Add the following line to:

`ux0:pspemu/seplugins/EPIplugins.txt`

```
game, ms0:/seplugins/ge_mh_patch.prx, on
```

---
## 📘 Guides

- 👉 CheatMaster&Gepatch
  CheatMaster & Gepatch exploits a compatibility vulnerability; the specific steps are detailed in the file below.
  please refer to the [CheatMaster + GePatch Usage Guide](./cheatmaster.md)文件。

- Except for racing games, most GePatch-compatible titles can use this method to run CheatMaster together.  
  Verified across multiple game types.
  
- Tested: P3P, Akiba’s Trip 2, Valkyria Chronicles 2, Black Rock Shooter, Naruto, .hack, Steins;Gate, Mega Man, etc.
  
## ⚠️ Notes

* Designed primarily for **Monster Hunter Portable 3rd**
* Behavior may vary in other 3D games
* If you experience input delay, revert to a more conservative configuration
* Performance gains may show **diminishing returns** depending on your setup

---

## 🧠 Technical Overview (Simplified)

This patch improves performance by:

* Reducing redundant GE processing
* Stabilizing framebuffer updates
* Avoiding excessive cache invalidation
* Minimizing state fluctuation

The goal is to **keep the engine predictable and responsive**, especially during combat.

---

## 📌 Disclaimer

This is an experimental optimization plugin.
Results may vary depending on device, firmware, 和 game state.

## Notice

This project is based on the original GePatch project and includes modifications.

For detailed attribution, modifications, 和 copyright information,
please refer to the [NOTICE](./NOTICE) file.

## License

This project is licensed under the GPL-2.0 License, with additional notices from PSPSDK.

See the [LICENSE](./LICENSE) file for full details.

---
