FROM sonm/opencl

RUN apt-get update && \
    apt-get install -y curl libcurl3 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /home/claymore && cd /home/claymore && \
    curl -L -o data.tar.gz https://github.com/nanopool/Claymore-Dual-Miner/releases/download/v11.8/Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal_Blake2s_Keccak.AMD.NVIDIA.GPU.Miner.v11.8.-.LINUX.tar.gz && \
    tar xzv --strip-components 1 -f data.tar.gz

ADD ./run.sh /run.sh
CMD ["/run.sh"]
