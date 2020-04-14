FROM mrkuz/ubuntu-base

RUN apt-get update && apt-get install -y --no-install-recommends \
    ansible \
    aptitude \
    software-properties-common \
    python3-distutils \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*
