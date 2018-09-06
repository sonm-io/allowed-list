#!/bin/bash

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# USER-defined params
SONM_SERVER="${SERVER:-eu.minexpool.nl}"
SONM_PORT="${PORT:-3333}"
SONM_ALGO="${ALGO:-96_5}"

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/miner --color 0 --fee 1 --server ${SONM_SERVER} --port ${SONM_PORT} --user ${WALLET} --pass x --algo ${SONM_ALGO}
