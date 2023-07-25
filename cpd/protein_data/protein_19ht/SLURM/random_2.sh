#!/bin/bash
#SBATCH -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/random_2.out
#SBATCH -p voltadebug
#SBATCH -t 02:30:00
#SBATCH --gres=gpu:1
#SBATCH -A student-v
#SBATCH -J 19ht_r_2

source ~/.bashrc
conda activate cuda_env
python /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/random_2.py