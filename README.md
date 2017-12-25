# whitelist repo for SONM project

## library/hellow-world:latest

Docker hello-world image

## library/nginx:latest

Nginx webserver with hello page

## sonm/monero-cpu-miner:latest

Monero CPU miner

enviroment variables:

*username* - email of account on minergate.com

## sonm/monero-gpu:latest

Monero GPU miner

enviroment variables:

*username* - email of account on minergate.com


## sonm/eth-claymore:latest

Claymore Ethereum dual miner

enviroment variables:

*POOL* - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*ETH_ADDR* - your ethereum address

*WORKER* - name of current worker (`any string`)

*EMAIL* - your email
