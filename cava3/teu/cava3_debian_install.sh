#!/bin/sh
cd /usr/local/bin

mode_branch=debian10_arm_64
username="zoudaohoutian"
password="199309024710yzb"
url="gitee.com/zoudaohoutian/CAVA3.git"
cmd="git clone https://${username}:${password}@${url} ./CAVA3"

time=$(date "+%Y-%m-%d %H:%M:%S")
echo "[${time}][info] start install cava3. url is: ${url}"

${cmd}

ln -s /usr/local/bin/CAVA3/CAVA_SPACE3/src/cava
ln -s ./CAVA3/Python37/lib/python3.7/site-packages/robotframework-3.0.3-py3.7.egg/EGG-INFO/scripts/pybot
ln -s ./CAVA3/Python37/lib/python3.7/site-packages/pip/pip3
ln -s ./CAVA3/Python37/bin/python3.7 python3
ln -s ./CAVA3/Python37/lib/python3.7/site-packages/robotframework-3.0.3-py3.7.egg/EGG-INFO/scripts/rebot
ln -s ./CAVA3/Python37/bin/django-admin

cd ./CAVA3
git fetch "origin"
git branch -va
git stash
git checkout -b ${mode_branch} remotes/origin/${mode_branch}
git branch
git pull

cd ..
chmod 755 -R CAVA3

time=$(date "+%Y-%m-%d %H:%M:%S")
echo "[${time}][info] download files success."
time=$(date "+%Y-%m-%d %H:%M:%S")
echo "export USER=root" >> ~/.bashrc
echo "export PATH=/usr/local/bin:/usr/local/lib:/usr/local/bin/CAVA3/Python37/bin:\$PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/bin/CAVA3/Python37/lib:/usr/local/bin/CAVA3/Python37/bin:\$LD_LIBRARY_PATH" >> ~/.bashrc
echo "source ~/.bashrc" >> /etc/profile

sed -i "s/9000/9010/g" /usr/local/bin/CAVA3/CAVA_SPACE3/src/tools/config.xml

echo "[${time}][info] ${mode_branch} install cava3 success."
