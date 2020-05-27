#
# Dockerfile
#
FROM debian:buster-slim
LABEL MAINTAINER="peter@linuxcontainers.io"

ENV DEBIAN_FRONTEND noninteractive

# files and scripts needed to build the image
#
RUN \
    apt-get update && \
    apt-get upgrade && \
    apt-get install -y --no-install-recommends \
        locales=2.28-10 && \
    echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen en_GB.utf8 && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
