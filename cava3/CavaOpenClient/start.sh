#!/bin/bash

appName=CavaOpenClient

kill -9 `pidof ${appName}`

APP_LOG_DIR=./log/run
if [ ! -d $APP_LOG_DIR ];then
    mkdir -p $APP_LOG_DIR
fi


./${appName} > $APP_LOG_DIR/run.log 2>&1 &

echo "${appName} start succeed."
