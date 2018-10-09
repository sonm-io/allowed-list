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
SONM_PASC_POOL="${PASC_POOL:-stratum+tcp://pasc-eu1.nanopool.org:15555}"
SONM_ALLPOLLS=""
SONM_ALLCOINS=""

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

PASC_PARAMS="-mode 1"
if [[ ! -z "$PASC_ADDRESS" ]]; then
    echo "Enabling PascalCoin mining"
    PASC_PARAMS="-dpool ${SONM_PASC_POOL} -dwal ${PASC_ADDRESS}"
fi

if [[ ! -z "$USE_ALLPOOLS" ]]; then
    echo "Enabling -allpools=1 for claymore"
    SONM_ALLPOLLS="-allpools 1"
fi

if [[ ! -z "$USE_ALLCOINS" ]]; then
    echo "Enabling -allpools=1 for claymore"
    SONM_ALLCOINS="-allcoins 1"
fi


COMMON_PARAMS="-ftime 10 ${SONM_ALLPOLLS} ${SONM_ALLCOINS}"
ETH_PARAMS="-epool ${SONM_POOL} -ewal ${WALLET} -epsw x"

/home/claymore/ethdcrminer64 ${COMMON_PARAMS} ${ETH_PARAMS} ${PASC_PARAMS}
