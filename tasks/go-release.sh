#!/usr/bin/env bash

set -ex

. ci-src/tasks/go-common.sh

WD=$(setup src)

pushd $WD >/dev/null
  go test
  go build
popd >/dev/null

PRJ_NAME=$(basename $WD)
mv $WD/$PRJ_NAME release/
