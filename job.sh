#!/bin/bash

#SBATCH --job-name=MatMultiplication    ## Job name
#SBATCH --output=output.txt             ## Standard output log file
#SBATCH --error=error.txt               ## Standard error log file
#SBATCH --time=10:00                    ## Job Duration
#SBATCH --ntasks=1                      ## Number of tasks (analyses) to run
#SBATCH --cpus-per-task=1               ## The number of threads the code will use
#SBATCH --mem-per-cpu=100M              ## Real memory(MB) per CPU required by the job.

# Load Singularity module
module load singularity

# Run Singularity container
singularity run MatMultiplication.sif
