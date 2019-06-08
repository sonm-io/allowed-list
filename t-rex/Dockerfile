FROM nvidia/cuda:9.1-base

RUN apt-get update > /dev/null \
    && apt-get install wget libcurl4-openssl-dev -y \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /root/src \
    && wget "https://github.com/trexminer/T-Rex/releases/download/0.11.0/t-rex-0.11.0-linux-cuda9.1.tar.gz" -O /root/src/miner.tar.gz \
    && tar xvf /root/src/miner.tar.gz -C /root/src/ \
    && find /root/src -name 't-rex' -exec cp {} / \; \
    && rm -rf /root/src/

COPY run.sh /

ENTRYPOINT ["/run.sh"]
