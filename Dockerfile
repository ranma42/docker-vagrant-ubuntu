FROM ubuntu:17.04

RUN apt-get update && apt-get install -y \
    vagrant \
    virtualbox \
 && rm -rf /var/lib/apt/lists/*
