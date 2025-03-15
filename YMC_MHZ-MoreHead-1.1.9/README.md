---
# Introduction 简介

A simple and fun decoration mod that provides a **unitypackage** for players to import custom models.
<br>Currently, only a few decorations are available, but more updates are planned.
<br>**`nickklmao-MenuLib`** mod is required as a prerequisite.
<br>

简单好玩的装饰模组，提供 **unitypackage**，供玩家导入自定义模型。
<br>目前仅有少量装饰，未来会持续更新。
<br>需安装 **`nickklmao-MenuLib`** 前置模组。

<br>

![](https://i.imgur.com/7wmnl1P.png)

<br>

<br><br>

# ⚠️ Compatibility Notice 兼容性说明 ⚠️

<div style="border: 2px solid red; padding: 10px; background-color: #fff0f0;">

With **`MenuLib`** updated to **`1.0.3`**, **`MoreHead`** must be updated to **`1.1.8`** or later to function properly.

> <mark>⚠️ If you are still using **`MoreHead 1.1.7`** or earlier, please keep **`MenuLib`** at **`1.0.2`** to avoid compatibility issues.</mark>

For the best experience and stability, we recommend always using the latest version.

<br>

**`MenuLib`** 已更新至 **`1.0.3`**，因此 **`MoreHead`** 需升级至 **`1.1.8`** 或更高版本才能正常运行。

> <mark>⚠️ 如果您仍在使用 **`MoreHead 1.1.7`** 或更早版本，请确保 **`MenuLib`** 仍为 **`1.0.2`**，否则可能会出现兼容性问题。</mark>

为确保最佳体验和稳定性，建议始终使用最新版本。

</div>

<br><br>

# How to Use 如何使用

<details>
  <summary>Click to see 点击展开</summary>

## English Tutorial

1. **Set up Unity** (2022.3\* recommended, the game uses built-in render pipeline, please pay attention to the corresponding model materials), import `MoreHead-Asset-Pack_v*.*.unitypackage`.  
   > **📥 [Download unitypackage](https://github.com/Masaicker/repo-MoreHead/releases/download/V1.0.1/MoreHead-Asset-Pack_v1.01.unitypackage)**

2. **Import your model** and **drag `PlayerAvatar` prefab into the scene**.  
   > <mark>Make sure your model is compatible with Unity and properly rigged if animated.</mark>

3. **Find the following parts** in `PlayerAvatar`, where models will be placed:  

    | Name | Description | Tag |
    | --- | --- | --- |
    | **Head decoration (Do Not Move)** | Head part that raises when speaking | `head` |
    | **Neck decoration (Do Not Move)** | Chin/chest area | `neck` |
    | **Body decoration (Do Not Move)** | Body | `body` |

    > <mark>⚠️ These positions are anchor references. DO NOT modify coordinates, or your model will be misaligned in-game.</mark>

4. **Create an empty object under the target part (referred to as A) and name it**.  
   > <mark>This name will be displayed in-game as your decoration's name.</mark>

5. **Place your model inside A and adjust to a suitable position**.  

6. **Drag A to the `Project` window to create a prefab**.

7. **Run `Tools → Head Decorations Builder`**, drag your A prefab (or more, batch export is supported) into the script panel, and select the corresponding part from step 3, then **click `Add Model to List`**.  
   > <mark>Make sure to select the correct body part (head/neck/body) that matches where you placed your decoration.</mark>

8. **Click `Build All AssetBundle`**, then locate the `[your decoration name].hhh` file in the `AssetBundles` folder.  
   > <mark>Only the `.hhh` file is needed for installation. Other generated files can be ignored.</mark>

9. **Move the `.hhh` file to `BepInEx\plugins`** (the game will load all .hhh files in the plugins folder. If you're not sure where to put it, you can place it in `\MoreHead\Decorations` for better organization).  
   > <mark>⚠️ For multiplayer visibility: You and your friends must have the same `.hhh` file installed to see the correct decorations.</mark>
   > <mark>⚠️ Do not package the `MoreHead.dll` file into your Mod, only the `.hhh` file and this mod are needed to enjoy the decorations.</mark>

10. **Start the game and enjoy!**  
    > <mark>Press ESC in-game and find "MoreHead" in the bottom left to access your new decoration.</mark>

---

## 中文教程

1. **部署 Unity**（推荐 2022.3\* 版本，游戏使用的是内置渲染管线，请注意对应的模型材质），导入 `MoreHead-Asset-Pack_v*.*.unitypackage`。  
   > **📥 [下载 unitypackage](https://github.com/Masaicker/repo-MoreHead/releases/download/V1.0.1/MoreHead-Asset-Pack_v1.01.unitypackage)**

2. **导入模型，并将 `PlayerAvatar` 预制体拖入场景**。  
   > <mark>确保您的模型与Unity兼容，如果有动画需要正确绑定骨骼。</mark>

3. **找到 `PlayerAvatar` 中的以下部位，对应模型将会摆放的位置**：  

    | 名称 | 描述 | 标签 |
    | --- | --- | --- |
    | **Head decoration (Do Not Move)** | 说话时会上抬的头部 | `head` |
    | **Neck decoration (Do Not Move)** | 下巴/胸口 | `neck` |
    | **Body decoration (Do Not Move)** | 身体 | `body` |

    > <mark>⚠️ 这些位置是坐标锚点参考。请勿修改坐标，否则您的模型在游戏中会错位。</mark>

4. **在目标部位下创建一个空对象（称为A），并命名**。  
   > <mark>此名称将在游戏中显示为您的装饰品名称。</mark>

5. **将模型放入A，并调整到合适位置**。  

6. **拖动A到`Project`窗口，创建预制体**。

7. **运行`Tools → Head Decorations Builder`**，拖入A预制体（或更多，支持批量导出），并选择第3步中对应的部位，随后**点击`Add Model to List`**。  
   > <mark>确保选择正确的身体部位（头部/颈部/身体），与您放置装饰的位置相匹配。</mark>

8. **点击`Build All AssetBundle`**，然后在`AssetBundles`文件夹中找到`[你的装饰品名].hhh`文件。  
   > <mark>安装时只需要`.hhh`文件，其他生成的文件可以忽略。</mark>

9. **将`.hhh`文件移动至`BepInEx\plugins`**（启动游戏会加载plugins下所有的.hhh文件。如果不知道往哪放，可以放入`\MoreHead\Decorations`便于管理）。  
   > <mark>⚠️ 多人游戏可见性：您和您的朋友必须安装相同的`.hhh`文件才能互相看到正确的装饰。</mark>
   > <mark>⚠️ 不要打包`MoreHead.dll`文件到您的Mod中，只需`.hhh`文件和该mod就能畅玩饰品。</mark>

10. **启动游戏，享受装饰！**  
    > <mark>在游戏中按ESC，在左下角找到"MoreHead"即可访问您的新装饰。</mark>

</details>

<br><br>

# Future Update Plans 未来更新计划

- **More hats**  
- **Screenshots for decorations to assist selection** *(not guaranteed)*  

- **更多的帽子**  
- **为装饰物提供截图，方便选择** *(不保证)*  

<br><br>

# Author Information 作者信息

**Masaicker** 马赛克了：[BILIBILI](https://space.bilibili.com/1542613)  
**YurisCat Calypso** 尤里的猫·卡里普索：[BILIBILI](https://space.bilibili.com/1704421)  

For questions and suggestions, submit issues:  
如有问题和建议，请提交 Issues：[GitHub Issues](https://github.com/Masaicker/repo-MoreHead/issues)  

Want to support us with coffee and yellow energy crystals?  
想请我们喝咖啡和购买黄色能量水晶？  
[Donate on Ko-Fi](https://ko-fi.com/masaicker)  

<kbd>Whispering, we are making an indie game! 
<br>悄悄说一句，我们正在制作独立游戏！</kbd>
