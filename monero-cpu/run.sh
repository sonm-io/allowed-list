#!/bin/bash

# USER-defined params
SONM_POOL="${XMR_POOL:-xmr-eu1.nanopool.org:14444}"
SONM_WORKER="${WORKER:-sonm_worker}"

if [[ -z "$XMR_ADDR" ]]; then
    echo "Please set env-variable 'XMR_ADDR' for mined funds."
    exit 1
fi

/miner/xmrig -a cryptonight \
    --url ${SONM_POOL} \
    --user ${XMR_ADDR} \
    --rig-id=${WORKER}
