FROM alpine:3.20 as base
LABEL authors="christianarty"
LABEL org.opencontainers.image.source="https://github.com/christianarty/seedstore-image"
LABEL org.opencontainers.image.description="custom docker image for seedstore"
LABEL org.opencontainers.image.licenses="MIT"


# Install mosquitto, mosquitto_sub, lftp, bash, nano, and openssh
RUN apk add --no-cache mosquitto mosquitto-clients lftp bash nano \ 
  openssh \ 
  xz \
  coreutils \
  curl \
  findutils \
  jq \
  shadow 

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
