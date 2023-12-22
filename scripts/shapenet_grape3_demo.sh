#! /bin/bash

resume_checkpoint="checkpoints/gen/shapenet15k-categrape3/checkpoint-latest.pt"

python demo.py \
    --cates grape3 \
    --resume_checkpoint ${resume_checkpoint} \
    --dims 512-512-512 \
    --latent_dims 256-256 \
    --use_latent_flow \
    --num_sample_shapes 2 \
    --num_sample_points 20000

