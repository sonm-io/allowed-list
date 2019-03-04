#!/bin/bash

set -ax

export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_SINGLE_ALLOC_PERCENT=100

mkdir -p /lib64/nvidia/
ln -s /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/

# USER-defined params
if [[ -z "$PARAMS" ]]; then
    echo "Please set env-variable 'PARAMS' for mined funds."
    exit 1
fi

/bminer ${PARAMS}
