#!/bin/bash

set -ax

export GPU_FORCE_64BIT_PTR=1
export GPU_MAX_ALLOC_PERCENT=100

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    # TODO: remove after debug
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# USER-defined params
SONM_POOL="${POOL:-eth-eu1.nanopool.org:9999}"
SONM_WORKER="${WORKER:-sonm_worker}"
SONM_EMAIL="${EMAIL:-johndoe@foobar.baz}"

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/home/claymore/ethdcrminer64 -epool ${SONM_POOL} -ewal ${WALLET}/${SONM_WORKER}/${SONM_EMAIL} -epsw x -mode 1 -ftime 10
