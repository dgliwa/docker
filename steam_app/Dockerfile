FROM gjigsaw/base:20160616-1000
MAINTAINER SteamApp-Dockerfile@JasonGreen.Name

ENV STEAM_APP_IMAGE_BUILT_AFTER 20160706-2000

# update and upgrade
RUN apt-get update -y; \
    apt-get upgrade -y; \
    apt-get clean

# install SteamCD dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    lib32gcc1
#    apt-utils \
#    ca-certificates \
#    net-tools \
#    lib32stdc++6 \
#    lib32z1 \
#    lib32z1-dev \

# install SteamCD
ARG STEAMCD_URL="http://media.steampowered.com/installer/steamcmd_linux.tar.gz"
ARG STEAMCD_DIR="/steamcd"
RUN mkdir -p ${STEAMCD_DIR} \
 && curl -s ${STEAMCD_URL} | tar -vxzC ${STEAMCD_DIR}

# define Steam command
ENV steam="${STEAMCD_DIR}/steamcmd.sh

ARG STEAM_USERNAME
ARG STEAM_PASSWORD
ARG STEAM_APP_ID=294420
ARG STEAM_APP_DIR=/app

RUN mkdir -p ${STEAM_APP_DIR} \
 && ${steam} \
   +login ${STEAM_USERNAME} ${STEAM_PASSWORD} \
   +force_install_dir ${STEAM_APP_DIR} \
   +app_update ${STEAM_APP_ID} \
   +quit

# install Alloc's server fixes
ARG ALLOC_SERVER_FIXES_URL="http://illy.bz/fi/7dtd/server_fixes.tar.gz"
RUN curl -s ${ALLOC_SERVER_FIXES_URL} | tar -vxzC ${STEAM_APP_DIR}

ENV FETCH_CONFIG_COMMAND="cp $STEAM_APP_DIR/serverconfig.xml /data/"
RUN echo $FETCH_CONFIG_COMMAND
