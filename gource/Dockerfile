FROM dgliwa/base:20201028
LABEL maintainer="gource-Dockerfile@DerekGliwa.Name"
ENV GOURCE_IMAGE_BUILT_AFTER 20201028

# Required Libraries
RUN apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libpcre3-dev \
    libfreetype6-dev \
    libglew-dev \
    libglm-dev \
    libboost-filesystem-dev \
    libpng-dev

ENV GOURCE_VERSION=0.49
ENV GOURCE=gource-${GOURCE_VERSION}

RUN export BASE_URL=https://github.com/acaudwell/Gource/releases/download/ \
    && export TAR=${GOURCE}.tar.gz \
    && export URL=$BASE_URL/${GOURCE}/$TAR \
    && wget -q -O - $URL | tar -xz \
    && cd /${GOURCE} \
    && ./configure \
    && make \
    && make install

WORKDIR /local

ENTRYPOINT /usr/local/bin/gource
