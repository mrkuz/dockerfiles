FROM ubuntu:rolling

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ca-certificates curl nano software-properties-common sudo unzip zip \
    dbus dbus-x11 libnotify-bin \
    libcups2 \
    libpulse0 \
    mesa-utils mesa-utils-extra vulkan-utils \
    va-driver-all \
    x11-apps x11-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# COPY --from=nvidia/opengl \
#   /usr/local/lib/x86_64-linux-gnu \
#   /usr/local/lib/x86_64-linux-gnu
# COPY --from=nvidia/opengl \
#   /usr/local/lib/i386-linux-gnu \
#   /usr/local/lib/i386-linux-gnu
# COPY --from=nvidia/opengl \
#   /usr/local/share/glvnd/egl_vendor.d/10_nvidia.json \
#   /usr/local/share/glvnd/egl_vendor.d/10_nvidia.json
# COPY --from=nvidia/opengl \
#   /etc/ld.so.conf.d/glvnd.conf \
#   /etc/ld.so.conf.d/glvnd.conf
# RUN ldconfig

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,graphics,utility

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
