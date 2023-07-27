#!/bin/bash
source ~/.bashrc
#SBATCH -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/svds_2.out
#SBATCH -p $SBATCH_PARTITION
#SBATCH -t $SBATCH_TIMELIMIT
#SBATCH --gres=gpu:1
#SBATCH -A $SBATCH_ACCOUNT
#SBATCH -J 19ht_s_2

python $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/svds_2.py