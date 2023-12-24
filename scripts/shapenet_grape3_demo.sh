#! /bin/bash

cate="grape3"
dims="512-512-512"
latent_dims="256-256"
batch_size=32
resume_checkpoint="checkpoints/gen/shapenet15k-categrape3/checkpoint-6899.pt"
num_sample_shapes=2
num_sample_points=2048

python demo.py \
    --cates ${cate} \
    --resume_checkpoint ${resume_checkpoint} \
    --dims ${dims} \
    --latent_dims ${latent_dims} \
    --batch_size ${batch_size} \
    --use_latent_flow \
    --num_sample_shapes ${num_sample_shapes} \
    --num_sample_points ${num_sample_points}

