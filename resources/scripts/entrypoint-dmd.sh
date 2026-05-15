#!/bin/sh
set -e

if [ $(ulimit -n) -gt 5120 ]; then
	ulimit -n 5120 || true
fi

if [ "${1#-}" != "$1" ]; then
	set -- dmd "$@"
fi

exec "$@"
