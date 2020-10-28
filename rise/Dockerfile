FROM jupyter/minimal-notebook
LABEL maintainer="Rise-Dockerfile@DerekGliwa.Name"
ENV IMAGE_BUILT_AFTER 20190829-1700

# RISE (Reveal.js - Jupyter/IPython Slideshow Extension)
RUN wget https://github.com/pdonorio/RISE/archive/master.tar.gz \
    && tar xvzf *.gz \
    && cd RISE-master \
    && python3 setup.py install

RUN pip install --upgrade pip

CMD jupyter notebook
