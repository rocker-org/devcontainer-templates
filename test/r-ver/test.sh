#!/bin/bash
cd "$(dirname "$0")" || exit

# shellcheck source=/dev/null
source test-utils.sh

checkCommon
check "R" R --version
check "radian" radian --version

# Report result
reportResults
