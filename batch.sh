#!/bin/bash
#SBATCH --partition=pi_lora
#SBATCH --time=24:00:00
#SBATCH --ntasks=16
#SBATCH --cpus-per-task 1
#SBATCH --job-name=isca
#SBATCH --mail-user=caleb.keaveney@yale.edu
#SBATCH --mail-type=ALL

#module restore isca
module reset
module load netCDF-Fortran/4.5.3-gompi-2020b miniconda
module list

conda activate isca
python top_down_test.py
