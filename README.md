# whitelist repo for SONM project

This repo contains list of docker images allowed to executed by anonymous customer on SONM
Examples for task.yaml are provided) 

## Docker hello-world

library/hello-world:latest

## Nginx webserver

[library/nginx:latest](https://hub.docker.com/_/nginx/)

## Monero CPU miner
[sonm/monero-cpu-miner:latest](https://hub.docker.com/r/sonm/monero-cpu-miner/)
[task.yaml](https://github.com/sonm-io/allowed-list/blob/master/tasks/monero-cpu.task.yaml)

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
