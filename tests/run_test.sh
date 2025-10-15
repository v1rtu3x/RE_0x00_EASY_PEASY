#!/bin/bash

set -euo pipefail

BINARY=./easy_peasy

if [ ! -x "$BINARY" ]; then
    echo "Binary not found. Build First; make release"
    exit 1
fi

echo "Test Wrong Password"
printf "Thisisawrongpassword" | $BINARY

echo "Test Correct Password"
printf "LemonSqueezy" | $BINARY
