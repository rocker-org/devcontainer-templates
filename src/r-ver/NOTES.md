<!-- markdownlint-disable MD041 -->

## About base images

Please check [the reference page](https://rocker-project.org/images/devcontainer/images.html).

## Install R packages

If you want to install R packages via Dev Container Features,
you can use [the `ghcr.io/rocker-org/devcontainer-features/r-packages` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-packages).

The images used in this template support installation of system dependencies via the `pak::pak()` function,
so the R packages should be installed with `devcontainer.json` like below.

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

## Use Jupyter

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
