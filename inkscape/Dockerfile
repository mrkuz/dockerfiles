FROM mrkuz/ubuntu-desktop
COPY playbook.yaml /tmp/playbook.yaml
RUN ansible-playbook -i "localhost," /tmp/playbook.yaml
ENTRYPOINT [ "/usr/bin/inkscape" ]
