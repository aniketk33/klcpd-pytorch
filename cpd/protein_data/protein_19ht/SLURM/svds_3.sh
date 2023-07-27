#!/bin/bash
source ~/.bashrc
#SBATCH -o $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/OUTPUT/svds_3.out
#SBATCH -p $PARTITION
#SBATCH -t $TIME
#SBATCH --gres=gpu:1
#SBATCH -A $ACCOUNT
#SBATCH -J 19ht_s_3

python $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/svds_3.py