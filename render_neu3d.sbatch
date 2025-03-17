#!/bin/bash
#SBATCH --job-name="[GAGA] render Immersive"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:24G
#SBATCH --time=00:30:00
#SBATCH --output=/usr/stud/lyun/Gaga/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/Gaga/log/slurm-%j.out

# dataset_name="coffee_martini"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --iteration 30000 --skip_train --segment_ids 9 10
# python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name}/test/ours_30000/

# dataset_name="cook_spinach"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --iteration 30000 --skip_train --segment_ids 2 7 20 24 29
# python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name}/test/ours_30000/

dataset_name="cut_roasted_beef"
python render.py -s /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --iteration 30000 --skip_train --segment_ids 9 12 13 22
python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name}/test/ours_30000/


# dataset_name="flame_steak"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --iteration 30000 --skip_train --segment_ids 2 20
# python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name}/test/ours_30000/


# dataset_name="sear_steak"
# python render.py -s /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/${dataset_name} -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --eval --iteration 30000 --skip_train --segment_ids 4 9 19
# python ../SADG-SegmentAnyDynamicGaussian/metrics_segmentation.py -m /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name} --no_psnr --benchmark_path /usr/stud/lyun/storage/user/4dgsam_output/GAGA/Neu3D/${dataset_name}/test/ours_30000/



 