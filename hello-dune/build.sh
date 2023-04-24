#!/bin/bash
set -euo pipefail
cd `dirname $0`
echo "Building target with Dune..."
set -x
dune build hello.exe
exit 0
