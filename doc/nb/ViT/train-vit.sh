#!/bin/bash
#SBATCH -N 1
#SBATCH -C gpu
#SBATCH -G 1
#SBATCH -q regular
#SBATCH -J stronglens-vit-training
#SBATCH --mail-user=dcummin4@u.rochester.edu
#SBATCH --mail-type=ALL
#SBATCH -t 9:00:00
#SBATCH -A desi_g
#SBATCH -o train-vit.log

#OpenMP settings:
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread

#run the application:
#applications may perform better with --gpu-bind=none instead of --gpu-bind=single:1 
module load pytorch/1.13.1
srun -n 1 -c 128 --cpu_bind=cores -G 1 --gpu-bind=single:1 python /pscratch/sd/d/dcummins/vit/Training.py
