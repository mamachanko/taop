#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

docker-compose \
    run \
    --volume $(pwd):/taop \
    --workdir /taop \
    py \
    python book/sql/02-intro/02-usecase/04_02_factbook-month.py 2017 2
