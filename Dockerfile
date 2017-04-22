FROM ubuntu:17.04

RUN \
  set -x && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt update && \
  apt install -y \
      vagrant \
      virtualbox \
  apt clean
