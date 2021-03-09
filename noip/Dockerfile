FROM alpine:latest
LABEL maintainer="Noip-Dockerfile@DerekGliwa.Name"
ENV NOIP_IMAGE_BUILT_AFTER 20210224
ARG NOIP_USERNAME
ARG NOIP_PASSWORD

RUN test -n "$NOIP_USERNAME" || (echo "NOIP_USERNAME not set" && false)
RUN test -n "$NOIP_PASSWORD" || (echo "NOIP_PASSWORD not set" && false)

RUN apk add --no-cache make gcc musl-dev bash

RUN wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz \
    && tar xzf noip-duc-linux.tar.gz \
    && cd noip-2.1.9-1 \
    && make \
    && cp ./noip2 /usr/local/bin/noip2 \
    && mkdir /usr/local/etc \
    && noip2 -C -u ${NOIP_USERNAME} -p ${NOIP_PASSWORD} -U 5 \
    && rm -rf /noip2-2.1.9-1 \
    && rm /noip-duc-linux.tar.gz

RUN rm -rf /var/cache/apk/*


ENTRYPOINT noip2; while pgrep noip > -; do echo "Process is running"; sleep 5; done; echo "No-ip has died"; exit 1
