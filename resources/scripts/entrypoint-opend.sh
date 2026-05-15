#!/bin/sh
set -e

if [ "$(ulimit -n)" -gt 5120 ]; then
	ulimit -n 5120 || true
fi

# Emscripten
pop_d="cd $(pwd)"
cd /opt/emsdk/
export EMSDK_QUIET=1
. ./emsdk_env.sh
unset EMSDK_QUIET
$pop_d
unset pop_d

if [ "${1#-}" != "$1" ]; then
	set -- opend "$@"
fi

exec "$@"
