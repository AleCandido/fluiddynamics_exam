# Fluid dynamics exam

Essentially, simulation powered by
[Phantom SPH](https://phantomsph.bitbucket.io/) and related presentation.

## Content

```sh
_runs/           # <- here the generated files and configs for runs
phantom/         # <- submodule with phantom code, from the official repo 'danieljprice/phantom'
test/            # <- scripts to reproduce tutorial from "Running your first calculation"
                 #    https://phantomsph.readthedocs.io/en/latest/running-first-calculation.html
tde-example/     # <- scripts to reproduce tutorial "Setting up stars and tidal disruption events"
                 #    https://phantomsph.readthedocs.io/en/latest/star.html
```

Scripts are collected by folder, descriptions in the respective README files:

- [test](./test/README.md)
- [TDE example](./tde-example/README.md)

## Phantom code

Phantom is included here as a submodule, and it is pinned to latest available
release to date, i.e.
[v2022.0.1](https://github.com/danieljprice/phantom/releases/tag/v2022.0.1).
