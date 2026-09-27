:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m jinja "world\contentdb\templates.jinja\regular\skill-runes-{{lvl}}.gas.jinja" world\contentdb\templates\regular\interactive --bits "%bits%"
if %errorlevel% neq 0 pause

venv\Scripts\python -m jinja "world\contentdb\templates.jinja\veteran\skill-runes-{{regular_lvl}}.gas.jinja" world\contentdb\templates\veteran\interactive --bits "%bits%"
if %errorlevel% neq 0 pause
venv\Scripts\python -m jinja "world\contentdb\templates.jinja\veteran\skill-runes-container-{{regular_lvl}}.gas.jinja" world\contentdb\templates\veteran\interactive --bits "%bits%"
if %errorlevel% neq 0 pause

venv\Scripts\python -m jinja "world\contentdb\templates.jinja\elite\skill-runes-{{regular_lvl}}.gas.jinja" world\contentdb\templates\elite\interactive --bits "%bits%"
if %errorlevel% neq 0 pause
venv\Scripts\python -m jinja "world\contentdb\templates.jinja\elite\skill-runes-container-{{regular_lvl}}.gas.jinja" world\contentdb\templates\elite\interactive --bits "%bits%"
if %errorlevel% neq 0 pause
popd
