# fail fast
# https://dougrichardson.us/notes/fail-fast-bash-scripting.html
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

bash test-run.bash
bash test-blast.bash

echo TEST-FULL, time: $(expr $end_time - $start_time)s.
