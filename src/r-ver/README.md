
# R (rocker/r-ver base) (r-ver)

A container-based development environment for the R language. Includes many commonly used R packages.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | R version: | string | 4 |
| baseVariant | Base image. Minimal (r-ver), tidyverse installed (tidyverse), or full image (geospatial). Only r-ver supports the arm64 platform: | string | r-ver |
| nodeVersion | Node.js version: | string | lts |

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


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/rocker-org/devcontainer-templates/blob/main/src/r-ver/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
