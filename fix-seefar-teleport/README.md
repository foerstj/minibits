# fix-seefar-teleport

![pic](pic.jpg)

Fixes the teleport moods of the SeeFar mod, which had their view distances (fog & frustum) increased together with all the other moods. However, during teleport, we actually _want_ the world to become invisible.

It defines world/global/moods/multiplayer_world/moods0.gas which takes precendence over moods1.gas, and contains only the two original teleport moods of multiplayer_world.
The values are those from the original moods1.gas, except the frustum_width which I increased to equal fog_far_dist to smoothen things even further. 

Note that this is only for use packaged in a dsres during playing. Having this in your Bits will make Siege Editor issue a warning at startup complaining about duplicate mood definition.

src: foerstj / EoS
