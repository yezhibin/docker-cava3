FROM ubuntu:22.04

WORKDIR /opt
COPY common/*.sh /opt/
RUN sh change2bash.sh
RUN sh changesrc.sh
RUN sh changezone.sh
RUN sh fix_ubuntu_han.sh \
    && apt-get install -y --no-install-recommends ca-certificates curl

