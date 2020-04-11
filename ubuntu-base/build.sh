#!/bin/bash

if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 TAG"
    exit 1
fi

# docker build --no-cache \
docker build \
    --build-arg USER="$(id -un)" \
    --build-arg USER_ID="$(id -u)" \
    --build-arg GROUP="$(id -gn)" \
    --build-arg GROUP_ID="$(id -g)" \
    -t "$1" \
    .
