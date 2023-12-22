#! /bin/bash

resume_checkpoint="checkpoints/ae/shapenet15k-categrape3/checkpoint-latest.pt"

python test.py \
    --cates grape3 \
    --resume_checkpoint ${resume_checkpoint} \
    --dims 512-512-512 \
    --use_deterministic_encoder \
    --evaluate_recon
