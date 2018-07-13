#!/bin/bash

set -ax

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# USER-defined params
SONM_POOL="${POOL:-xmr-eu1.nanopool.org:14444}"
SONM_WORKER="${WORKER:-sonm_worker}"

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/miner/xmrig-nvidia -o ${SONM_POOL} -u ${WALLET} --user-agent ${SONM_WORKER}
