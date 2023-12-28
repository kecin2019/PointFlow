#! /bin/bash

python demo.py \
    --cates grape15k \
    --resume_checkpoint checkpoints/gen/tmp/shapenet15k-categrape15000/checkpoint-latest.pt \
    --dims 512-512-512 \
    --latent_dims 256-256 \
    --use_latent_flow \
    --num_sample_shapes 10 \
    --num_sample_points 15000

