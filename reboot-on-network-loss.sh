#!/bin/bash

URL='https://www.example.org'

RETURN_CODE=$(curl -LI "${URL}" -o /dev/null -w '%{http_code}\n' -s)

if [ "${RETURN_CODE}" == "200" ]; then
    exit 0
fi

echo "Rebooting"
reboot