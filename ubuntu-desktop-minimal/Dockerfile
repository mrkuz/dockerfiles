FROM mrkuz/ubuntu-base
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ubuntu-desktop \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
