#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

./psql.sh \
    --file book/sql/02-intro/02-usecase/04_01.sql
