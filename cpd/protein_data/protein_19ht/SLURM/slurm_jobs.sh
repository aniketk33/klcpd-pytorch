#!/bin/sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/random_2.out -p voltadebug -t 02:30:00 --gres=gpu:1 -J 19ht_r_2 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/random_2.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/random_3.out -p voltadebug -t 02:30:00 --gres=gpu:1 -J 19ht_r_3 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/random_3.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/random_4.out -p voltadebug -t 02:30:00 --gres=gpu:1 -J 19ht_r_4 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/random_4.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/svds_2.out -p voltadebug -t 02:30:00 --gres=gpu:1 -J 19ht_s_2 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/svds_2.sh

sbatch -o /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/OUTPUT/svds_3.out -p voltadebug -t 02:30:00 --gres=gpu:1 -J 19ht_s_3 -A student-v /hpcgpfs01/scratch/akumar/code/cpd/protein_data/protein_19ht/SLURM/svds_3.sh