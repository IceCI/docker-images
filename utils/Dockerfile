ARG DEBIAN_VER=10
FROM debian:${DEBIAN_VER}

ARG BIN_ARCH=amd64
ARG MANIFEST_TOOL_VER=v1.0.2

RUN apt-get update && apt-get install -y wget apt-transport-https curl gnupg && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >  /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y git kubectl=1.17.4-00 && \
    wget https://github.com/estesp/manifest-tool/releases/download/${MANIFEST_TOOL_VER}/manifest-tool-linux-${BIN_ARCH} \
        -O /usr/local/bin/manifest-tool && \
    chmod +x /usr/local/bin/manifest-tool && \
    apt-get autoclean
