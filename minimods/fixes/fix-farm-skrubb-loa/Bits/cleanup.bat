:: name of mod
set mod_cs=Fix Farm Skrubb LoA
:: name of map
set map_cs=%mod_cs%

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod_cs%.dsres"
del "%ds%\DSLOA\%map_cs%.dsmap"
