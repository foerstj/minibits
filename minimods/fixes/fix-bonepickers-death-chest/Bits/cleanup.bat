:: name of mod
set mod_cs=Fix Bonepicker's Death Chest
:: name of map
set map_cs=%mod_cs%

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Resources\%mod_cs%.dsres"
del "%ds%\Maps\%map_cs%.dsmap"
