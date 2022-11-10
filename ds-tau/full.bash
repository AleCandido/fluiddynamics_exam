source $(dirname ${BASH_SOURCE[0]})/_setup.bash

# change directory to script dir
pushd $SRCDIR
ls

bash _clean.bash
bash disk.bash

source $SRCDIR/_close.bash
