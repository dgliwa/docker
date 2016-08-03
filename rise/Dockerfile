FROM jupyter/notebook
MAINTAINER Rise-Dockerfile@JasonGreen.Name

# Update Base Install.
RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get clean

# Install wget
RUN apt-get install -y \
    wget

# RISE (Reveal.js - Jupyter/IPython Slideshow Extension)
RUN wget https://github.com/pdonorio/RISE/archive/master.tar.gz \
 && tar xvzf *.gz \
 && cd RISE-master \
 && python3 setup.py install

RUN pip install --upgrade pip

CMD jupyter notebook

