# fail fast
set -euo pipefail
shopt -s inherit_errexit

# start timer
start_time=$(date +%s)

# set common environment variables
source env-vars.sh

# Running an example calculation
# ------------------------------
mkdir -p _runs/blast
pushd _runs/blast

../../phantom/scripts/writemake.sh sedov >Makefile
cat Makefile
make
make setup
# setup with 5 particles
echo "5" | ./phantomsetup blast
ls -l

# actually run
./phantom blast.in

popd

# compute and print elapsed time
end_time=$(date +%s)
echo TEST-BLAST, time: $(expr $end_time - $start_time)s.
