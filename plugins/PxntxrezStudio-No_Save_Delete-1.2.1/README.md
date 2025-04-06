---

## ⚠️ IMPORTANT NOTICE: HOST-ONLY MOD ⚠️  
**This mod is ONLY required for the host in multiplayer games.** Other players do not need to install this mod for it to work properly.  

---

# No Save Delete
A mod for R.E.P.O that prevents the game from deleting save files upon player death, ensuring your progress is always safe.  

## Description
No Save Delete gives you control over how saves are managed in R.E.P.O. By default, the game deletes your save file when you die, but with this mod, you can prevent that from happening and even automatically reload your last save after death.

## Features  
- **Prevent Game Save Deletion:** Stops the game from deleting saves after death.  
- **Manual Save Deletion:** Optionally allow the player to delete saves through the menu if desired.  
- **Automatic Save Reloading (Singleplayer):** Automatically reloads the last save file when the player dies in singleplayer mode.  
- **Automatic Save Reloading (Multiplayer):** Automatically reloads the last save file when **all players die** in multiplayer mode.  
- **Configurable Settings:** All features can be toggled on or off via the configuration file.

## Compatibility  
- ✅ **Singleplayer:** Works perfectly with no known issues.  
- ✅ **Multiplayer:** Fully stable!

## Showcase

|Base Game (Default)| With NoSaveDelete Mod |
|--|--|
| ![Base](https://i.imgur.com/hgVUOtb.gif) | ![Mod](https://i.imgur.com/evCx8lL.gif) |

## Installation
1. Install [BepInEx](https://github.com/BepInEx/BepInEx/releases/tag/v5.4.23.2) (v5.x) for R.E.P.O.
2. Place the `NoSaveDelete.dll` file in the `BepInEx/plugins` folder.
3. Launch the game to generate the configuration file at:  
   `BepInEx/config/com.pxntxrez.nosavedelete.cfg`

## Configuration Options  
Located in `BepInEx/config/com.pxntxrez.nosavedelete.cfg`  

- `AllowPlayerDelete (true/false)` – Allows the player to delete saves manually. (Default: `true`) 
- `AllowGameDelete (true/false)` – Allows the game to delete saves. (Default: `false`)
- `AutoLoadInMultiplayer (true/false)` – Automatically reloads the last save when **all players die** in multiplayer mode. (Default: `false`)  
  - ✅ If set to `true`, the arena is **skipped**, and the game automatically reloads the last save.  
  - ❌ If `false`, the arena is **not skipped**. After the arena, the game returns to the lobby.  
    - When the host presses **Start Game**, the **last save** is **automatically loaded**, keeping all progress, items, and player states intact.  
    - The save is **not reset**, deleted, or lost!
  - ⚠️ This option is now **fully restored** and **bug-free**!

## Important Notes  
- ⚠️ **Multiplayer Compatibility:**  
  - Multiplayer support is now fully implemented, with **many bugs and issues fixed** in this update.  
  - While most known issues have been resolved, **minor bugs may still exist**. If you experience any issues, please report them!
- 🚀 **Latest Improvements:**  
  - Save reloading has been fully reworked to eliminate issues with HP loss, and item charges loss.  
  - **General bug fixes** and **many other improvements**, including better save stability and smoother gameplay across and multiplayer.
- 🛠️ **Found a Bug?** If you encounter any issues, please report them on the [R.E.P.O Modding Discord Server](https://discord.com/channels/1344557689979670578/1353257162872197203). Your feedback helps improve the mod!