:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
setlocal enableDelayedExpansion
for %%x in (regular veteran elite) do (
  for %%y in (crystal-fly crystal-archers crystal-warriors crystal-beast crystal-golems crystal-mages shards) do (
    venv\Scripts\python -m jinja gaspy\jinja\templates\actors\evil\%%y.gas.jinja world\contentdb\templates\{{wl}}\actors\evil --for-all gaspy\jinja\colors.csv --value wl=%%x --bits "%bits%"
    if !errorlevel! neq 0 pause
  )
  for %%y in (spells-crystal-mages-summon-warriors) do (
    venv\Scripts\python -m jinja gaspy\jinja\templates\interactive\%%y.gas.jinja world\contentdb\templates\{{wl}}\interactive --for-all gaspy\jinja\colors.csv --value wl=%%x --bits "%bits%"
    if !errorlevel! neq 0 pause
  )
)
for %%y in (spells-crystal-beasts-blast spells-crystal-golems-blast spells-shards weapons-crystal-arrow weapons-crystal-bow weapons-crystal-sword) do (
  venv\Scripts\python -m jinja gaspy\jinja\templates\interactive\%%y.gas.jinja world\contentdb\templates\regular\interactive --for-all gaspy\jinja\colors.csv --bits "%bits%"
  if !errorlevel! neq 0 pause
)
for %%y in (frags-crystals-ice frags-crystals-molten-golem frags-crystals-rock-beast frags-crystals-shard frags-crystals-stone) do (
  venv\Scripts\python -m jinja gaspy\jinja\templates\special\%%y.gas.jinja world\contentdb\templates\regular\special --for-all gaspy\jinja\colors.csv --bits "%bits%"
  if !errorlevel! neq 0 pause
)
for %%y in (crystal-beast-blast crystal-golem-blast crystal-shard-zap) do (
  venv\Scripts\python -m jinja gaspy\jinja\effects\%%y.gas.jinja world\global\effects --for-all gaspy\jinja\colors.csv --bits "%bits%"
  if !errorlevel! neq 0 pause
)
endlocal
popd
