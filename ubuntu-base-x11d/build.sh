#!/bin/bash

if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 TAG"
    exit 1
fi

NVIDIA_VERSION="$(nvidia-smi | sed -n 's/.*Driver Version: //;T;s/\..*//;p')"
docker build \
    --build-arg NVIDIA_VERSION="$NVIDIA_VERSION" \
    -t "$1" \
    .
