FROM nvidia/cuda:9.1-base

RUN apt-get update && apt-get install -y libcurl4-openssl-dev

COPY run.sh t-rex /

ENTRYPOINT ["/run.sh"]
