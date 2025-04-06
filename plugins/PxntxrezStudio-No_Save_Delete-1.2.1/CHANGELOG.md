## Version: 1.2.1 **GLOBAL UPDATE**
- **Save Auto-Reload System Overhaul:**  
  - Fully reworked auto-reload logic to prevent HP loss, item charge bugs, and related issues after death.  
  - Players will now respawn with correct health and item charge values — **no more broken saves!**

- **Feature Return – `AutoLoadInMultiplayer`:**  
  - Re-added to the config file.  
  - Now completely **bug-free** and works as intended.  
  - This option is **disabled by default**.

- **Bug Fix – `AllowGameDelete` Behavior:**  
  - Fixed a bug where enabling `AllowGameDelete` in the config would **automatically reset to disabled** after a round ended.   

- **Other Minor Fixes & Improvements:**  
  - General bug fixes and stability improvements.

- **README Updated** 

## Version: 1.1.1
- **Updated README**

## Version: 1.1.0  
- **Multiplayer Compatibility:** Full multiplayer support has been added!  
  - The mod now correctly handles saves in multiplayer games.  
  - Players will properly respawn with the correct HP and item charge values.  
  - Multiplayer is now **fully functional** without major known bugs.  

- **Configuration Changes:**  
  - Removed `AutoLoadOnDeath` and `AutoLoadInMultiplayer` from the config.  
  - Their functionality remains!

- **Bug Fixes & Improvements:**  
  - Fixed several multiplayer-related bugs.
  - Fixed some bugs with Singleplayer mode.
  - Save reloading is now smoother and more reliable.  
  - General optimizations.

## Version: 1.0.2  
- **Bug Fix:** Fixed an issue with **Automatic Save Reloading (Multiplayer)** (`AutoLoadInMultiplayer`).  
  - When all players died and the save was reloaded, players could respawn with only **1 HP**.  
  - Some items could have **low charges**, **no charges at all**, or **incorrect charge values**.  
  - This issue has now been **FIXED**.

## Version: 1.0.1  
- **Added Multiplayer Compatibility (Experimental):**  
  - Automatic save reloading when **all players die** in multiplayer mode.  
  - This feature is still under development and may cause bugs or unexpected behavior
  - Updated README

## Version: 1.0.0  
- Initial release with singleplayer support.  
- Prevents save deletion upon death.  
- Optionally allows save deletion via menu.  
- Automatic save reloading for singleplayer.  
