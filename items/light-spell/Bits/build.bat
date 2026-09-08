:: names
set mod=light-spell
set map=minibits-demo-%mod%
set mod_cs=Light Spell

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set year=2026
set copyright=CC-BY-SA %year%
set title=%mod_cs%
set author=Johannes Förstner

:: Compile main resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\art" "%tmp%\Bits\art" /E /xf *.psd
robocopy "%bits%\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%bits%\world\global" "%tmp%\Bits\world\global" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile test map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsmap" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
