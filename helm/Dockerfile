FROM mrkuz/ubuntu-base-cli
COPY playbook.yaml /tmp/playbook.yaml
RUN ansible-playbook -i "localhost," /tmp/playbook.yaml
ENTRYPOINT [ "/usr/local/bin/helm" ]
