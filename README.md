# whitelist repo for SONM project

This repo contains list of docker images allowed to executed by anonymous customer on SONM.

Examples for task.yaml are provided (see below)


## Docker hello-world

Docker image: [hello-world:latest](https://hub.docker.com/_/hello-world/)


## Nginx webserver

Docker image: [nginx:latest](https://hub.docker.com/_/nginx/)

## folding@home

Docker image [sonm/foldingathome](https://hub.docker.com/r/sonm/foldingathome/)

More info about running [folding@home](https://foldingathome.org/) project on SONM can be found [here](https://medium.com/@almondelectriccompany/folding-home-sonm-curing-disease-with-cryptocurrency-730c485c5634).

Building:
```
build -t sonm/foldingathome:latest ./folding-at-home
```

Enviroment variables:
```
USERNAME - Username for machine
TEAM_ID  - Computation team to join

more info: https://foldingathome.org/support/faq/stats-teams-usernames/
```


## Monero CPU miner

Docker image: [sonm/monero-cpu:latest]

[task.yaml](https://github.com/sonm-io/allowed-list/blob/master/tasks/monero-cpu.task.yaml)

Building:
```
docker build -t sonm/monero-cpu:latest ./monero-cpu
```

Enviroment variables:
```
XMR_ADDR - XMR wallet for mined funds, required parameter 
XMR_POOL - mining pool address, default: "xmr-eu1.nanopool.org:14444"
WORKER   - worker name, default: "sonm_worker"
USE_TLS  - set to `true` if mining pool accepts connection via TLS
```


## Monero GPU miner (NVidia CUDA)

Docker image: `sonm/monero-cuda:latest`

Building:
```
docker build -t sonm/monero-cuda:latest ./monero-cuda
```

Environemt variables:
```
WALLET - wallet for mined funds, required parameter 
POOL   - mining pool address, default: "xmr-eu1.nanopool.org:14444"
WORKER - worker name, default: "sonm_worker"
```


## Monero GPU miner (AMD)

Docker image `sonm/monero-amd:latest`.

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


## Zcash GPU miner (NVidia CUDA)

Building:
```
docker build -t sonm/zcash-cuda-ewfb:latest ./zcash-cuda-ewfb
```

Docker image: [sonm/zcash-cuda-ewfb:latest](https://hub.docker.com/r/sonm/zcash-cuda-ewfb/)

Enviroment variables:
```
ZEC_ADDR - your ZEC address, required parameter
WORKER   - worker name, default: "sonm_worker"
EMAIL    - email of account, optional
```

## ZCash GPU miner (AMD)

Building: 
```
docker build -t sonm/zcash-amd:latest ./zcash-amd
```

Docker image `sonm/zcash-amd`.

Enviroment variables:
```
WALLET - wallet for mined funds, required parameter
POOL   - mining pool address, default: "zec-eu1.nanopool.org:6666"
WORKER - worker name, default: "sonm_worker"
```


## Ethereum Claymore miner (Both AMD and NVidia)

Docker image: [sonm/eth-claymore:latest](https://hub.docker.com/r/sonm/eth-claymore/)

Enviroment variables:
```
WALLET       - your ethereum address for mined funds, required
POOL         - ethereum mining pool, default: "eth-eu1.nanopool.org:9999"
WORKER       - worker name, default: "sonm_worker"
EMAIL        - your email, optional
USE_ALLPOOLS - set to `true` if you need `-allpools=1` parameter enabled
USE_ALLCOINS - set to `true` if you need `-allcoins=1` parameter enabled
```


## Claymore Ethereum dual miner (Eth+pasc)

Docker image: [sonm/clm-eth-pasc-opencl:latest](https://hub.docker.com/r/sonm/clm-eth-pasc-opencl/)

enviroment variables:

```
ETH_POOL    - ethereum mining pool (e.g. `eth-eu1.nanopool.org:9999`)
ETH_ADDR    - your ethereum address
ETH_WORKER  - name of current ethereum worker (`any string`)
ETH_EMAIL   - your email for ethereum miner

PASC_POOL   - pascal mining pool (e.g. `eth-eu1.nanopool.org:9999`)
PASC_ADDR   - your pascal address address
PASC_WORKER - name of current pascal worker (`any string`)
PASC_EMAIL  - your email for pascal worker
```


## Redshift 3D renderer (NVidia CUDA only)

Docker image: [sonm/redshift3d:latest](https://hub.docker.com/r/sonm/redshift3d/)

Enviroment variables:

```
URL       - points to the archive, containing .rs file, textures and other supplementary files, 
            needed to render. Optional, if omitted, official benchmark scene Vultures.rs is used.
FILE      - .rs file in archive to render. If omitted, the first .rs file in archive is used
PARAMS    - redshift specific params, optional.
BENCHMARK - if not empty, perform benchmark run instead of rendering.
```


## CryptoDredge miner (NVidia CUDA only)

CryptoDredge 0.14 (multy-algo miner for NVidia GPUs).
Needs CUDA 9.1
See https://github.com/technobyl/CryptoDredge for details.

Docker image: [sonm/cryptodredge](https://hub.docker.com/r/sonm/cryptodredge/)

Environment variables: 

```
PARAMS      - Set params for miner (algo, pool, wallet, etc.), for example "-a x16r -o stratum+tcp://us.ravenminer.com:6789 -u RTCuL6Lod8wL9FgcCj7qKDQibiMBXh1a7F -p worker1"
```


## T-rex miner (NVidia CUDA only)

T-rex 0.8.8 miner (devfee 1%) for NVidia GPUs. Needs CUDA 9.1.

Supported algos: balloon, bcd, bitcore, c11, hmq1725, hsr, lyra2z, phi, polytimos, renesis, sha256t, skunk, sonoa, timetravel, tribus, x16r, x16s, x17, x22i, geek, dedal, x21s, astralhash, jeonghash, padihash, pawelhash.

Docker image: [sonm/t-rex](https://hub.docker.com/r/sonm/t-rex/)

Environment variables: 

```
PARAMS      - Set params for miner (algo, pool, wallet, etc.), for example "-a x16r -o stratum+tcp://us.ravenminer.com:6789 -u RTCuL6Lod8wL9FgcCj7qKDQibiMBXh1a7F -p worker1"
```

## rhminer-cpu

See for details: https://github.com/polyminer1/rhminer/blob/master/README.md

Docker image: [sonm/rhminer-cpu](https://hub.docker.com/r/sonm/rhminer-cpu/)

```
Set params for miner (algo, pool, wallet, etc.), for example: 

PARAMS: "-r 20 -v 2 -s stratum+tcp://pasc-eu1.nanopool.org:15556 -cpu -su 86646-64.995999b69aace759"

Do NOT set '-cputhreads', it's calculated automatically as [total CPU threads - 1].
```s
