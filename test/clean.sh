BLASTDIR=$(realpath $(dirname ${BASH_SOURCE[0]})/../_runs/blast)

echo "Removing $BLASTDIR"
rm -rf $BLASTDIR
