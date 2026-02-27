:: name of map
set map=minibits-demo-xmas-tree
:: name of map, case-sensitive
set map_cs=Xmas Tree Dev

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set copyright=CC-BY-SA 2025
set author=Johannes Förstner

:: Compile map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%.dsmap" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile main resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /S
robocopy "%bits%\world\global" "%tmp%\Bits\world\global" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%.dsres" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
