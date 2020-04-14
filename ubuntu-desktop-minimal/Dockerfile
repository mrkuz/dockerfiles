FROM mrkuz/ubuntu-base-x11d
RUN apt-get update && apt-get install -y --no-install-recommends \
    ubuntu-desktop \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*

RUN systemctl set-default multi-user.target
