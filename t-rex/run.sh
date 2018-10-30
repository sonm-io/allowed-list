#!/bin/bash

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# USER-defined params
if [[ -z "$PARAMS" ]]; then
    echo "Please set env-variable 'PARAMS' for mined funds."
    exit 1
fi

/t-rex ${PARAMS}
