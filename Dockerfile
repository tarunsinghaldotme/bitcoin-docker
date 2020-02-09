From ubuntu:14.04

MAINTAINER Tarun Singhal <tarun.singhal@oodlestechnologies.com>

RUN apt-get update -y && \
    apt-get install software-properties-common -y && \
    add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update -y && \
    apt-get install bitcoind -y && \
    apt-get install curl -y && \
    apt-get install wget -y

WORKDIR /root/.bitcoin


#COPY ./bitcoin.conf /root/.bitcoin/
EXPOSE 8332 8333 18332 18333

CMD ["/usr/bin/bitcoind"]
