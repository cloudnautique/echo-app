#!/bin/bash

if [ ! -z "${ACORN_HUB_TOKEN}" ]; then
  acorn login -p ${ACORN_HUB_TOKEN}
else
  acorn login acorn.io
fi

push "/workspaces/echo-app"

pip3 install --user -r requirements.txt
acorn run -i .