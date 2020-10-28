FROM dgliwa/base:20201028
LABEL maintainer="firefox-Dockerfile@DerekGliwa.Name"
ENV IMAGE_BUILT_AFTER 20201028

RUN apt-get install -y \
    alsa-utils \
    apulse \
    dbus-x11 \
    firefox

ENTRYPOINT ["/usr/bin/apulse", "/usr/bin/firefox"]
