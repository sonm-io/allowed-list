FROM sonm/opencl

RUN apt-get update && \
    apt-get install -y curl libcurl3 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /home/claymore && cd /home/claymore && \
    curl -L -o data.tar.gz https://github.com/nanopool/Claymore-Dual-Miner/releases/download/v10.0/Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v10.0.-.LINUX.tar.gz && \
    tar xzvf data.tar.gz

ADD ./run.sh /run.sh
CMD ["/run.sh"]
