
dataset_name="basin_novel_view"
python mask/get_raw_mask.py --dataset_folder /mnt/sda/4dgsam_data --scene NeRF-DS/${dataset_name} --image rgb/2x --seg_method sam --visualize
python associate.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --seg_method sam --iteration 20000 --visualize --eval
python lift.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --trained_model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000



dataset_name="cup_novel_view"
python mask/get_raw_mask.py --dataset_folder /mnt/sda/4dgsam_data --scene NeRF-DS/${dataset_name} --image rgb/2x --seg_method sam --visualize
python associate.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --seg_method sam --iteration 20000 --visualize --eval
python lift.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --trained_model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000



dataset_name="plate_novel_view"
python mask/get_raw_mask.py --dataset_folder /mnt/sda/4dgsam_data --scene NeRF-DS/${dataset_name} --image rgb/2x --seg_method sam --visualize
python associate.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --seg_method sam --iteration 20000 --visualize --eval
python lift.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --trained_model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000



dataset_name="press_novel_view"
python mask/get_raw_mask.py --dataset_folder /mnt/sda/4dgsam_data --scene NeRF-DS/${dataset_name} --image rgb/2x --seg_method sam --visualize
python associate.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --seg_method sam --iteration 20000 --visualize --eval
python lift.py --source_path /mnt/sda/4dgsam_data/NeRF-DS/${dataset_name} --model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --trained_model_path /mnt/sda/4dgsam_output/GAGA/NeRF-DS/${dataset_name}_new_corr --eval --load_iteration 20000 --iteration 30000 --save_iterations 21000 30000
