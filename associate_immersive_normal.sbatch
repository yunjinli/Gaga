#!/bin/bash
#SBATCH --job-name="[GAGA] Immersive"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --gres=gpu:1,VRAM:12G
#SBATCH --time=24:00:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

# dataset_name="interp/hand1-dense-v2"
# model_name="hand1-dense-v2_custom_corr"
# dataset_name="10_Alexa_Meade_Face_Paint_1"
dataset_name="11_Alexa_Meade_Face_Paint_2"
# dataset_name="01_Welder"
# dataset_name="02_Flames"

# model_name="split-cookie_new_corr"
python associate.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --seg_method sam --iteration 20000 --visualize --eval --load_image_on_the_fly --load_mask_on_the_fly --end_frame 50
# python lift.py --source_path /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name}  --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --trained_model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000


