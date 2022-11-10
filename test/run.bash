source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# PHANTOM
# is already in this repo as a submodule, see README.md
pushd $SRCDIR/../phantom

# Running the testsuite
# ---------------------
make SYSTEM=gfortran test

source $SRCDIR/_close.bash
