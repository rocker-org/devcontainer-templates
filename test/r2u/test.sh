#!/bin/bash
cd "$(dirname "$0")" || exit

# shellcheck source=/dev/null
source test-utils.sh

check "R" R --version
check "arf" arf --version
check "languageserver" R -q -e 'packageVersion("languageserver")'
check "jgd" R -q -e 'packageVersion("jgd")'
check "rmarkdown" R -q -e 'packageVersion("rmarkdown")'
check "devtools" R -q -e 'packageVersion("devtools")'
check "pak" R -q -e 'packageVersion("pak")'

# Report result
reportResults
