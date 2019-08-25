FROM mrkuz/ubuntu-base
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y inkscape \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/usr/bin/inkscape" ]
