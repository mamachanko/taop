#!/usr/bin/env bash

set -euxo pipefail

cd "$(dirname "$0")"

./psql.sh \
    --file book/sql/02-intro/02-usecase/03_01_factbook.sql
