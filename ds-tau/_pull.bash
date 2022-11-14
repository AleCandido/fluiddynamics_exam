export CPUS=0
source $(dirname ${BASH_SOURCE[0]})/_setup.bash

case $1 in
phantomblot)
  # --- phantomblot ---
  REMOTE=phantomblot
  REMOTEFOLDER='~/cave/Projects/Misc/fluiddynamics_exam/_runs/ds-tau-1'
  DUMPDIR=$(dirname $RUNDIR)/_results@$PROJECT@$REMOTE
  ;;
  # --- galileo ---
galileo-32)
  REMOTE=galileo
  REMOTEFOLDER='~/fluiddynamics_exam/_runs/ds-tau-32'
  DUMPDIR=$(dirname $RUNDIR)/_results@$PROJECT@$REMOTE
  ;;
  # ---
galileo-31)
  REMOTE=galileo
  REMOTEFOLDER='~/fluiddynamics_exam/_runs/ds-tau-31'
  DUMPDIR=$(dirname $RUNDIR)/_results@$PROJECT-31@$REMOTE
  ;;
  # ---------------
galileo-30)
  REMOTE=galileo
  REMOTEFOLDER='~/fluiddynamics_exam/_runs/ds-tau-30'
  DUMPDIR=$(dirname $RUNDIR)/_results@$PROJECT-30@$REMOTE
  ;;
  # ---------------
esac

mkdir -p $DUMPDIR

if [ -f $DUMPDIR/dustydisc_00000 ]; then
  last=$(ls -1 $DUMPDIR/dustydisc_0* | tail -1 | rev | cut -b -5 | rev)
else
  last=0
fi

scp $REMOTE:$REMOTEFOLDER/dustydiscSink\* $DUMPDIR/
for i in $(seq -f "%05g" $last 400); do
  scp $REMOTE:$REMOTEFOLDER/dustydisc_$i $DUMPDIR/
done
