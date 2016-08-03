FROM gjigsaw/base:20160802-1700
MAINTAINER Now-Dockerfile@JasonGreen.Name
ENV NOW_IMAGE_BUILT_AFTER 20160803-1000

ENV PACKER_VERSION 0.10.1
ENV TERRAFORM_VERSION 0.7.0

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

VOLUME /data
WORKDIR /data
