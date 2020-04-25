FROM mrkuz/ubuntu-base

RUN apt-get update && apt-get install -y --no-install-recommends \
    ansible \
    aptitude \
    dirmngr \
    gpg-agent \
    software-properties-common \
    python3-distutils \
    && rm -rf /var/lib/apt/lists/*
