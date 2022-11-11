# Setup script
# ------------
# Setup common environment variable
# IMPORTANT: source this script, don't run it

# fail fast
# https://dougrichardson.us/notes/fail-fast-bash-scripting.html
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

# set relevant folders
export SRCDIR=$(realpath $(dirname ${BASH_SOURCE[0]}))
export PROJECT=$(basename $SRCDIR)
if [ -z ${RUNDIR+x} ]; then
  export RUNDIR=$(realpath $SRCDIR/../_runs/$PROJECT-$CPUS)
fi

echo "PROJECT: $PROJECT"
echo "SRCDIR: $SRCDIR"
echo "RUNDIR: $RUNDIR"

# set common environment variables
export OMP_SCHEDULE="dynamic"
export OMP_STACKSIZE=512M
ulimit -s unlimited
export SYSTEM=gfortran

mkdir -p $RUNDIR
pushd $RUNDIR
