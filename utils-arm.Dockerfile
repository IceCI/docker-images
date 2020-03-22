FROM arm32v7/debian:10
RUN apt-get update && apt-get install -y apt-transport-https curl gnupg && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >  /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y git kubectl=1.17.4-00 && \
    apt-get autoclean
