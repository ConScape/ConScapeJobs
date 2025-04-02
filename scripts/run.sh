#!/bin/bash
#SBATCH --account=nn11055k
#SBATCH --job-name='batchCS'
#SBATCH --time=1:20:0
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=1500M
#SBATCH --array=0-811 # Start at 0 not 1!
set -o errexit  # Exit the script on any error
set -o nounset  # Treat any unset variables as an error
module --quiet purge   # Clear any inherited modules
module load Julia/1.11.3-linux-x86_64
julia --threads=4 --project=.. run.jl # Lock to threads=4 so threads == cpus