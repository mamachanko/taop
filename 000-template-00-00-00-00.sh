#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

./psql.sh --command '\conninfo'
