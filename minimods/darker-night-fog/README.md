# darker-night-fog

![pic](pic.jpg)

Makes the fog darker during the night, in line with the daylight brightness.

Originally, the fog brightness varies between 50% and 125% of the value defined in the mood. This mod computes the fog brightness based on the brightness of the daylight instead, which goes down to zero in the middle of the night.
- The fog brightness variation is reversed on the Utraean Peninsula during the final stage of the main quest. This reversion is kept.
- Fog brightness is also decreased during heavy rain. This deviation is doubled (from -15% to -30%).
- Fixed a bug in the LoA mood manager where the heavy rain mechanism overwrote the day-night-cycle mechanism, instead of combining the two.

Works with Vanilla and LoA.

src: foerstj
