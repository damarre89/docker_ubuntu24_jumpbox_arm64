FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y &&\
    apt install -y \
        openssh-client \
        iputils-ping \
        netcat-openbsd \
        curl \
        vim \
        less \
        ca-certificates && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]
