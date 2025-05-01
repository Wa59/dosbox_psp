This is a port of DOSBox for the PlayStation Portable.

The code was updated to ensure compatibility with latest pspdev toolkit.

This fork also fixes a lot of rendering errors on EGA games (Commander Keen 4,5,6 engines mostly) and also introduces a new button combo (L+R+UP+START or L+R+UP+SELECT as well as L+R+DOWN+START or L+R+DOWN+SELECT) to switch input modes assuring compatibility with ARK4 CFW.

Some improvements for vga rendering where backported from DOSBox 0.74 for a tiny performance gain.

# Make sure to check out the [project's wiki](https://github.com/pierrelouys/dosbox_psp/wiki)!

## Instructions for building

- Install the [psp toolchain](https://github.com/pspdev/psptoolchain)

- Enter the following in Terminal:

```
./build.sh
```

