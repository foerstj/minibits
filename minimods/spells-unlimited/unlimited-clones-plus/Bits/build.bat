:: name of mod
set mod=unlimited-clones-plus
set mod_cs=UnlimitedClonesPlus

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
robocopy "%bits%\world\contentdb\components" "%tmp%\Bits\world\contentdb\components" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause
:: copy to minimod build dir
robocopy "%ds%\DSLOA" "%bits%\..\build" "%mod_cs%.dsres"

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
