FROM gjigsaw/base:20190508-1700
MAINTAINER Python-Dockerfile@JasonGreen.Name
ENV PYTHON_IMAGE_BUILT_AFTER 20190508-1700

RUN apt-get install -y \
    python3 \
    python3-dev \
    python3-pip

RUN pip3 install \
    ipython

# Distribute
RUN apt-get install -y \
    python-distribute
