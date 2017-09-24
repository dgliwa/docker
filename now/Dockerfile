FROM gjigsaw/base:20170924-1200
MAINTAINER Now-Dockerfile@JasonGreen.Name
ENV NOW_IMAGE_BUILT_AFTER 20170924-1200

ENV PACKER_VERSION=1.1.0 \
    TERRAFORM_VERSION=0.10.6 \
    DC_VERSION=1.16.1
    
# Install Packer
RUN export BASE_URL=https://releases.hashicorp.com/packer \
 && export ZIP=packer_${PACKER_VERSION}_linux_amd64.zip \
 && export URL=$BASE_URL/$PACKER_VERSION/$ZIP \
 && wget -q -O $ZIP $URL \
 && unzip $ZIP -d /usr/local/bin/ \
 && rm $ZIP

# Install Terraform
RUN export BASE_URL=https://releases.hashicorp.com/terraform \
 && export ZIP=terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
 && export URL=$BASE_URL/$TERRAFORM_VERSION/$ZIP \
 && wget -q -O $ZIP $URL \
 && unzip $ZIP -d /usr/local/bin/ \
 && rm $ZIP

# Setup Docker Repository
RUN echo "Installing packages to allow apt to use a repository over HTTPS:" \
 && sudo apt-get install -y \
      apt-transport-https \
      ca-certificates \
      software-properties-common \
 && echo "Adding Docker’s official GPG key:" \
 && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
 && sudo apt-key fingerprint 0EBFCD88 \
 && sudo add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable" \
 && sudo apt-get update

# Install Docker CE
RUN sudo apt-get install -y \
      docker-ce

# Install Docker-Compose
RUN export DC_URL_PREFIX="https://github.com/docker/compose/releases/download" \
 && export DC_URL_SUFFIX="docker-compose-Linux-x86_64" \
 && export DC_URL=${DC_URL_PREFIX}/${DC_VERSION}/${DC_URL_SUFFIX} \
 && sudo curl -L "${DC_URL}" -o /usr/local/bin/docker-compose \
 && sudo chmod +x /usr/local/bin/docker-compose

VOLUME /data
WORKDIR /data
