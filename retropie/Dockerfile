FROM mrkuz/ubuntu-base-x11d

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -s /bin/bash -m -d /opt/retropie -G sudo retropie \
    && echo "retropie ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER retropie
RUN cd /opt/retropie \
    && git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git \
    && cd RetroPie-Setup \
    && chmod u+x retropie_setup.sh \
    && sudo ./retropie_packages.sh setup basic_install \
    && sudo chmod -R a+rw /opt/retropie/configs/ \
    && sudo rm -rf /var/lib/apt/lists/*

COPY start.sh /opt/retropie/start.sh
CMD [ "/opt/retropie/start.sh" ]
