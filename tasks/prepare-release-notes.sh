#!/usr/bin/env bash

set -ex

VERSION=$(cat version/version)

pushd release-notes >/dev/null
  echo $VERSION > tag
  echo "Release $VERSION" > name
  echo "Release $VERSION" > body
