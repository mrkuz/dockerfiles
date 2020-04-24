FROM mrkuz/ubuntu-base-ansible

ARG USER
ARG USER_ID
ARG GROUP
ARG GROUP_ID
RUN groupadd -g $GROUP_ID $GROUP \
    && useradd -u $USER_ID -g $GROUP_ID -G adm,sudo,video,plugdev,games -s /bin/bash -m $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /home/$USER/
CMD [ "/bin/bash" ]
