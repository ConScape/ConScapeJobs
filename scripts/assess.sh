#!/bin/bash
#SBATCH --account=nn11055k
#SBATCH --job-name='Assess'
#SBATCH --time=2:00:00
#SBATCH --ntasks=1                
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4G 
set -o errexit  # Exit the script on any error
set -o nounset  # Treat any unset variables as an error
module --quiet purge   # clear any inherited modules
module load Julia/1.10.5-linux-x86_64
julia --threads=auto --project=.. assess.jl