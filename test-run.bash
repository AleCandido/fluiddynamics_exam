# fail fast
# https://dougrichardson.us/notes/fail-fast-bash-scripting.html
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

# PHANTOM
# is already in this repo as a submodule, see README.md
pushd phantom

# You will need to specify some additional environment variables to run
# properly:
export OMP_SCHEDULE="dynamic"
export OMP_STACKSIZE=512M
ulimit -s unlimited
export SYSTEM=gfortran

# Running the testsuite
# ---------------------
make SYSTEM=gfortran test

popd

# Running an example calculation
# ------------------------------
mkdir -p _runs/blast
pushd _runs/blast

../../phantom/scripts/writemake.sh sedov >Makefile
cat Makefile
make
make setup
./phantomsetup blast
ls -l

# actually run
./phantom blast.in

popd

# compute and print elapsed time
end_time=$(date +%s)
echo execution time was $(expr $end_time - $start_time)s.
