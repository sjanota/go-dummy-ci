#!/usr/bin/env bash

set -ex

function setup() {
  SRC_DIR=$1

  ## Lets make name of the project repo name
  pushd src >/dev/null
    NAME=$(git remote show origin -n | grep Fetch | awk '{print $NF}' | sed 's|.*://||' | sed 's/\.git//')
  popd >/dev/null

  ## Go sources needs to be under GOPATH
  PRJ_PATH=/usr/local/go/src/$NAME
  mkdir -p $(dirname $PRJ_PATH)
  ln -s `pwd`/src $PRJ_PATH >/dev/null

  echo $PRJ_PATH
}
