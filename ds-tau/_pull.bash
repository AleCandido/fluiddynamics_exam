export CPUS=0
source $(dirname ${BASH_SOURCE[0]})/_setup.bash

REMOTE=phantomblot
REMOTEFOLDER='~/cave/Projects/Misc/fluiddynamics_exam/_runs/ds-tau-1'
DUMPDIR=$(dirname $RUNDIR)/_results@$PROJECT
mkdir -p $DUMPDIR

last=$(ls -1 $DUMPDIR/dustydisc_0* | tail -1 | rev | cut -b -5 | rev)

for i in $(seq -f "%05g" $last 400); do
  scp $REMOTE:$REMOTEFOLDER/dustydisc_$i $DUMPDIR/
done
