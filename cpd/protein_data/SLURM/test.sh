#!/bin/bash
#SBATCH -J aniket_job
#SBATCH --partition voltadebug
#SBATCH -A student-v
#SBATCH -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/SLURM/aniket_job.out
#SBATCH --gres=gpu:1
# SBATCH --checkpoint 00:01:00
# SBATCH --checkpoint-dir=/hpcgpfs01/scratch/akumar/code/cpd/protein_data/SLURM/aniket_job.ckpt

source ~/.bashrc
conda activate cuda_env
python /hpcgpfs01/scratch/akumar/code/cpd/protein_data/test-klcpd.py
python /hpcgpfs01/scratch/akumar/code/cpd/protein_data/test-klcpd.py