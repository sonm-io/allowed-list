FROM nvidia/cudagl:9.0-base-ubuntu16.04

RUN apt-get update -q && \
    apt-get -qy install wget build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev bsdmainutils automake && \
    wget --output-document /miner.tar.gz https://github.com/nanopool/ewbf-miner/releases/download/v0.3.4b/Zec.miner.0.3.4b.Linux.Bin.tar.gz && \
    mkdir /miner && \
    tar xf /miner.tar.gz -C /miner/ && \
    rm /miner.tar.gz

COPY run.sh /

ENTRYPOINT ["/run.sh"]
