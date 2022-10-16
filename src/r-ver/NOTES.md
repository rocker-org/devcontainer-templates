<!-- markdownlint-disable MD041 -->

## Use Jupyter

[The `ghcr.io/rocker-org/devcontainer-features/r-rig` feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-rig)
can be used to install `jupyterlab` and `IRkernel`.
(Remember to set `"version": "none"` for not to install another R)

```json
{
    "name": "R (rocker/r-ver base)",
    "image": "ghcr.io/rocker-org/devcontainer/r-ver:4",
    "features": {
        "ghcr.io/devcontainers/features/node:1": {
            "version": "lts"
        },
        "ghcr.io/rocker-org/devcontainer-features/r-rig:1": {
            "version": "none",
            "installJupyterlab": true
        }
    },
    "remoteUser": "rstudio"
}
```
