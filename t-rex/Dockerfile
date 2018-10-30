FROM nvidia/cuda:9.1-base

RUN apt-get update \
    && apt-get install -y libcurl4-openssl-dev \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh t-rex /

ENTRYPOINT ["/run.sh"]
