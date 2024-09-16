FROM golang:1.23
LABEL authors="christianarty"
LABEL org.opencontainers.image.source="https://github.com/christianarty/seedstore-image"
LABEL org.opencontainers.image.description="custom docker image for seedstore"
LABEL org.opencontainers.image.licenses="MIT"
# Set user as root
USER root
# Install mosquitto, mosquitto_sub, lftp, bash, nano, and openssh
RUN apt update && apt install -y mosquitto mosquitto-clients lftp bash nano openssh-server

RUN useradd -rm -d /home/seedstore -s /bin/bash -g root -G sudo -u 1001 seedstore
USER seedstore
WORKDIR /home/seedstore
ENV PS1="$(whoami)@$(hostname):$(pwd)\\$ " \
  TERM="xterm" \
  PATH="/home/seedstore/bin:$PATH"

VOLUME ["/data"]
