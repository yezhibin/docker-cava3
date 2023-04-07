#!/bin/bash

app=cava_smu

kill -9 `pidof $app`

APP_LOG_DIR=./log
if [ ! -d $APP_LOG_DIR ];then
    mkdir -p $APP_LOG_DIR
fi

./$app > $APP_LOG_DIR/run.log 2>&1 &

pidof $app > server.pid
echo "$app start succeed."
