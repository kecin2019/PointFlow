#! /bin/bash

python test.py \
    --cates grape15000 \
    --resume_checkpoint pretrained_models/gen/airplane/checkpoint.pt \
    --dims 512-512-512 \
    --latent_dims 256-256 \
    --use_latent_flow


