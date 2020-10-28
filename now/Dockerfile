FROM dgliwa/base:20201028
LABEL maintainer="Now-Dockerfile@DerekGliwa.NOW_IMAGE_BUILT_AFTER"
ENV NOW_IMAGE_BUILT_AFTER 20201028

ENV DC_VERSION=1.27.4

RUN apt-get install -y \
     apt-transport-https \
     ca-certificates \
     software-properties-common


# Install Packer and Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
     && add-apt-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
     && apt-get update && apt-get install -y \
     packer terraform


# Setup Docker Repository
RUN apt-get remove docker docker-engine docker.io containerd runc || true\
     && echo "Adding Docker’s official GPG key:" \
     && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
     && apt-key fingerprint 0EBFCD88 \
     && add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable" \
     && apt-get update

# Install Docker CE
RUN apt-get install -y \
     docker-ce docker-ce-cli containerd.io


# Install Docker-Compose
RUN export DC_URL_PREFIX="https://github.com/docker/compose/releases/download" \
     && export DC_URL_SUFFIX="docker-compose-Linux-x86_64" \
     && export DC_URL=${DC_URL_PREFIX}/${DC_VERSION}/${DC_URL_SUFFIX} \
     && curl -L "${DC_URL}" -o /usr/local/bin/docker-compose \
     && chmod +x /usr/local/bin/docker-compose

VOLUME /data
WORKDIR /data
