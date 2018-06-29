FROM mysql:5.7
MAINTAINER Stefan Haun <tux@netz39.de>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    bzip2 \
    && apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}
