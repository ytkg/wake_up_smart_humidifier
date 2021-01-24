#!/bin/bash

set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

source "${SCRIPT_DIR}/.env"

power=$(
  curl -s https://api.switch-bot.com/v1.0/devices/${SWITCHBOT_DEVICE_ID}/status \
    -H "Authorization: ${SWITCHBOT_API_TOKEN}" \
    | jq .body.power -r
)

if [[ $power = off ]]; then
  curl -s -X POST https://api.switch-bot.com/v1.0/devices/${SWITCHBOT_DEVICE_ID}/commands \
    -H "Authorization: ${SWITCHBOT_API_TOKEN}" \
    -H 'Content-Type: application/json' \
    -d '{"command": "turnOn","parameter": "default","commandType": "command"}' \
    -o /dev/null
fi
