# TODO: once working again, upgrade to latest version (now 1.11.1)
FROM nginx:1.9.14
MAINTAINER Proxy-Dockerfile@JasonGreen.Name

ENV HW_PROXY_IMAGE_BUILT_AFTER 20160803-0800

# Update & Upgrade
RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get clean

RUN apt-get install unzip

#ENV ZIP_URL=http://example.com/static.zip

#ADD $ZIP_URL /static.zip
#RUN unzip /static.zip -d /usr/share/nginx/html/
