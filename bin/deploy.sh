#!/usr/bin/env bash
# exit on error
set -o errexit

curl -s "https://api.render.com/deploy/srv-c754ujh0gd076j2qhbqg?key=$RENDER_WEB_SERVICE_KEY" -o file.txt >/dev/null 2>&1
curl -s "https://api.render.com/deploy/srv-c7556l10gd076j2qhgsg?key=$RENDER_WORKER_SERVICE_KEY" -o file.txt >/dev/null 2>&1
