:: name of mod
set mod_cs=UnlimitedCharms
:: name of map
set map_cs=%mod_cs% Demo

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod_cs%.dsres"
del "%ds%\DSLOA\%map_cs%.dsmap"
