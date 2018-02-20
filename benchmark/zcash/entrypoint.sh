#!/bin/bash
./miner --server zec-eu1.nanopool.org --user $ZEC_ADDR.$WORKER/$EMAIL --pass z --port 6666 --api 127.0.0.1:42000 >/dev/null &
sleep 60
curl http://127.0.0.1:42000/getstat 2>/dev/null
curl http://127.0.0.1:42000/getstat 2>/dev/null | jq '{devices:[.result[] | {cuda_id: .cudaid, pci_id: .busid, name: .name, value: .speed_sps} ]} | .benchmark="zcash" | .type="gpu"'
