# Is the gap in the DS Tau disc hiding a planet? [arXiv:2005.04244](https://arxiv.org/abs/2005.04244)

Hopefully, the actual exam project.

- one fluid
- setup: `dustydisc`

## Not Found

Here the arbitrary choices made, not found in the paper

### Setup

I.e. the answers to the interactive prompt after `./phantomsetup dustydisc`

```
=================
+++  DISC(S)  +++
=================
How do you want to set the gas disc mass?
 0=total disc mass
 1=mass within annulus
 2=surface density normalisation
 3=surface density at reference radius
 4=minimum Toomre Q
 ([0:4], default=0):
Do you want to warp the disc? (default=no):

==============
+++  DUST  +++
==============
Enter total dust to gas ratio ([0.000:], default=0.1000E-01):
Do you want to limit the dust flux? (default=no):
How do you want to set the (intrinsic) grain density?
 0=equal
 1=manually
 ([0:1], default=0):
How do you want to set the dust density profile?
 0=equal to the gas
 1=custom
 2=equal to the gas, but with unique cutoffs
 ([0:2], default=0):

================
+++  OUTPUT  +++
================
Enter time between dumps as fraction of outer planet period ([0.000:], default=0.1000): 0.3
Enter number of orbits to simulate ([0:], default=100):
```

A full log of the interactive selection is stored in a
[file](./interactive-setup.log).

## References

- Is the gap in the DS Tau disc hiding a planet?
  [arXiv:2005.04244](https://arxiv.org/abs/2005.04244),
  [PDF](https://arxiv.org/pdf/2005.04244.pdf)
- Ring shaped dust accumulation in transition disks
  [https://arxiv.org/abs/1207.6485], [PDF](https://arxiv.org/pdf/1207.6485.pdf)
