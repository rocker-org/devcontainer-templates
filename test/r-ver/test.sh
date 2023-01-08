#!/bin/bash
cd "$(dirname "$0")" || exit

# shellcheck source=/dev/null
source test-utils.sh

check "R" R --version
check "radian" radian --version
check "languageserver" R -q -e 'packageVersion("languageserver")'
check "httpgd" R -q -e 'packageVersion("httpgd")'
check "rmarkdown" R -q -e 'packageVersion("rmarkdown")'
check "devtools" R -q -e 'packageVersion("devtools")'
check "pak" R -q -e 'packageVersion("pak")'
check "renv" R -q -e 'packageVersion("renv")'
check "vscDebugger" R -q -e 'packageVersion("vscDebugger")'

# Report result
reportResults
