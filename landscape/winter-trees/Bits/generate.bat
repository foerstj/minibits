:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m jinja gaspy\jinja\natural_trees_ice_deciduous.gas.jinja world\contentdb\templates\regular\non_interactive --for-all gaspy\jinja\trees.csv --bits "%bits%"
if %errorlevel% neq 0 pause
popd
