FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install --no-install-recommends -y openjdk-11-jre-headless imagemagick python3 python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install pdftotree
