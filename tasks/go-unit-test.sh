#!/usr/bin/env bash

set -ex

. ci-src/tasks/go-common.sh

WD=$(setup src)

pushd $WD
  go test
popd
