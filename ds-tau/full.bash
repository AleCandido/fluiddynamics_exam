if [ -z "$1" ]; then
  export CPUS=1
else
  export CPUS=$1
fi
source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# change directory to script dir
pushd $SRCDIR
ls

bash _clean.bash
bash disc.bash $CPUS

source $SRCDIR/_close.bash
