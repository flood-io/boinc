FROM debian:stable-slim

ARG version="v7.5"

RUN useradd --system boinc && \
    mkdir -p /opt/boinc && \
    apt-get update -y && \
    apt-get install -y boinc-client && \
    chown -R boinc:boinc /opt/boinc && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt/lists/*

COPY --chown=boinc:boinc entrypoint.sh /opt/boinc

RUN chmod +x /opt/boinc/entrypoint.sh

ENV PROJECT_URL "http://boinc.bakerlab.org/rosetta/"
ENV ACCOUNT_KEY ""

USER boinc
WORKDIR /opt/boinc

ENTRYPOINT ["/opt/boinc/entrypoint.sh"]
