FROM sonm/opencl

#RUN apt-get update && apt-get install --no-install-recommends -y libssl-dev libhwloc-dev libnuma-dev wget \
#    && wget -qO - http://repo.radeon.com/rocm/apt/debian/rocm.gpg.key | apt-key add - \
#    && echo 'deb [arch=amd64] http://repo.radeon.com/rocm/apt/debian/ xenial main' | tee /etc/apt/sources.list.d/rocm.list \
#    && apt-get update \
#    && apt-get install dkms rock-dkms rocm-opencl-dev -y \
#    && rm -rf /var/lib/apt/lists/*

COPY bminer run.sh /

ENTRYPOINT ["/run.sh"]
