FROM sonm/opencl

RUN apt-get update && apt-get install --no-install-recommends -y libssl-dev libhwloc-dev

ADD ./run.sh /run.sh
ADD ./miner /miner
CMD ["/run.sh"]
