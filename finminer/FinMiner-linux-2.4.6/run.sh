#!/bin/bash

set -ax

export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_SINGLE_ALLOC_PERCENT=100

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
if [[ -d "/usr/local/nvidia/" ]]; then
    # TODO: remove after debug
    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
    mkdir -p /lib64/nvidia/
    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
fi

# setting finminer config with envs
sed -i "s/wallet=WALLET/wallet=$WALLET/" config.ini

if ! [[ -z $COIN ]]; then
	sed -i "s/\;coin=COIN/coin=$COIN/" config.ini
fi

if ! [[ -z $ALGO ]]; then
	sed -i "s/\;algorithm=ALGO/algorithm=$ALGO/" config.ini
fi

if ! [[ -z $WORKER ]]; then
	sed -i "s/\;rigName=WORKER/rigName=$WORKER/" config.ini
fi

if ! [[ -z $EMAIL ]]; then
	sed -i "s/\;email=EMAIL/email=$EMAIL/" config.ini
fi

if ! [[ -z $PASSWORD ]]; then
	sed -i "s/\;rigPassword=PASSWORD/rigPassword=$PASSWORD/" config.ini
fi

if ! [[ -z $POOL ]]; then
	echo "pool1 = $POOL"  >> config.ini
fi

./finminer
