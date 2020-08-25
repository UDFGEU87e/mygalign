PD=data/yale1_yale2

python -u network_alignment.py \
--source_dataset ${PD}/yale1/graphsage/ \
--target_dataset ${PD}/yale2/graphsage/ \
--groundtruth ${PD}/dictionaries/groundtruth \
ANAGCN \
--embedding_dim 200 \
--emb_epochs 200 \
--lr 0.01 \
--num_GCN_blocks 2 \
--noise_level 0.001 \
--cuda \
--refinement_epoch 50 \
--refine \
--log 