#! /bin/bash

cate="grape15k"
dims="512-512-512"
latent_dims="256-256"
num_blocks=1
latent_num_blocks=1
zdim=128
batch_size=32
lr=2e-3
epochs=4000
ds=shapenet15k
log_name="gen/${ds}-cate${cate}"
data_dir="/workspace/dataset/ShapeNet/ShapeNetCore.v2.PC15k"
resume_checkpoint="checkpoints/gen/shapenet15k-categrape15000/checkpoint-latest.pt"

python train.py \
    --log_name ${log_name} \
    --lr ${lr} \
    --dataset_type ${ds} \
    --data_dir ${data_dir} \
    --cates ${cate} \
    --dims ${dims} \
    --latent_dims ${latent_dims} \
    --num_blocks ${num_blocks} \
    --latent_num_blocks ${latent_num_blocks} \
    --batch_size ${batch_size} \
    --zdim ${zdim} \
    --epochs ${epochs} \
    --save_freq 50 \
    --viz_freq 10 \
    --log_freq 10 \
    --val_freq 10 \
    --use_latent_flow \
    --resume_checkpoint ${resume_checkpoint} \
    --resume_optimizer

echo "Done"
exit 0
