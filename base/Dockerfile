FROM ubuntu:latest
LABEL maintainer="Base-Dockerfile@DerekGliwa.Name"
ENV BASE_IMAGE_BUILT_AFTER 20210210

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="America/Los_Angeles"

# Update & Upgrade
RUN apt-get update -y; \
    apt-get upgrade -y; \
    apt-get clean

# Code manipulation
RUN apt-get install -y \
    gcc \
    git \
    make

# Editors
RUN apt-get install -y \
    vim

# File transport
RUN apt-get install -y \
    curl \
    wget \
    rsync

# Networking
RUN apt-get install -y \
    host \
    net-tools \
    tcpdump \
    telnet

# Other
RUN apt-get install -y \
    apt-xapian-index \
    build-essential \
    libxml2-dev \
    strace \
    unzip

# Locale
RUN apt-get install -y locales \
    && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
