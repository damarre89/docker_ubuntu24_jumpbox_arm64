#!/bin/bash
# build and export image as tar file
docker buildx build --platform linux/arm64 -t ubuntu24-jumpbox:1.0-arm64 --load .
docker save -o ubuntu24-jumpbox-arm64.tar ubuntu24-jumpbox:1.0-arm64
