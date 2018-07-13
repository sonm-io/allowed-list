#!/bin/bash

set -ax

export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_SINGLE_ALLOC_PERCENT=100

# USER-defined params
SONM_POOL="${POOL:-zec-eu1.nanopool.org:6666}"
SONM_WORKER="${WORKER:-sonm_worker}"

if [[ -z "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/home/zcash/zecminer64 -zpool ${SONM_POOL} -zwal ${WALLET}.${SONM_WORKER} -zpsw x
