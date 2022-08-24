#!/usr/bin/env sh

pack builder create tapacr.azurecr.io/test-dsosedov-1/builders/sqlpackage-builder:bionic \
    --config ./builders/sqlpackage-builder/builder.toml \
    --publish
