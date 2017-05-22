FROM ubuntu:17.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    vagrant \
    virtualbox \
 && rm -rf /var/lib/apt/lists/*

COPY package.box /tmp/
RUN vagrant add --name base /tmp/package.box && rm /tmp/package.box

COPY Vagrantfile ./

CMD vagrant up && vagrant ssh
