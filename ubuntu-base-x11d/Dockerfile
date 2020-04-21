FROM mrkuz/ubuntu-base-ansible

RUN apt-get update && apt-get install -y --no-install-recommends \
    dbus dbus-x11 libnotify-bin \
    libcups2 \
    libpulse0 libcanberra-gtk-module libcanberra-gtk3-module \
    mesa-utils mesa-va-drivers \
    vdpauinfo libxv1 \
    x11-utils \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*
COPY pulseaudio.client.conf /etc/pulse/client.conf

ARG NVIDIA_VERSION
RUN add-apt-repository -y ppa:graphics-drivers/ppa \
    && apt-get update && apt-get install -y  --no-install-recommends \
#   libnvidia-cfg1-$NVIDIA_VERSION \
#   libnvidia-compute-$NVIDIA_VERSION \
    libnvidia-decode-$NVIDIA_VERSION \
    libnvidia-encode-$NVIDIA_VERSION \
#   libnvidia-fbc1-$NVIDIA_VERSION \
#   libnvidia-gl-$NVIDIA_VERSION \
#   libnvidia-ifr1-$NVIDIA_VERSION \
#   nvidia-compute-utils-$NVIDIA_VERSION \
#   nvidia-utils-$NVIDIA_VERSION \
    vulkan-utils \
    && rm -fv /etc/systemd/system/*.wants/* \
    && rm -rf /var/lib/apt/lists/*
COPY nvidia_icd.json /usr/share/vulkan/icd.d/nvidia_icd.json
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,graphics,utility

ARG USER
ARG USER_ID
ARG GROUP
ARG GROUP_ID
RUN groupadd -g $GROUP_ID $GROUP \
    && useradd -u $USER_ID -g $GROUP_ID -G adm,sudo,video,plugdev,games -s /bin/bash -m $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /home/$USER/
CMD [ "/bin/bash" ]
