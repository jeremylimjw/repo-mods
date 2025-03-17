# JustRetryPlus

### THIS MOD IS HOST ONLY

# Usage
Using this mod is quite simple, the host needs to install this mod
and then after loosing it will restart the map & level
using config values it also will auto-reheal players (bug in JustRetry, you spawn with 1hp) or dont restart at level 1.

# Config
Use either [REPOConfig](https://thunderstore.io/c/repo/p/nickklmao/JustRetry/)
or in thunderstore go to "edit config"
and search for JustRetryPlus.cfg.
there will be 3 values
```ini

[Settings]
## Toggle if the plugin should be enabled, if false the normal game death scene will take over
# Setting type: Boolean
# Default value: true
# Acceptable value range: From False to True
IsEnabled = false

## Toggle if the game should restart at level one & reset the map when failing a level
# Setting type: Boolean
# Default value: false
# Acceptable value range: From False to True
ShouldResetLevel = true

## Toggle if the game should restart with full health when failing a level
# Setting type: Boolean
# Default value: true
# Acceptable value range: From False to True
ShouldRestartWithFullHealth = true

## The amount of health to heal when failing a level
# Setting type: Int32
# Default value: 100
# Acceptable value range: From 0 to 200
HealthToHeal = 100

```



### Based on [JustRetryPlus](https://thunderstore.io/c/repo/p/nickklmao/JustRetry/) (no code used, but identically feature wise)