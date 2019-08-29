FROM gjigsaw/base:20190829-1700
MAINTAINER Python3-Dockerfile@JasonGreen.Name
ENV IMAGE_BUILT_AFTER 20190829-1700

# !! Currently Blocked by https://bugs.python.org/issue37577 !!

RUN echo "deb http://cz.archive.ubuntu.com/ubuntu eoan main universe" >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y \
      python3.8 \
      python3.8-dev \
      python3-pip
      
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 6 \
 && update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 8

RUN pip3 install \
    ipython

RUN apt-get install -y \
    python-distribute

WORKDIR /local

CMD "ipython"
