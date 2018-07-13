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

*XMR_POOL* - stratum XMR pool

*XMR_ADDR* - your XMR address

## Monero GPU miner

Docker image: [sonm/monero-gpu:latest](https://hub.docker.com/r/sonm/monero-gpu/)

enviroment variables:

*username* - email of account on minergate.com


## Monero GPU Miner (AMD)

Image `sonm/monero-amd`.

building:
```
docker build -t sonm/monero-amd:latest ./monero-amd
```

Environemt variables:
```
WALLET - wallet for mined funds, required parameter 
POOL   - mining pool address (SSL only), default: "xmr-eu1.nanopool.org:14433"
WORKER - worker name, default: "sonm_worker"
```


## Zcash GPU(cuda-only) EWFB miner

Docker image: [sonm/zcash-cuda-ewfb:latest](https://hub.docker.com/r/sonm/zcash-cuda-ewfb/)

enviroment variables:

*ZEC_ADDR* - your ZEC address
*WORKER* - name of current worker (`any string`)
*EMAIL* - email of account

## ZCash GPU (AMD)

Docker image `sonm/zcash-amd`.

Enviroment variables:
```
WALLET - wallet for mined funds, required parameter
POOL   - mining pool address, default: "zec-eu1.nanopool.org:6666"
WORKER - worker name, default: "sonm_worker"
```


## Claymore Ethereum dual miner (Ethereum-only)

Docker image: [sonm/eth-claymore:latest](https://hub.docker.com/r/sonm/eth-claymore/)

enviroment variables:

*POOL* - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*WALLET* - your ethereum address

*WORKER* - name of current worker (`any string`)

*EMAIL* - your email

## Claymore Ethereum dual miner (Eth+pasc)

Docker image: [sonm/clm-eth-pasc-opencl:latest](https://hub.docker.com/r/sonm/clm-eth-pasc-opencl/)

enviroment variables:

*ETH_POOL* - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*ETH_ADDR* - your ethereum address

*ETH_WORKER* - name of current ethereum worker (`any string`)

*ETH_EMAIL* - your email for ethereum miner

*PASC_POOL* - pascal mining pool (e.g. `eth-eu1.nanopool.org:9999`)

*PASC_ADDR* - your pascal address address

*PASC_WORKER* - name of current pascal worker (`any string`)

*PASC_EMAIL* - your email for pascal worker


## Redshift 3D renderer (demo)

Docker image: [sonm/redshift3d:latest](https://hub.docker.com/r/sonm/redshift3d/)

enviroment variables:

*URL* - points to the archive, containing .rs file, textures and other supplementary files, needed to render. Optional, if omitted, official benchmark scene Vultures.rs is used.

*FILE* - .rs file in archive to render. If omitted, the first .rs file in archive is used

*PARAMS* - redshift specific params. May be ommited.

*BENCHMARK* - if not empty, perform benchmark run instead of rendering

