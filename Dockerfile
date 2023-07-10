FROM alpine:latest
LABEL org.opencontainers.image.authors="hiwanz <princeb4d@gmail.com>"

#------------------------------------------------------------------------------
# Environment setup:
#------------------------------------------------------------------------------

RUN apk update && apk upgrade && \
  apk --no-cache add \
      py-pip \
      privoxy \
      git \
  && rm /var/cache/apk/*

RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

ENV SERVER_ADDR= \
    SERVER_PORT=8899  \
    METHOD=aes-256-cfb \
    TIMEOUT=300 \
    PASSWORD=

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
EXPOSE 8118 7070

ENTRYPOINT ["/entrypoint.sh"]
