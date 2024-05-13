#!/bin/sh

TZ=Asia/Shanghai

echo "${TZ}" > /etc/timezone
ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime
apt update
apt install -y tzdata

echo "change zone to ${TZ} ok."
