FROM ubuntu:focal

COPY no-docs /etc/dpkg/dpkg.cfg.d/no-docs
COPY no-systemd-wants /etc/dpkg/dpkg.cfg.d/no-systemd-wants

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Basics
RUN apt-get update && apt-get install -y \
    apt-utils \
    locales \
    tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Tools
RUN apt-get update && apt-get install -y \
    curl \
    less \
    nano \
    sudo \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

# systemd
RUN apt-get update && apt-get install -y \
    systemd \
    systemd-sysv \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3
VOLUME [ "/sys/fs/cgroup" ]
CMD [ "/lib/systemd/systemd" ]
