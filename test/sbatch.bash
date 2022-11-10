#!/usr/bin/env bash
#SBATCH --time=60
#SBATCH --nodes=1

export SRCDIR=$(realpath $(dirname ${BASH_SOURCE[0]}))
srun bash $SRCDIR/full.bash
