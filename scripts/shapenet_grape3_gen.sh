#! /bin/bash

cate="grape3"
lr=2e-3
ds=shapenet15k
epochs=6000
batch_size=32
log_name="gen/${ds}-cate${cate}"
data_dir="/workspace/dataset/ShapeNet/ShapeNetCore.v2.PC15k/"
resume_checkpoint="checkpoints/gen/shapenet15k-categrape3/checkpoint-latest.pt"

python train.py \
    --log_name ${log_name} \
    --lr ${lr} \
    --epochs ${epochs} \
    --batch_size ${batch_size} \
    --dataset_type ${ds} \
    --data_dir ${data_dir} \
    --cates ${cate} \
    --use_latent_flow

echo "Done"
exit 0
