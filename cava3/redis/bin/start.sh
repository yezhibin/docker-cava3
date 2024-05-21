#!/bin/bash

#export LD_LIBRARY_PATH=/usr/local/Poco/lib/:/home/yezhibin/software/poco-poco-1.7.0-release/lib/Linux/i686/:/home/yezhibin/projects/CavaServerSys/bin/

#APP_LOG_DIR=./Log/run
#if [ ! -d $APP_LOG_DIR ];then
#    mkdir -p $APP_LOG_DIR
#fi

./redis-server ../conf/redis.conf > run.log 2>&1 &

