FROM mrkuz/ubuntu-base

COPY no-systemd-wants /etc/dpkg/dpkg.cfg.d/no-systemd-wants
RUN apt-get update && apt-get install -y --no-install-recommends \
    systemd \
    systemd-sysv \
    && rm -fv /lib/systemd/system/*.wants/* \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3
VOLUME [ "/sys/fs/cgroup" ]
CMD [ "/lib/systemd/systemd" ]
