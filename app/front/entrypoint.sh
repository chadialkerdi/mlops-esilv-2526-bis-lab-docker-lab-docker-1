#!/bin/sh

set -eu

: "${WS_BACK_URL:=http://host.docker.internal:8080}"

echo "Will start Nginx with the following configuration:"
echo "  - WS_BACK_URL : $WS_BACK_URL"

sed -i "s@TR_WS_BACK_URL@$WS_BACK_URL@g" /usr/share/nginx/html/index.html

exec /docker-entrypoint.sh nginx -g "daemon off;"