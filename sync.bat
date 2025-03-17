@echo off
set "source1=.\plugins"
set "destination1=C:\Program Files (x86)\Steam\steamapps\common\REPO\BepInEx\plugins"

set "source2=.\config"
set "destination2=C:\Program Files (x86)\Steam\steamapps\common\REPO\BepInEx\config"

robocopy "%source1%" "%destination1%" /MIR
robocopy "%source2%" "%destination2%" /MIR

echo.
echo Press any key to continue...
pause >nul
