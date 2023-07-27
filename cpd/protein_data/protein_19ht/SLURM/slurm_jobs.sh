#!/bin/sh
source ~/.bashrc
#SBATCH -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/slurm_jobs.out
#SBATCH -p $SBATCH_PARTITION
#SBATCH -t $SBATCH_TIMELIMIT
#SBATCH --gres=gpu:1
#SBATCH -A $SBATCH_ACCOUNT
#SBATCH -J slurm_jobs

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_2.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_3.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/random_4.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/svds_2.sh

sbatch $PROJ_DIR_PATH/cpd/protein_data/protein_19ht/SLURM/svds_3.sh