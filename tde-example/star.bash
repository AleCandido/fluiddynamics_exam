source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# -----------------------------------------------------------------------------
../../phantom/scripts/writemake.sh star >Makefile
make
make setup

# copy prepared configuration
cp $SRCDIR/star.setup $RUNDIR
./phantomsetup star.setup

# test run - to check star relaxation
cp $SRCDIR/star.in $RUNDIR
./phantom star.in
# -----------------------------------------------------------------------------

source $SRCDIR/_close.bash
