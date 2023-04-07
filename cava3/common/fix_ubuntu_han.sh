#!/bin/sh

apt-get install -y language-pack-zh-hans
apt-get install -y fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming

apt install -y locales

echo "export LANG=zh_CN.UTF-8" >> ~/.bashrc
echo "export LANGUAGE=zh_CN:zh:en_US:en" >> ~/.bashrc

echo "en_US.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.GBK GBK" >> /var/lib/locales/supported.d/local
echo "zh_CN GB2312" >> /var/lib/locales/supported.d/local

# https://blog.csdn.net/HELLOWORLD2424/article/details/128442204

locale-gen

echo "fix languag support zh cn utf-8 ok."
