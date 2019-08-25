FROM mrkuz/ubuntu-base
RUN curl -L https://dl.pstmn.io/download/latest/linux64 -o postman.tgz \
    && tar xzf postman.tgz -C /opt \
    && ln -s /opt/Postman/Postman /usr/local/bin/postman \
    && rm postman.tgz
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libasound2 libgtk-3.0 libnss3 libxss1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/usr/local/bin/postman" ]
