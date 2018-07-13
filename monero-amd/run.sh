#!/bin/bash

set -ax

export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_SINGLE_ALLOC_PERCENT=100

# USER-defined params
SONM_POOL="${POOL:-xmr-eu1.nanopool.org:14433}"
SONM_WORKER="${WORKER:-sonm_worker}"

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/miner/xmr-stak -O ${SONM_POOL} -u ${WALLET} --currency monero7 -i 0 -p "" -r ${SONM_WORKER}

