FROM ghcr.io/linuxserver/baseimage-alpine:3.20
LABEL authors="christianarty"
LABEL org.opencontainers.image.source="https://github.com/christianarty/seedstore-image"
LABEL org.opencontainers.image.description="custom docker image for seedstore"
LABEL org.opencontainers.image.licenses="MIT"

# Install mosquitto, mosquitto_sub, lftp, bash, nano, and openssh
RUN apk add --no-cache mosquitto mosquitto-clients lftp bash nano openssh


