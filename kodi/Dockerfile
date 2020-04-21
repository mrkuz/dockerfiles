FROM mrkuz/ubuntu-base-x11d
COPY playbook.yaml /tmp/playbook.yaml
RUN ansible-playbook -i "localhost," /tmp/playbook.yaml
CMD [ "/usr/bin/kodi" ]
