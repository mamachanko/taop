#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo 
echo restoring db ...
echo 

docker \
    exec \
    --workdir /root \
    --env PGUSER=postgres \
    $(docker ps --quiet --filter name=db) \
    make -C book/db
