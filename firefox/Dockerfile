FROM gjigsaw/base:20190826-1700
MAINTAINER firefox-Dockerfile@JasonGreen.Name
ENV IMAGE_BUILT_AFTER 20190826-1700

RUN apt-get install -y \
    alsa-utils \
    apulse \
    dbus-x11 \
    firefox

ENTRYPOINT ["/usr/bin/apulse", "/usr/bin/firefox"]
