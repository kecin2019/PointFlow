#! /bin/bash

cate="grape3"
batch_size=32
ds=shapenet15k
data_dir="/workspace/dataset/ShapeNet/ShapeNetCore.v2.PC15k/"
resume_checkpoint="checkpoints/gen/shapenet15k-categrape3/checkpoint-latest.pt"

python test.py \
    --cates ${cate} \
    --dataset_type ${ds} \
    --data_dir ${data_dir} \
    --batch_size ${batch_size} \
    --use_latent_flow \
    --evaluate_recon \
    --resume_checkpoint ${resume_checkpoint}

echo "Done"
exit 0
