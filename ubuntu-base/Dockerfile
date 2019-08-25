FROM ubuntu:rolling

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ca-certificates curl unzip sudo zip \
    dbus dbus-x11 libnotify-bin \
    libcups2 \
    libpulse0 \
    mesa-utils mesa-utils-extra \
    va-driver-all \
    x11-apps x11-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG USER
ARG USER_ID
ARG GROUP
ARG GROUP_ID

RUN groupadd -g $GROUP_ID $GROUP \
    && useradd -u $USER_ID -g $GROUP_ID -s /bin/bash -m $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY pulseaudio.client.conf /etc/pulse/client.conf

WORKDIR /home/$USER/
ENTRYPOINT [ "/bin/bash" ]
