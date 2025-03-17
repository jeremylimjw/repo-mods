@echo off
set "source=.\plugins"
set "destination=C:\Program Files (x86)\Steam\steamapps\common\REPO\BepInEx\plugins"

robocopy "%source%" "%destination%" /MIR

echo.
echo Press any key to continue...
pause >nul