#!/usr/bin/env bash

SRCDIR=$(realpath $(dirname ${BASH_SOURCE[0]}))/$1
SCRIPT=sbatch-phantom-$1-$(date +%s)

sed "s|@-FOLDER-@|$SRCDIR|" $1/sbatch >$SCRIPT
chmod +x $SCRIPT
sbatch $SCRIPT
rm -f $SCRIPT
