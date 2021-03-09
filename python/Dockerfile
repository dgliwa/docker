FROM dgliwa/base:20210216
LABEL maintainer="Python-Dockerfile@DerekGliwa.Name"
ENV PYTHON_IMAGE_BUILT_AFTER 20210216

RUN apt-get update

RUN apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-venv

RUN pip3 install \
    ipython

# Distribute
RUN apt-get install -y \
    python-distribute

RUN apt-get clean \
    ; \
    rm -rf /var/lib/apt/lists/*