source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# change directory to script dir
pushd $SRCDIR

bash clean.bash
bash star.bash
bash tde.bash

source $SRCDIR/_close.bash
