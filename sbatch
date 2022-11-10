#!/usr/bin/env bash

SCRIPT=sbatch-phantom-$1-$(date +%s)
HERE=$(realpath $(dirname ${BASH_SOURCE[0]}))
TIME=$(date '+%Y-%m-%d_%H:%M:%S')

sed "s|@-PROJECT-@|$1|g" $1/sbatch >$SCRIPT
sed "s|@-ROOT-@|$HERE|g" $SCRIPT -i
sed "s|@-TIME-@|$TIME|g" $SCRIPT -i
chmod +x $SCRIPT
sbatch $SCRIPT
rm -f $SCRIPT
