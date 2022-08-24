#!/usr/bin/env sh

pack buildpack package tapacr.azurecr.io/test-dsosedov-1/buildpacks/sqlpackage-buildpack:0.0.2 \
    --config ./buildpacks/sqlpackage-buildpack/package.toml \
    --publish
