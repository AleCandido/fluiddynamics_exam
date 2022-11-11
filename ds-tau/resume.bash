LAST_FULL_DUMP=$(realpath $1)
export RUNDIR=$(dirname $LAST_FULL_DUMP)

source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# -----------------------------------------------------------------------------

shopt -s extglob

# extract numbers for last and last full dump
lastfull=$(echo $LAST_FULL_DUMP | rev | cut -b -5 | rev)
last=$(ls -1 $RUNDIR/dustydisc_+([[:digit:]]) | tail -1 | rev | cut -b -5 | rev)

# replace last full dump in .in file
sed -e 's/dustydisc_[[:digit:]]\{5\}/'"$(basename $LAST_FULL_DUMP)"'/' dustydisc.in -i

# save all dumps more recent than last full, and leave the slot
for n in $(seq $(expr $lastfull + 1) $last); do
  # construct old and new name
  padded=$(printf "%05d" $n)
  old=$RUNDIR/dustydisc_$padded
  new=$RUNDIR/dustydisc_old_$padded

  # rename
  mv $old $new
done

# restart
./phantom dustydisc.in

# -----------------------------------------------------------------------------

source $SRCDIR/_close.bash
