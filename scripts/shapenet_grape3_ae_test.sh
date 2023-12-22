#! /bin/bash

resume_checkpoint="checkpoints/ae/shapenet15k-categrape3/checkpoint-2849.pt"

python test.py \
    --cates airplane \
    --resume_checkpoint ${resume_checkpoint} \
    --dims 512-512-512 \
    --use_deterministic_encoder \
    --evaluate_recon
