# whitelist repo for SONM project

## Docker hello-world

library/hello-world:latest

## Nginx webserver

[library/nginx:latest](https://hub.docker.com/_/nginx/)

## Monero CPU miner
[sonm/monero-cpu-miner:latest](https://hub.docker.com/r/sonm/monero-cpu/)

enviroment variables:

*username* - email of account on minergate.com

## Monero GPU miner
[sonm/monero-gpu:latest](https://hub.docker.com/r/sonm/monero-gpu/)

enviroment variables:

*username* - email of account on minergate.com


## Claymore Ethereum dual miner

[sonm/eth-claymore:latest](https://hub.docker.com/r/sonm/eth-claymore/)

enviroment variables:

*POOL* - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*ETH_ADDR* - your ethereum address

*WORKER* - name of current worker (`any string`)

*EMAIL* - your email
