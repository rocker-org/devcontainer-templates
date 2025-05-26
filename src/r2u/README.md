
# R (r2u and bspm configured) (r2u)

Install R on Ubuntu and set r2u and bspm.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Ubuntu version: | string | noble |

<!-- markdownlint-disable MD041 -->

## About the base image

Please check <https://github.com/devcontainers/images/tree/main/src/base-ubuntu>.

## Install R packages

Since `bspm` is enabled, the binary R packages (from `r2u` repository) and system dependencies can be installed
via the `install.package` R function.

## Use [RStudio Server](https://posit.co/products/open-source/rstudio-server/)

[The `ghcr.io/rocker-org/devcontainer-features/rstudio-server` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/rstudio-server)
can be used to install and configure RStudio Server.

```jsonc
"features": {
    "ghcr.io/rocker-org/devcontainer-features/r-apt:0": {
        "vscodeRSupport": "full",
        "installDevTools": true,
        "installRMarkdown": true,
        "installRadian": true,
        "installVscDebugger": true,
        "installBspm": true,
    },
    "ghcr.io/rocker-org/devcontainer-features/rstudio-server:latest": {} // This line
}
```

## Use [Jupyter](https://jupyter.org/)

The `InstallJupyterlab` option of
[the `ghcr.io/rocker-org/devcontainer-features/r-apt` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-apt)
can be used to install `jupyterlab` and `IRkernel`.

Only add `"installJupyterlab": true` to `devcontainer.json` like below.

```jsonc
"ghcr.io/rocker-org/devcontainer-features/r-apt:0": {
    "vscodeRSupport": "full",
    "installDevTools": true,
    "installRMarkdown": true,
    "installRadian": true,
    "installVscDebugger": true,
    "installBspm": true,
    "installJupyterlab": true // This line
}
```

## Make R console history persistent

Normally the R console history is lost when we recreate the container,
but we can preserve the history with
[The `ghcr.io/rocker-org/devcontainer-features/r-history` Feature](https://github.com/rocker-org/devcontainer-features/tree/main/src/r-history).

```jsonc
"features": {
    "ghcr.io/rocker-org/devcontainer-features/r-apt:0": {
        "vscodeRSupport": "full",
        "installDevTools": true,
        "installRMarkdown": true,
        "installRadian": true,
        "installVscDebugger": true,
        "installBspm": true,
    },
    "ghcr.io/rocker-org/devcontainer-features/r-history:0": {} // This line
}
```


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/rocker-org/devcontainer-templates/blob/main/src/r2u/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
