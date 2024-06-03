#!/bin/bash

#SBATCH --job-name=Step-2-SE4HPC  ## Name of the job
#SBATCH --output=output.txt       ## Stdout
#SBATCH --error=error.txt         ## Stderr
#SBATCH --ntasks=1                ## Num tasks
#SBATCH --cpus-per-task=1         ## Num CPU
#SBATCH --time=01:00:00           ## Job Duration

# Load Singularity module
module load singularity
module load python 

export TMPDIR=$HOME/tmp
export NAME_IMAGE=MatMultiplication
mkdir -p $TMPDIR

## See documentation: https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28#list-artifacts-for-a-repository
echo "-----------------------------------------------------------------------"
echo "Extract the last artifact from github action"
python download_artifact.py
echo "Artifact correctly downloaded"
echo "-----------------------------------------------------------------------"

# Run singularity image
singularity run ($NAME_IMAGE).sif