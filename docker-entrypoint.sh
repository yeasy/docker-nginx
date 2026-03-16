#!/bin/bash

set -euo pipefail
backend="${BACKEND:-localhost}"
port="${PORT:-80}"
username="${USERNAME:-user}"
password="${PASSWORD:-pass}"

htpasswd -c -b /etc/nginx/.htpasswd "$username" "$password"

sed "s#BACKEND#${backend}#g; s#PORT#${port}#g" /etc/nginx/nginx.default.conf > /etc/nginx/nginx.conf

exec nginx -c /etc/nginx/nginx.conf
