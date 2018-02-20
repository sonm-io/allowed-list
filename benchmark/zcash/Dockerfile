FROM nvidia/cuda
RUN apt-get update && \
    apt-get install -y curl jq && \
    curl -SL https://github.com/nanopool/ewbf-miner/releases/download/v0.3.4b/Zec.miner.0.3.4b.Linux.Bin.tar.gz | tar -xz && \
    rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /
EXPOSE 42000
CMD ["./entrypoint.sh"]
