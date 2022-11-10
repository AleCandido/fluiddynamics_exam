#!/bin/sh
#SBATCH --time=60
#SBATCH --nodes=1
srun hostname | sort
