#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

./shell.sh \
    psql \
        --username taop \
        --dbname taop \
        "$@"
