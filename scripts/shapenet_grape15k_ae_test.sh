#! /bin/bash

python test.py \
    --cates grape15k \
    --resume_checkpoint pretrained_models/ae/airplane/checkpoint.pt \
    --dims 512-512-512 \
    --use_deterministic_encoder \
    --evaluate_recon
