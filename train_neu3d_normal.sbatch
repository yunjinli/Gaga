#!/bin/bash
#SBATCH --job-name="[GAGA] Neu3D"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:48G
#SBATCH --time=24:00:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out


# dataset_name="coffee_martini"
# dataset_name="cook_spinach"
dataset_name="cut_roasted_beef"
# dataset_name="flame_steak"
# dataset_name="sear_steak"


# python associate.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --seg_method sam --iteration 20000 --visualize --eval --load_image_on_the_fly --load_mask_on_the_fly
python lift.py --source_path /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name}  --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --trained_model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000 --load_image_on_the_fly --load_mask_on_the_fly --load2gpu_on_the_fly


