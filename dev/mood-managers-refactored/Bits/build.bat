:: name of mod, case-sensitive
set mod_cs=mood-managers-refactored

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

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\global" "%tmp%\Bits\world\global" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Resources\%mod_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
