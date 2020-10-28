FROM dgliwa/base:20201028
LABEL maintainer="Python2-Dockerfile@DerekGliwa.Name"
ENV PYTHON2_IMAGE_BUILT_AFTER 20201028

RUN apt-get install -y \
    python \
    python-dev \
    python-distribute \
    python-pip

RUN pip install \
    ipython
#    pdb
