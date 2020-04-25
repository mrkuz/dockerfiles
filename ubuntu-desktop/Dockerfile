FROM mrkuz/ubuntu-base-x11d
RUN apt-get update && apt-get install -y \
    ubuntu-desktop \
    && rm -rf /var/lib/apt/lists/*

RUN systemctl set-default multi-user.target
