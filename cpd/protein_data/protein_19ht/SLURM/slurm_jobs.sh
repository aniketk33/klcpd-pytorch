#!/bin/sh
source ~/.bashrc
#SBATCH -o $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/slurm_jobs.out
#SBATCH -p $PARTITION
#SBATCH -t $TIME
#SBATCH --gres=gpu:1
#SBATCH -A $ACCOUNT
#SBATCH -J slurm_jobs

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_2.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_3.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_4.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/svds_2.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/svds_3.sh