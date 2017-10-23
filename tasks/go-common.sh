#!/usr/bin/env bash

set -ex

function setup() {
  SRC_DIR=$1

  ## Lets make name of the project repo name
  pushd src >/dev/null
    NAME=$(git remote show origin -n | grep Fetch | awk '{print $NF}' | sed 's|.*://||' | sed 's/\.git//')
  popd >/dev/null

  ## Go sources needs to be under GOPATH
  mkdir -p ~/go/src
  PRJ_PATH=/usr/local/go/src/$NAME
  ln -s `pwd`/src $PRJ_PATH >/dev/null

  echo $PRJ_PATH
}
