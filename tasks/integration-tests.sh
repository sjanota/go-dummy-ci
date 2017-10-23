#!/usr/bin/env bash

export SERVER=server-pre-release/go-dummy-server
export CLIENT=client-pre-release/go-dummy-client

chmod +x $SERVER
chmod +x $CLIENT

integration-src/test.sh
