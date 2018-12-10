FROM sonm/opencl

ENV DEBIAN_FRONTEND=noninteractive
ENV USERNAME=""
ENV TEAM_ID=""
ENV GPU="true"

RUN apt-get update && \
        apt-get install --no-install-recommends -y curl adduser bzip2  && \
        curl -s --insecure https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb > /tmp/fah.deb && \
        mkdir -p /etc/fahclient/ && \
        touch /etc/fahclient/config.xml && \
        dpkg --install /tmp/fah.deb && \
        apt-get remove -y curl && \
        apt-get autoremove -y && \
        rm --recursive --verbose --force /tmp/* /var/log/* /var/lib/apt/

# Web viewer
EXPOSE 7396

ENTRYPOINT /usr/bin/FAHClient --web-allow="0/0" --allow="0/0"  --gpu=${GPU} --smp=true --power=full --user="${USERNAME}" --team="${TEAM}"