<!-- markdownlint-disable MD041 -->

## About the base image

Please check <https://github.com/devcontainers/images/tree/main/src/base-ubuntu>.

This template pulls the `linux/amd64` platform image because `r2u` only supports `linux/amd64` platform.

## Install R packages

Since `bspm` is enabled, the binary R packages (from `r2u` repository)and system dependencies can be installed
via the `install.package` R function.

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
