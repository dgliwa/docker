Pre-Build
=========

```shell
# Export your Steam credentials
export STEAM_USERNAME=...
export STEAM_PASSWORD=...
```

Build
=====
```shell
# Build your docker image
docker build docker  build \
    --build-arg STEAM_USERNAME \
    --build-arg STEAM_PASSWORD \
    -t your_image_name
```
WARNING: This image contains your Steam credentials - so don't _push_ it!

Configure
=========
```shell
# Grab configuration file
mkdir -p data
docker run --rm -it \
    -v ~/steam_data:/data \
    cp $STEAM_APP_DIR/configfile.xml /data/configfile.xml
```
WARNING: This image contains your Steam credentials - so don't _push_ it!

Run
===
docker run \
    -it \
    --rm \
    -v ~/steam_data:/data \
    -p 26900-26902:26900-26902 \
    -p 8080:8080 \
    -p 8081:8081 \
    -p 8082:8082 \
    your_image_name

tail -f /app/7DaysToDieServer_Data/output_log__*

GamePref.AdminFileName = serveradmin.xml
./root/.local/share/7DaysToDie/Saves/serveradmin.xml

Telnet: 8081
WebConsole: 8080
?: 8082
