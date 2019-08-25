FROM mrkuz/ubuntu-base
RUN curl -L https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -o teamviewer.deb \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ./teamviewer.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm teamviewer.deb
ENTRYPOINT [ "/usr/bin/teamviewer" ]
