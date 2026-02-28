:: name of mod, case-sensitive
set mod_cs=Transform Into Gremal

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod_cs%.dsres"
del "%ds%\DSLOA\%mod_cs%.dsmap"
