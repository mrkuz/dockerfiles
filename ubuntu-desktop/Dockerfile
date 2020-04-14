FROM mrkuz/ubuntu-base-x11d
RUN apt-get update && apt-get install -y \
    ubuntu-desktop \
    && rm -fv /lib/systemd/system/*.wants/* \
    && rm -fv /lib/systemd/user/*.wants/* \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -fv /etc/systemd/user/*.wants/* \
    && rm -rf /var/lib/apt/lists/*

RUN systemctl set-default multi-user.target
