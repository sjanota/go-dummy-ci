#!/usr/bin/env bash

set -ex

. ci-src/tasks/go-common.sh

WD=$(setup src)

pushd $WD >/dev/null
  go test
popd >/dev/null
