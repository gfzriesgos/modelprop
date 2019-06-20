FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install python3 git python3-pip -y

RUN pip3 install pandas

RUN mkdir /usr/share/git

RUN cd /usr/share/git && git clone https://github.com/ruester/modelprop.git

RUN mkdir -p /usr/share/git/modelprop/output/
