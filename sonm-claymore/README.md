Claymore-Docker
===============

Claymore Eth miner packed into Docker image. 


Env params: 

`POOL` - ethereum mining pool (e.g. eth-eu1.nanopool.org:9999)

`WALLET` - your ethereum address

`WORKER` - name of current worker

`EMAIL` - your email


Building an image:
```
docker build -t sonm/eth-claymore:latest .
docker push sonm/eth-claymore:latest

```
