#!/bin/bash

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

firebase deploy \
    -m "${GITHUB_REF} (${GITHUB_SHA})" \
    --only functions
