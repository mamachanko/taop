#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo 
echo Creating TAOP playground ...
echo 

docker-compose \
    up \
    --build \
    --detach

sleep 1
./restore.sh

echo
echo The TAOP playground is ready ⛹🏼‍♀️
echo