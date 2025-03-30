# v1.1.8
- Mods with longer names now scroll in the mod list
- Adjusted the way default ranges are handled for float/int settings

# v1.1.7
- Uses MenuLib 2.0.0
- Added categories
- Removed rebinding UI support
  - You can still rebind keys, they'll just be option sliders instead

# v1.1.6
- Supports enum types
  - Enums with the [Flags] attribute won't directly support multiple values, this will come later

# v1.1.5
- Added support for keybinds
- Descriptions scroll
  - There's a config option to change the speed

# v1.1.4
- Fixed naming (again)

# v1.1.3
- Added a tag to hide configs from the in-game menu
  - "HideREPOConfig"
- Auto adds spaces to mod names & setting names
- Shortened description limit
  - If they wrap to another line, they become harder to read

# v1.1.2
- Added a config option to disable the mod menu from loading
  - This is good for people who make modpacks and don't want others to edit the settings as easily
  - **Requires a restart**
- Added descriptions to slider options
- Added support for option settings
  - Settings that use words rather than numbers
- Updated the way settings are fetched

# v1.1.1
- Fixed saved changes, it wasn't working properly :sad:

# v1.1.0
- Added save changes button
- Moved reset button to the bottom
- Added snapping for the bar indicator
- Fixed spacing between settings
- Fixed text scaling
- Fixed bar indicator from getting stuck when not hovering
- Updated README for developers
- Code refactoring
  - This now runs off `MenuLib`

# v1.0.2
- Updated mod list to reflect mod names rather than assembly names
- Updated README for developers
  - Added support for ConfigEntry<float>

# v1.0.1
- Updated README

# v1.0.0 🔥
- Initial release