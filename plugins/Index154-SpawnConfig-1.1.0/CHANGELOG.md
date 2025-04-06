## 1.1.0
- Added new config "Repeat spawn weight multiplier" which reduces the chance of getting the same enemy group multiple times on one level. Default value is 0.5, meaning a group will become half as likely to be selected after having already been selected once
- Added new config "Ignore groups with invalid spawnObjects" - If true, groups containing any invalid enemy objects will be ignored completely and cannot spawn. If false, only the invalid objects will be ignored and the group can still spawn with its remaining enemies. Default value is true (same behavior as before)
- Updated the ThunderStore mod description with some new info

### 1.0.3
- Fixed alterAmountChance fields not being included in the config file

### 1.0.2
- Fixed alterAmountMax not being selectable by the randomization, whoops (off-by-one error)
- Prevented NullPointerExceptions for when there is no enemy group available for a difficulty tier at all
- Added Discord links to README

### 1.0.1
- Fixed description formatting

## 1.0.0
- First release!