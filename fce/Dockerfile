FROM gjigsaw/base:20161020-1800
MAINTAINER FCE-Dockerfile@JasonGreen.Name
ENV FCE_IMAGE_BUILT_AFTER 20161021-1800

# install SteamCD dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    lib32gcc1

# install SteamCD
ARG STEAMCD_URL="http://media.steampowered.com/installer/steamcmd_linux.tar.gz"
ARG STEAMCD_DIR="/steamcd"
RUN mkdir -p ${STEAMCD_DIR} \
 && curl -s ${STEAMCD_URL} | tar -vxzC ${STEAMCD_DIR}

# define Steam command
ENV steam="${STEAMCD_DIR}/steamcmd.sh

# set FCE-specific arguments
ARG STEAM_APP_ID=443600
ARG STEAM_APP_UPDATE_ARGS="-beta linux_server_headless"

# create and enter application directory
ARG STEAM_APP_DIR=/fce
RUN echo mkdir -p ${STEAM_APP_DIR}
WORKDIR ${STEAM_APP_DIR}

# install application (anonymously)
RUN ${steam} \
   +login anonymous \
   +force_install_dir ${STEAM_APP_DIR} \
   +app_update ${STEAM_APP_ID} ${STEAM_APP_UPDATE_ARGS} \
   +quit

CMD /fce/FC_Linux_Universal.x86_64 -batchmode