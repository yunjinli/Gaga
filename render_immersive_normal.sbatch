#!/bin/bash
#SBATCH --job-name="[GAGA] render Immersive"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:24G
#SBATCH --time=00:30:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

# dataset_name="interp/hand1-dense-v2"
# model_name="hand1-dense-v2_custom_corr"
# dataset_name="02_Flames"
# dataset_name="11_Alexa_Meade_Face_Paint_2"
# dataset_name="02_Flames"
# model_name="split-cookie_new_corr"
# python associate.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --seg_method sam --iteration 20000 --visualize --eval --load_image_on_the_fly --load_mask_on_the_fly
# python lift.py --source_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} --model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --trained_model_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000 --load_image_on_the_fly --load_mask_on_the_fly

dataset_name="01_Welder"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --iteration 30000 --segment_ids 56 7 1 31 23 61 53 61 57 102 119 14 19 1 --skip_train
python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f/test/ours_30000/

dataset_name="02_Flames"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --iteration 30000 --segment_ids 5 8 --skip_train
python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f/test/ours_30000/

dataset_name="10_Alexa_Meade_Face_Paint_1"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --iteration 30000 --segment_ids 7 21 25 29 --skip_train
python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f/test/ours_30000/

dataset_name="11_Alexa_Meade_Face_Paint_2"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --eval --iteration 30000 --segment_ids 5 8 10 12 --skip_train
python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/immersive/${dataset_name}_50f/test/ours_30000/



 