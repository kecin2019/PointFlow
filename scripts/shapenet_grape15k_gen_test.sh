#! /bin/bash

python test_grape.py \
    --cates grape15k \
    --resume_checkpoint checkpoints/gen/shapenet15k-categrape15000/checkpoint-latest.pt \
    --dims 512-512-512 \
    --latent_dims 256-256 \
    --use_latent_flow


