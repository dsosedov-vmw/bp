#!/usr/bin/env sh

docker build . \
    -f stacks/libicu/Dockerfile \
    -t tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-base:bionic \
    --no-cache \
    --target base

docker build . \
    -f stacks/libicu/Dockerfile \
    -t tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-run:bionic \
    --no-cache \
    --target run

docker build . \
    -f stacks/libicu/Dockerfile \
    -t tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-build:bionic \
    --no-cache \
    --target build

docker push tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-base:bionic
docker push tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-run:bionic
docker push tapacr.azurecr.io/test-dsosedov-1/stacks/libicu-build:bionic
