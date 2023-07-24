#!/bin/bash
# SBATCH --job-name=bash
# SBATCH --partition=voltadebug
# SBATCH --account=student-v
# SBATCH --chdir=/hpcgpfs01/scratch/akumar/code/cpd/

source ~/.bashrc
conda activate cuda_env
python /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/random_2.py