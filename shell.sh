#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo
echo "finding db container ..."
echo
DB_CONTAINER="$(docker-compose ps -q db)"
echo "found it:"
echo 
echo "  $DB_CONTAINER"

if [ $# -eq 0 ]; then
    COMMAND=bash
else
    COMMAND="$@"
fi

echo 
echo running:
echo
echo "  > $COMMAND"
echo

docker \
    exec \
    --interactive \
    --tty \
    --workdir /root \
    $DB_CONTAINER \
    $COMMAND
