# fail fast
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

# You will need to specify some additional environment variables to run
# properly:
source env-vars.sh

# PHANTOM
# is already in this repo as a submodule, see README.md
pushd phantom

# Running the testsuite
# ---------------------
make SYSTEM=gfortran test

popd

echo TEST-SUITE, time: $(expr $end_time - $start_time)s.
