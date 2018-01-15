# whitelist repo for SONM project

This repo contains list of docker images allowed to executed by anonymous customer on SONM.

Examples for task.yaml are provided (see below)

## Docker hello-world

Docker image: library/hello-world:latest

## Nginx webserver

Docker image: [library/nginx:latest](https://hub.docker.com/_/nginx/)

## Monero CPU miner

Docker image: [sonm/monero-cpu-miner:latest](https://hub.docker.com/r/sonm/monero-cpu-miner/)

[task.yaml](https://github.com/sonm-io/allowed-list/blob/master/tasks/monero-cpu.task.yaml)

enviroment variables:

*username* - email of account on minergate.com

## Monero GPU miner

Docker image: [sonm/monero-gpu:latest](https://hub.docker.com/r/sonm/monero-gpu/)

enviroment variables:

*username* - email of account on minergate.com


## Claymore Ethereum dual miner

Docker image: [sonm/eth-claymore:latest](https://hub.docker.com/r/sonm/eth-claymore/)

enviroment variables:

*POOL* - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*ETH_ADDR* - your ethereum address

*WORKER* - name of current worker (`any string`)

*EMAIL* - your email

## Redshift 3D renderer (demo)

Docker image: [sonm/redshift3d:latest](https://hub.docker.com/r/sonm/redshift3d/)

enviroment variables:

*URL* - points to the archive, containing .rs file, textures and other supplementary files, needed to render. Optional, if omitted, official benchmark scene Vultures.rs is used.

*FILE* - .rs file in archive to render. If omitted, the first .rs file in archive is used

*BENCHMARK* - perform benchmark run instead of rendering

