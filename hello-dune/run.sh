#!/bin/bash
set -euo pipefail
cd `dirname $0`
echo "Running target with Dune..."
set -x
dune exec ./hello.exe
exit 0
