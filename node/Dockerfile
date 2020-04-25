FROM mrkuz/ubuntu-base-cli
COPY playbook.yaml /tmp/playbook.yaml
RUN ansible-playbook -i "localhost," /tmp/playbook.yaml
COPY bashrc /tmp/bashrc
CMD [ "/usr/bin/bash", "--rcfile", "/tmp/bashrc" ]
