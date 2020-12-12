FROM ubuntu:rolling

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Basics
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
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
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bash-completion \
    sudo \
    && rm -rf /var/lib/apt/lists/*

ARG USER
ARG USER_ID
ARG GROUP
ARG GROUP_ID
RUN groupadd -g $GROUP_ID $GROUP \
    && useradd -u $USER_ID -g $GROUP_ID -G adm,sudo,video,plugdev,games -s /bin/bash -m $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /home/$USER/
CMD [ "/bin/bash" ]
