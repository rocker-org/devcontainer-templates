#!/bin/bash
cd "$(dirname "$0")" || exit

source test-utils.sh rstudio

checkCommon
check "R" R --version

# Report result
reportResults
