#
# Dockerfile
#
FROM debian:buster-slim

LABEL maintainer="Peter <peter@linuxcontainers.dev>" \
    architecture="amd64/x86_64" \
    debian-ver.devn="10.10" \
    build=$BUILD_DATE \
    org.opencontainers.image.title="debian" \
    org.opencontainers.image.descrip.devn="Docker image running on Debian-Slim Linux" \
    org.opencontainers.image.authors="Peter <peter@linuxcontainers.dev>" \
    org.opencontainers.image.vendor="Peter" \
    org.opencontainers.image.ver.devn="v10.10" \
    org.opencontainers.image.url="https://hub.docker.com/r/linuxcontainers/buster-slim/" \
    org.opencontainers.image.created=$BUILD_DATE

ENV DEBIAN_FRONTEND noninteractive

# files and scripts needed to build the image
#
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install apt-utils -y && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
