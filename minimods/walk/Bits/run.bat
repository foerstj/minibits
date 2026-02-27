:: name of demo map
set map=minibits-demo-walk

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%

:: build
call "%bits%"\build.bat %*

::pause

:: Run it!
"%ds%\DSLOA.exe" nointro=true map=%map%

:: Cleanup resources so as not to confuse Siege Editor
call "%bits%"\cleanup.bat %*
