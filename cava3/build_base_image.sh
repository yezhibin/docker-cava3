#!/bin/sh


version=1.0.0
if [ -n "$1" ]; then
    version=$1
fi


echo "start build cava3_base image: ${version}"

cd base-image
docker build -t cava3_base:${version} .
cd -

echo "build cava3_base image ok"

