FROM debian:stretch

# install command-not-found package which bash.bashrc checks for
RUN apt update && apt install -y \
    command-not-found \
    && rm -rf /var/lib/apt/lists/* \
    && update-command-not-found

COPY bash.bashrc /etc/

ENTRYPOINT ["bash"]
