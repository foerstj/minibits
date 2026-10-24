:: name of mod
set mod=generic-double-corner-walls
set mod_cs=Generic Double Corner Walls
:: name of map
set map=minibits-demo-%mod%
set map_cs=%mod_cs%

:: tank properties
set year=2026
set copyright=CC-BY-SA %year%
set author=Johannes Förstner

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

:: Compile mod file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\art" "%tmp%\Bits\art" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause
:: copy to minimod build dir
::robocopy "%ds%\DSLOA" "%bits%\..\build" "%mod_cs%.dsres"

:: Compile demo map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%.dsmap" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
