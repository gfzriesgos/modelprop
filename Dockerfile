FROM python:3.6.9-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN pip3 install pandas

RUN mkdir -pv /usr/share/git && \
    cd /usr/share/git && \
    git clone https://github.com/gfzriesgos/modelprop.git && \
    mkdir -pv /usr/share/git/modelprop/output/
