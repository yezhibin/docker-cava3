#!/bin/sh

TZ=Asia/Shanghai

echo "${TZ}" > /etc/timezone
ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime
apt-get update
apt-get install -y tzdata

echo "change zone to ${TZ} ok."
