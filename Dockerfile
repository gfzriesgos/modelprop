FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install python3 git python3-pip -y

RUN pip3 install pandas

RUN mkdir -pv /usr/share/git && \
    cd /usr/share/git && \
    git clone https://github.com/gfzriesgos/modelprop.git && \
    mkdir -pv /usr/share/git/modelprop/output/
