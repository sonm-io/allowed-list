FROM nvidia/cuda

ENV EXRTOOLS_VER 0.4
ENV EXRTOOLS_DISTR exrtools-${EXRTOOLS_VER}.tar.gz
ENV EXRTOOLS_URL http://scanline.ca/exrtools/${EXRTOOLS_DISTR}

COPY patch-openexr.sh /root
RUN apt-get update && \
  apt-get install -y wget libfreetype6 pkg-config libopenexr-dev libpng-dev
#  /bin/bash -c "source /root/patch-openexr.sh" && \
#  ls /usr/lib/x86_64-linux-gnu/libopenexr* && \
RUN echo ===== Building Exrtools v${EXRTOOLS_VER} && \
  wget -q http://scanline.ca/exrtools/exrtools-0.4.tar.gz && \
  mkdir exrtools && \
  cd exrtools && \
  tar --strip-components=1 -xzf ../${EXRTOOLS_DISTR} && \
  rm ../${EXRTOOLS_DISTR} && \
  ./configure --prefix=/usr && \
  make && \
  make install && \
  cd .. && \
  rm -rf exrtools

ARG DISTRIB_IP=none
ENV DISTRIB_IP ${DISTRIB_IP}

ENV REDSHIFT_VER 2.5.46
ENV REDSHIFT_DISTR redshift_v${REDSHIFT_VER}_linux_demo.run
ENV REDSHIFT_URL http://${DISTRIB_IP}:8080/${REDSHIFT_DISTR}

RUN echo ===== Downloading RedShift from  ${REDSHIFT_URL} && \
  wget -q ${REDSHIFT_URL} && \
  chmod +x ${REDSHIFT_DISTR} && \
  echo accept | ./${REDSHIFT_DISTR} && \
  rm ${REDSHIFT_DISTR}

WORKDIR /root
COPY render.sh /root/
#CMD "bash"
ENTRYPOINT ["./render.sh"]

