LATEST_FULL_DUMP=$(realpath $1)
export RUNDIR=$(dirname $LATEST_FULL_DUMP)

source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# -----------------------------------------------------------------------------

sed -e 's/dustydisc_0[[:digit:]]\{4\}/'"$(basename $LATEST_FULL_DUMP)"'/' dustydisc.in -i
./phantom dustydisc.in

# -----------------------------------------------------------------------------

source $SRCDIR/_close.bash
