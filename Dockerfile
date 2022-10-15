FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y \
    clang \
    make \
    curl \
    unzip \
    p7zip-full \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY ./start.sh ./
RUN chmod u+x ./start.sh
CMD ["/start.sh"]
