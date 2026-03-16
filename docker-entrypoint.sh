#!/bin/sh
set -eu

if [ "${1#-}" != "$1" ]; then
  set -- ipfs "$@"
fi

if [ "$1" = "ipfs" ] && [ "${2:-}" = "daemon" ]; then
  mkdir -p "${IPFS_PATH}"
  if [ ! -f "${IPFS_PATH}/config" ]; then
    ipfs init --profile=server
  fi
  ipfs config Addresses.API "/ip4/0.0.0.0/tcp/${API_PORT}"
  ipfs config Addresses.Gateway "/ip4/0.0.0.0/tcp/${GATEWAY_PORT}"
fi

exec "$@"
