#!/bin/bash

RECORD=3995
WORKDIR=work_dir/$RECORD
MODELNAME=runs/$RECORD

#CONFIG=./config/uav-cross-subjectv1/test.yaml
CONFIG=./config/uav-cross-subjectv2/test.yaml

WEIGHTS=runs/2103-49-25650.pt


BATCH_SIZE=32

python3 main.py  --config $CONFIG --work-dir $WORKDIR -model_saved_name $MODELNAME --device 0 --batch-size $BATCH_SIZE --test-batch-size $BATCH_SIZE --weights $WEIGHTS
