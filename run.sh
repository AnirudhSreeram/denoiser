#!/bin/bash
stage=1


source /data/asreeram/miniconda3/etc/profile.d/conda.sh

conda activate denoise

if [ $stage -eq 1 ]; then

 CUDA_LAUNCH_BLOCKING=1 CUDA_VISIBLE_DEVICES=0 python train.py continue_pretrained=dns48

fi

