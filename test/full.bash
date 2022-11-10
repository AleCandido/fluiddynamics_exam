# fail fast
# https://dougrichardson.us/notes/fail-fast-bash-scripting.html
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

# change directory to script dir
pushd $(dirname ${BASH_SOURCE[0]})

bash test-run.bash
bash clean.sh
bash test-blast.bash

popd

# compute and print elapsed time
end_time=$(date +%s)
printf "\n\nTEST-FULL, time: $(expr $end_time - $start_time)s.\n\n"
