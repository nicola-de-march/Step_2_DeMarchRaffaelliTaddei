#!/bin/bash

#SBATCH --job-name=Step-2-SE4HPC  ## Name of the job
#SBATCH --output=output.txt       ## Stdout
#SBATCH --error=error.txt         ## Stderr
#SBATCH --ntasks=1                ## Num tasks
#SBATCH --cpus-per-task=1         ## Num CPU
#SBATCH --time=01:00:00           ## Job Duration

# Load Singularity module
module load singularity

export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

# Run singularity image
singularity run MatMultiplication.sif
