#!/bin/bash
sbatch --job-name=t_bash
sbatch --partition=voltadebug
sbatch --account=student-v
sbatch --gres=gpu:1
sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/SLURM/log.out

source ~/.bashrc
conda activate cuda_env
python /hpcgpfs01/scratch/akumar/code/cpd/protein_data/test-klcpd.py