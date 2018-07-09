#!/bin/bash

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    # TODO: remove after debug
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# USER-defined params
SONM_WORKER="${WORKER:-sonm_worker}"
SONM_EMAIL="${EMAIL:-johndoe@foobar.baz}"

if [[ -z "$ZEC_ADDR" ]]; then
    echo "Please set env-variable 'ZEC_ADDR' for mined funds."
    exit 1
fi

/miner/miner --server zec-eu1.nanopool.org --user ${ZEC_ADDR}.${SONM_WORKER}/${SONM_EMAIL} --pass z --port 6666
