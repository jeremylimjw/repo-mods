# SpawnConfig
This host-only mod allows you to change several things about the enemy spawning behavior in the game.
Small warning: Editing the enemy spawning config requires you to have a basic understanding of json file syntax.

Here's a list of what's made possible by the mod:
- You can modify the vanilla enemy groups
- You can modify enemy groups added by other mods
- You can add your own custom enemy groups
- Custom enemies added by other mods can be used in your own groups
- You can configure weights to fine-tune how likely each group is to appear. You can assign different weights to a group for each of the three difficulty tiers that the game selects from, allowing the group to appear in all three tiers if you want
- You can control whether a group should only be able to appear before a certain level or after a certain level
- You can make a group only spawnable if the host player has played more than a certain number of runs
- A group can be set to not allow any other groups to spawn if it happens to be selected. Use this if you crafted something truly devious and grand
- You can add a touch of extra randomness to a group by configuring a chance for it to sometimes be bigger or smaller by a configurable range
- There is a global setting in the mod that lets you disable enemy spawning entirely


## Getting started
1. These important files and folders will be generated in your BepInEx config folder after launching the game:
    - `Index154.SpawnConfig.cfg`  =>  For simple global configs of the mod. Contains descriptions for each available setting. Please take a look at it!
    - Subfolder `SpawnConfig`:
        - `SpawnGroups.json`  =>  Edit this file to modify the game's enemy groups and add new ones (internally called EnemySetups)
        - `SpawnGroups-Explained.json`  =>  This file has more details about the properties of the json config and how they work. Please check it out to learn more!
        - There is also a subfolder called `Defaults` which will always have a version of `SpawnGroups.json` with the "default" values inside of it. Default values in this case refers to any groups the game has loaded before this mod is loaded so those from other mods will be found here as well. This file just exists as a reference. It is not meant to be edited

2. Make your edits in the `SpawnConfig\SpawnGroups.json` file. Just follow the example of the existing entries and you'll be fine. Or replace the file with one made by somebody else! After restarting the game the changes should take effect

3. Have fun!

Note: By default whenever you launch the game any enemy groups missing from your custom SpawnGroups config will be added back into it. This includes not only vanilla enemy setups but also those from other mods! You can disable this behavior in the global config if you want to. For heavily modified configs it's probably best to turn it off.


## Enemy names
You need to know the internal name of an enemy in order to be able to add it to the spawnObjects list of a group in your SpawnGroups config. The names in your config need to be exact matches, otherwise it will not work!

The names of all enemies, including modded ones, should be logged to the console when you start the game.
Here's a list of the vanilla enemy names with short descriptions.

- `Enemy - Head` = Floating Head / Headman
- `Enemy - Robe` = Grim reaper guy with white mask
- `Enemy - Hunter` = Huntsman / Blind guy with gun
- `Enemy - Runner` = Reaper / Scarecrow with blade arms
- `Enemy - Beamer` = Clown thing with laser
- `Enemy - Slow Walker` = Trudge / Slow armored guy with mace
- `Enemy - Animal` = Weird flat thing with many legs
- `Enemy - Bowtie` = Fat white beast that blows wind
- `Enemy - Floater` = Floating alien guy / Mentalist
- `Enemy - Hidden` = Invisible man
- `Enemy - Tumbler` = Frog chef
- `Enemy - Upscream` = Small crawling head
- `Enemy - Valuable Thrower` = Baby / Rugrat
- `Enemy - Ceiling Eye` = Ceiling Eye / Peeper
- `Enemy - Duck` = Duck
- `Enemy - Slow Mouth` = Spewer / Puking fish
- `Enemy - Thin Man` = Shadow child
- `Enemy - Bang` = Exploding skull
- `Enemy - Gnome` = Gnome

If a group contains an invalid enemy name then you will see a corresponding error in the log when you launch the game. A group containing an invalid enemy name will be ignored entirely by default. You can change a setting in the global config file to make it so all invalid enemies will simply be removed from the group if you prefer. In that case the group will still be able to spawn as long as it contains at least one valid enemy.

If you're well versed with the the game then you may notice that the Gnome Director and Bang Director objects aren't included in the json configs at all. That's because I decided to filter these out automatically. The mod adds them to the groups again at runtime. This is just to make the configuration a little easier for the user.


## What else?
- If something doesn't work as expected then take a look at the BepInEx log output. The mod generates a bunch of logs to help with troubleshooting!
- Report issues and request features on GitHub: https://github.com/Index154/REPO_SpawnConfig
- Talk about the mod, find configs made by others or share your own configs and ideas on Discord: https://discord.com/channels/1344557689979670578/1352686279065600093 (in the [REPO Modding Server](https://discord.gg/us2cPKEjAz))

Also check out this video for a quick and simplified overview of how enemy spawning works in REPO: https://www.youtube.com/watch?v=Yx-PW4qYEHY
What isn't mentioned in this video is that everything works through groups of enemies (EnemySetups). Many of the vanilla groups just happen to be made up of only one singular enemy.

Thank you to chiseledcactus who provided a script that allows you to import, edit and export SpawnGroups.json files through a simple UI! If you're an advanced user who has Python installed then this can make editing the config a bit easier. Just paste this code into a py file and run it to open the UI: https://pastebin.com/22Gpz3Yj