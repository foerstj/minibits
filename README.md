# minibits
A handy collection of Dungeon Siege Bits for easy re-use.

Categories:
- characters: NPCs incl. fairies and mules
- creatures: Enemies as well as ambient animals
- items: Equipments & furnishings
- landscape: Plants & terrain
- map-specific: Resources specific to PG or EoS
- minimods: These don't provide resources but directly change DS behavior
- dev: Resources to aid developing maps/mods

## The rules
- Each minibits resource contains a README.md and a Bits folder.
- The README.md explains what the resource is, where/whom it comes from, and how it's licensed (default is CC-BY-SA).
  - The readme may contain one or several pictures (first at the top, additional ones at the bottom).
- The Bits folder contains the resource files in the structure required for dsres. Using the resource for your project is often as simple as copy-pasting into your main Bits folder.
  - Batch files, Jinja templates etc. are not meant to be copied.
  - There may be a demo map included called minibits-demo-\<sub-name\>.
  - Each leaf template "xyz" shall be empty and derive from a "xyz_base" template, to aid further specialization. This is not required for frags & generators.
- There may be a build folder that provides ready-to-use assets. Used for minimods.

I myself use a script from my GasPy repo to copy minibits in a structured (and automated) fashion into my main projects, see here: https://github.com/foerstj/gaspy/blob/master/build/install_minibits.py
