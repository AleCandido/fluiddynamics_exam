if [ -z "$1" ]; then
  export CPUS=1
else
  export CPUS=$1
fi
source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# -----------------------------------------------------------------------------
$SRCDIR/../phantom/scripts/writemake.sh disc >Makefile
make
make setup

# copy prepared configuration
cp $SRCDIR/disc.setup $RUNDIR/dustydisc.setup
./phantomsetup dustydisc.setup

# test run - to check star relaxation
# cp $SRCDIR/dustydisc-v4.in $RUNDIR/dustydisc.in
./phantom dustydisc.in
# -----------------------------------------------------------------------------

source $SRCDIR/_close.bash
