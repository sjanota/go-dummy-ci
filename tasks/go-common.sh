#!/usr/bin/env bash

set -ex

function setup() {
  SRC_DIR=$1

  ## Lets make name of the project repo name
  pushd src >/dev/null
    NAME=$(git remote show origin -n | grep Fetch | awk '{print $NF}' |  awk -F/ '{print $NF}' | sed 's/.git//')
  popd >/dev/null

  ## Go sources needs to be under GOPATH
  export GOPATH=~/go
  mkdir -p ~/go/src
  ln -s `pwd`/src ~/go/src/$NAME >/dev/null

  echo ~/go/src/$NAME
}
