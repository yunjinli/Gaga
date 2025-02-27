#!/bin/bash
#SBATCH --job-name="[GAGA] Generate Masks"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:24G
#SBATCH --time=24:00:00
#SBATCH --partition=DEADLINEBIG
#SBATCH --comment="CVPR"
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/interp/chickchicken --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/interp/cut-lemon1 --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/interp/hand1-dense-v2 --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/interp/slice-banana --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/interp/torchocolate --image rgb/2x --seg_method sam --visualize

python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/misc/americano --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/misc/espresso --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/misc/keyboard --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/misc/oven-mitts --image rgb/2x --seg_method sam --visualize
python mask/get_raw_mask.py --dataset_folder /usr/stud/lyun/4dgsam/data --scene HyperNeRF/misc/split-cookie --image rgb/2x --seg_method sam --visualize

