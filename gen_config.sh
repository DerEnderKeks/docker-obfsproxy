#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Pass all arguments that you want to get passed to obfsproxy.
    "

    docker run --rm derenderkeks/obfsproxy

    exit 0
fi

cat <<EOF > docker-compose.yml
version: "3"
services:
  obfsproxy:
    image: derenderkeks/obfsproxy
    container_name: obfsproxy
    ports:
     - "8080:8080"
    restart: always
    command: "obfsproxy $@"
EOF
