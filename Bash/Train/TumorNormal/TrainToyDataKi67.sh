#!/bin/bash
python ../../../main.py \
		--gpu 0 \
		-inp 384 \
		--dataset TumorNormal \
		--class-name Tumor \
		--list-file-train ../../../Datasets/ToyTrainingSetKi67Tumor.txt \
		--list-file-test ../../../Datasets/ToyTestSetKi67Tumor.txt \
		--weights-dir ../../../weights \
		--enc-arch wide_resnet50_2 \
		--dec-arch freia-cflow \
		--pool-layers 3 \
		--coupling-blocks 8 \
		--input-size 384 \
		--batch-size 32 \
		--lr 2e-4 \
		--meta-epochs 25 \
		--sub-epochs 8 \
		--workers 4 \
		--backbone_weights ../../../BackboneResNetImagenet/wide_resnet50_2-95faca4d.pth