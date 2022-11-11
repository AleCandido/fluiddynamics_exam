# Plotting

Plots done with Splash.

## Density and dust fraction

For the time being, save here the reply to the interactive prompt:

```
Please enter your selection now (y axis or option):m
Enter number of plots per timestep: ([1:26], default=4):
Same y axis for all? (default=no): yes
Enter y axis for all plots ([1:26], default=2):
Same x axis for all? (default=yes):
Enter x axis for all plots ([1:26], default=1):
 -------------- Plot number            1  --------------
(render) (0=none) ([0:26], default=0): 6
(vector plot) (0=none, 22=v) ([0:22], default=0):
is this a cross section (no=projection)? (default=no):
use all active particle types? (default=yes):
 -------------- Plot number            2  --------------
(render) (0=none) ([0:26], default=0): 7
(vector plot) (0=none, 22=v) ([0:22], default=0):
is this a cross section (no=projection)? (default=no):
use all active particle types? (default=yes):
 -------------- Plot number            3  --------------
(render) (0=none) ([0:26], default=0): 8
(vector plot) (0=none, 22=v) ([0:22], default=0):
is this a cross section (no=projection)? (default=no):
use all active particle types? (default=yes):
 -------------- Plot number            4  --------------
(render) (0=none) ([0:26], default=0): 9
(vector plot) (0=none, 22=v) ([0:22], default=0):
is this a cross section (no=projection)? (default=no):
use all active particle types? (default=yes):
 setting nacross,ndown =            2           2
```

And finally launch the interactive plotting session with:

```
Please enter your selection now (y axis or option):M
WARNING: cannot tile plots because limits are set to adaptive
Graphics device/type (? to see list, default /xw):
```

For time stepping: `<number><space>`, e.g. `10<space>`.
Just `<space>` for single time step.

## Claudia's plot

```
 You may choose from a delectable sample of plots
-------------------------------------------------------
   1) x [au]                14) deltavy
   2) y [au]                15) deltavz
   3) z [au]                16) deltavx
   4) particle mass [M_{Su  17) deltavy
   5) h [au]                18) deltavz
   6) density [g/cm^3]      19) deltavx [km/s]
   7) dustfrac1             20) deltavy [km/s]
   8) dustfrac2             21) deltavz [km/s]
   9) dustfrac3             22) v_x [km/s]
  10) tstop1                23) v_y [km/s]
  11) tstop2                24) v_z [km/s]
  12) tstop3                25) div v [1/s]
  13) deltavx               26) dt [s]
-------------------------------------------------------
  M) multiplot [   4 ]      m) set multiplot
-------------------------------------------------------
 d(ata) p(age) o(pts) l(imits) le(g)end h(elp)
 r(ender) v(ector) x(sec/rotate) s(ave) q(uit)
-------------------------------------------------------
Please enter your selection now (y axis or option):d
----------------- data read options -------------------
 0) exit
 1) calculate extra quantities             (  OFF )
 2) physical units on/off/edit             (  ON  )
enter option ([0:2], default=0): 1

 Prefilling list with useful quantities from current data...

 Current list of calculated quantities:
 27) r = sqrt((x-x0)**2 + (y-y0)**2 + (z-z0)**2)        [OK]
 28) dustfrac = dustfrac1+dustfrac2+dustfrac3           [OK]
 29) \rho_{g} = density*(1 - dustfrac)                  [OK]
 30) \rho_{d} = density*dustfrac                        [OK]
 31) \rho_{d,6.00mm} = density*dustfrac1                [OK]
 32) \rho_{d,15\gmm} = density*dustfrac2                [OK]
 33) \rho_{d,800\gmm} = density*dustfrac3               [OK]
 34) dust-to-gas ratio = dustfrac/(1. - dustfrac)       [OK]
 35) |v| = sqrt(vx**2 + vy**2 + vz**2)                  [OK]

a)dd to, e)dit, c)lear current list, or q)uit/finish? (default="q"): q
 setup 9 additional quantities

 Current list of calculated quantities:
 27) r = sqrt((x-x0)**2 + (y-y0)**2 + (z-z0)**2)        [OK]
 28) dustfrac = dustfrac1+dustfrac2+dustfrac3           [OK]
 29) \rho_{g} = density*(1 - dustfrac)                  [OK]
 30) \rho_{d} = density*dustfrac                        [OK]
 31) \rho_{d,6.00mm} = density*dustfrac1                [OK]
 32) \rho_{d,15\gmm} = density*dustfrac2                [OK]
 33) \rho_{d,800\gmm} = density*dustfrac3               [OK]
 34) dust-to-gas ratio = dustfrac/(1. - dustfrac)       [OK]
 35) |v| = sqrt(vx**2 + vy**2 + vz**2)                  [OK]
 Calculating  9 of  9 additional quantities...


 You may choose from a delectable sample of plots
-------------------------------------------------------
   1) x [au]                19) deltavx [km/s]
   2) y [au]                20) deltavy [km/s]
   3) z [au]                21) deltavz [km/s]
   4) particle mass [M_{Su  22) v_x [km/s]
   5) h [au]                23) v_y [km/s]
   6) density [g/cm^3]      24) v_z [km/s]
   7) dustfrac1             25) div v [1/s]
   8) dustfrac2             26) dt [s]
   9) dustfrac3             27) r
  10) tstop1                28) dustfrac
  11) tstop2                29) \rho_{g} [g/cm^3]
  12) tstop3                30) \rho_{d} [g/cm^3]
  13) deltavx               31) \rho_{d,6.00mm} [g/c
  14) deltavy               32) \rho_{d,15\gmm} [g/c
  15) deltavz               33) \rho_{d,800\gmm} [g/
  16) deltavx               34) dust-to-gas ratio
  17) deltavy               35) |v|
  18) deltavz
-------------------------------------------------------
  M) multiplot [   4 ]      m) set multiplot
-------------------------------------------------------
 d(ata) p(age) o(pts) l(imits) le(g)end h(elp)
 r(ender) v(ector) x(sec/rotate) s(ave) q(uit)
-------------------------------------------------------
Please enter your selection now (y axis or option):2
(x axis) (default=1):
(render) (0=none) ([0:35], default=0):
(vector plot) (0=none, 22=v) ([0:22], default=0):
Graphics device/type (? to see list, default /xw):

[...]

 You may choose from a delectable sample of plots
-------------------------------------------------------
   1) x [au]                19) deltavx [km/s]
   2) y [au]                20) deltavy [km/s]
   3) z [au]                21) deltavz [km/s]
   4) particle mass [M_{Su  22) v_x [km/s]
   5) h [au]                23) v_y [km/s]
   6) density [g/cm^3]      24) v_z [km/s]
   7) dustfrac1             25) div v [1/s]
   8) dustfrac2             26) dt [s]
   9) dustfrac3             27) r
  10) tstop1                28) dustfrac
  11) tstop2                29) \rho_{g} [g/cm^3]
  12) tstop3                30) \rho_{d} [g/cm^3]
  13) deltavx               31) \rho_{d,6.00mm} [g/c
  14) deltavy               32) \rho_{d,15\gmm} [g/c
  15) deltavz               33) \rho_{d,800\gmm} [g/
  16) deltavx               34) dust-to-gas ratio
  17) deltavy               35) |v|
  18) deltavz
-------------------------------------------------------
  M) multiplot [   1 ]      m) set multiplot
-------------------------------------------------------
 d(ata) p(age) o(pts) l(imits) le(g)end h(elp)
 r(ender) v(ector) x(sec/rotate) s(ave) q(uit)
-------------------------------------------------------
Please enter your selection now (y axis or option):^C
```
