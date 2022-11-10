source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# change directory to script dir
pushd $SRCDIR

bash run.bash
bash clean.sh
bash blast.bash

source $SRCDIR/_close.bash
