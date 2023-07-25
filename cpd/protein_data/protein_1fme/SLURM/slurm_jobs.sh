#!/bin/sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/OUTPUT/random_2.out -p voltadebug -t 04:30:00 --gres=gpu:1 -J 1fme_r_2 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/random_2.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/OUTPUT/random_3.out -p voltadebug -t 04:30:00 --gres=gpu:1 -J 1fme_r_3 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/random_3.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/OUTPUT/random_4.out -p voltadebug -t 04:30:00 --gres=gpu:1 -J 1fme_r_4 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/random_4.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/OUTPUT/svds_2.out -p voltadebug -t 04:30:00 --gres=gpu:1 -J 1fme_s_2 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/svds_2.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/OUTPUT/svds_3.out -p voltadebug -t 04:30:00 --gres=gpu:1 -J 1fme_s_3 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_1fme/SLURM/svds_3.sh