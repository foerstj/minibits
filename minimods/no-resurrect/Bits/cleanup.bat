:: name of mod, case-sensitive
set mod_cs=no-resurrect
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Resources\%mod_cs%-vanilla.dsres"
del "%ds%\DSLOA\%mod_cs%-loa.dsres"
