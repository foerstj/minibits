:: name of mod, case-sensitive
set mod_cs=Candles
set map=minibits-demo-candles

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set year=2025
set copyright=CC-BY-SA %year%
set author=Johannes Förstner
set title=%mod_cs%

:: Compile map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Maps\%mod_cs%.dsmap" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\art\meshes" "%tmp%\Bits\art\meshes" /E
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%bits%\world\global" "%tmp%\Bits\world\global" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Resources\%mod_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
