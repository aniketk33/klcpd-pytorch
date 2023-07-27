#!/bin/bash
source ~/.bashrc
#SBATCH -o $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/OUTPUT/random_4.out
#SBATCH -p $PARTITION
#SBATCH -t $TIME
#SBATCH --gres=gpu:1
#SBATCH -A $ACCOUNT
#SBATCH -J 19ht_r_4

python $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/random_4.py