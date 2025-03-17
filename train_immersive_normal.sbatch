#!/bin/bash
#SBATCH --job-name="[GAGA] Immersive"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:48G
#SBATCH --time=24:00:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

# dataset_name="interp/hand1-dense-v2"
# model_name="hand1-dense-v2_custom_corr"
# dataset_name="02_Flames"
dataset_name="01_Welder"
# dataset_name="11_Alexa_Meade_Face_Paint_2"
# dataset_name="10_Alexa_Meade_Face_Paint_1"
# model_name="split-cookie_new_corr"
# python associate.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --seg_method sam --iteration 20000 --visualize --eval --load_image_on_the_fly --load_mask_on_the_fly
python lift.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --trained_model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000 --load_image_on_the_fly --load_mask_on_the_fly --load2gpu_on_the_fly --end_frame 50


