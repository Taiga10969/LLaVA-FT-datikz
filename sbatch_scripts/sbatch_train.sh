#!/bin/bash
#SBATCH --job-name=LLaVa-FT-datikz_train
#SBATCH --partition=a6000_ada
#SBATCH --gres=gpu:a6000_ada:4
#SBATCH --time=168:00:00
#SBATCH --cpus-per-task=64
#SBATCH --mem-per-cpu=8G
#SBATCH --output=./log/sbatch_train_result.txt
#SBATCH --error=./log/sbatch_train_error.txt


singularity exec --nv ../singularity-sif/llava-ft-datikz_latest.sif bash scripts/train.sh