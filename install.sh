#!/bin/bash
set -euo pipefail

sudo apt install npm libgconf2-dev

npm run build-linux

killall -q mob-timer || true
sudo cp -Trv dist/mob-timer-linux-x64 /opt/mob-timer


