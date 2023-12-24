#! /bin/bash

cate="grape3"
dims="512-512-512"
resume_checkpoint="checkpoints/ae/shapenet15k-categrape3/checkpoint-latest.pt"

python test.py \
    --cates ${cate} \
    --resume_checkpoint ${resume_checkpoint} \
    --dims ${dims} \
    --use_deterministic_encoder \
    --evaluate_recon 
