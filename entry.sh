#!/bin/sh

if [ "${TZ}x" = "x" ]; then
	export TZ=UTC
fi
export TZ="${TZ}"
uv $@
