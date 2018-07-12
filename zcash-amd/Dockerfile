FROM sonm/opencl

RUN apt-get update && \
    apt-get install -y curl libcurl3 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /home/zcash && cd /home/zcash && \
    curl -L -o data.tar.gz https://github.com/nanopool/ClaymoreZECMiner/releases/download/v12.6/Claymore.s.ZCash.AMD.GPU.Miner.v12.6.-.LINUX.tar.gz && \
    tar xzvf data.tar.gz && \
    rm data.tar.gz

ADD ./run.sh /run.sh
CMD ["/run.sh"]
