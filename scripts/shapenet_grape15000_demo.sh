#! /bin/bash

python demo.py \
    --cates grape15000 \
    --resume_checkpoint checkpoints/gen/tmp/shapenet15k-categrape15000/checkpoint-latest.pt \
    --dims 512-512-512 \
    --latent_dims 256-256 \
    --use_latent_flow \
    --num_sample_shapes 100 \
    --num_sample_points 5000 

