#!/usr/bin/env bash
set -euo pipefail

PUID=${PUID:-911}
PGID=${PGID:-911}
echo "Starting with UID : $PUID"
echo "Starting with GID : $PGID"

groupmod -o -g "$PGID" seedstore
useradd --uid $PUID --gid $PGID --shell /bin/bash --non-unique --create-home seedstore
chown -R $PUID:$PGID /home/seedstore
