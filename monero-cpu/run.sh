#!/bin/bash

# USER-defined params
SONM_POOL="${XMR_POOL:-xmr-eu1.nanopool.org:14444}"
SONM_WORKER="${WORKER:-sonm_worker}"
SONM_TLS_FLAG=""

if [[ -z "$XMR_ADDR" ]]; then
    echo "Please set env-variable 'XMR_ADDR' for mined funds."
    exit 1
fi

if [[ ! -z "$USE_TLS" ]]; then
    SONM_TLS_FLAG="--tls"
fi

/miner/xmrig -a cryptonight ${SONM_TLS_FLAG} \
    --url ${SONM_POOL} \
    --user ${XMR_ADDR} \
    --rig-id=${WORKER} \
    --print-time=10 \
    --donate-level=1 \
    --no-color
