source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# -----------------------------------------------------------------------------
$SRCDIR/../phantom/scripts/writemake.sh dustydisc >Makefile
make
make setup

# copy prepared configuration
# cp $SRCDIR/dustydisc.setup $RUNDIR
./phantomsetup dustydisc
# ./phantomsetup dustydisc <<<EOF
# 0
# 1
# EOF

# test run - to check star relaxation
# cp $SRCDIR/dustydisc.in $RUNDIR
# ./phantom dustydisc.in
# -----------------------------------------------------------------------------

source $SRCDIR/_close.bash
