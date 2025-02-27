#!/bin/bash
#SBATCH --job-name="[GAGA] Install GAGA"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:24G
#SBATCH --time=01:00:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

# module load cuda/11.7.0
# conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia
# python -m pip install plyfile tqdm scipy wandb opencv-python scikit-learn lpips torchmetrics imageio
# python -m pip install git+https://github.com/facebookresearch/segment-anything.git

python -m pip install submodules/diff-gaussian-rasterization
python -m pip install submodules/simple-knn
# conda install -c conda-forge cudatoolkit-dev -y