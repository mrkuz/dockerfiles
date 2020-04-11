FROM mrkuz/ubuntu-base
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libreoffice \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ttf-* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/usr/bin/libreoffice" ]
