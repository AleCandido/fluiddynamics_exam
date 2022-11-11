#!/usr/bin/env bash

PROJECT=$(basename $1)
SCRIPT=sbatch-phantom-$PROJECT-$(date +%s)
HERE=$(realpath $(dirname ${BASH_SOURCE[0]}))
TIME=$(date '+%Y-%m-%d_%H:%M:%S')
if [ -z "$2" ]; then
  export CPUS=1
else
  export CPUS=$2
fi

sed "s|@-PROJECT-@|$PROJECT|g" $PROJECT/sbatch >$SCRIPT
sed "s|@-ROOT-@|$HERE|g" $SCRIPT -i
sed "s|@-TIME-@|$TIME|g" $SCRIPT -i
sed "s|@-CPUS-@|$CPUS|g" $SCRIPT -i
chmod +x $SCRIPT
sbatch $SCRIPT
# rm -f $SCRIPT
