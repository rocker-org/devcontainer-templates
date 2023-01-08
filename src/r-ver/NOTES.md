<!-- markdownlint-disable MD041 -->

## About base images

Please check [the reference page](https://rocker-project.org/images/devcontainer/images.html).

## Install R packages

Several Dev Container Features provided by the Rocker Project
allow R package installation to be defined on `devcontainer.json`.

### Use [`pak`](https://pak.r-lib.org/)

If you want to install R packages via Dev Container Features,
you can use [the `ghcr.io/rocker-org/devcontainer-features/r-packages` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-packages).

The images used in this template support installation of system dependencies
via the [`pak::pak()`](https://pak.r-lib.org/reference/pak.html) function,
so the R packages can be installed with `devcontainer.json` like below.

```json
{
    "image": "ghcr.io/rocker-org/devcontainer/r-ver:4",
    "features": {
        "ghcr.io/rocker-org/devcontainer-features/r-packages:1": {
            "packages": "cli,rlang",
            "installSystemRequirements": true
        }
    }
}
```

### Use [`renv`](https://rstudio.github.io/renv/)

[The `ghcr.io/rocker-org/devcontainer-features/renv-cache` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/renv-cache)
can be used to store caches of R packages in a Docker volume.

For example, when used in the development of an R package, all dependent packages in the project `DESCRIPTION` file
can be installed via the [`renv::install()`](https://rstudio.github.io/renv/reference/install.html) function
by setting `postCreateCommand` as follows.

```json
{
    "image": "ghcr.io/rocker-org/devcontainer/r-ver:4",
    "features": {
        "ghcr.io/rocker-org/devcontainer-features/renv-cache:latest": {}
    },
    "postCreateCommand": "R -q -e 'renv::install()'"
}
```

The package cache is shared by all containers on the same machine, so later builds can be faster.

## Use [Jupyter](https://jupyter.org/)

[The `ghcr.io/rocker-org/devcontainer-features/r-rig` feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-rig)
can be used to install `jupyterlab` and `IRkernel`.
(Remember to set `"version": "none"` for not to install another R)

```json
{
    "image": "ghcr.io/rocker-org/devcontainer/r-ver:4",
    "features": {
        "ghcr.io/rocker-org/devcontainer-features/r-rig:1": {
            "version": "none",
            "installJupyterlab": true
        }
    }
}
```
