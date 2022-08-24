#!/usr/bin/env sh

set -u
: ${CR_NAME:?CR_NAME is not set}

set -u
: ${CR_USER:?CR_USER is not set}

set -u
: ${CR_PASS:?CR_PASS is not set}

mkdir -p ~/.docker

echo "{\"auths\":{\"${CR_NAME}\":{\"username\":\"${CR_USER}\",\"password\":\"${CR_PASS}\"}}}" \
    > ~/.docker/config.json
