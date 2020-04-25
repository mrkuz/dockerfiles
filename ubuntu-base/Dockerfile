FROM ubuntu:rolling

COPY no-docs /etc/dpkg/dpkg.cfg.d/no-docs

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Basics
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    ca-certificates \
    locales \
    tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash-completion \
    curl \
    less \
    nano \
    sudo \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

CMD [ "/usr/bin/bash" ]
