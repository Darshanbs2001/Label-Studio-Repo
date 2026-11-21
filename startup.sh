#!/bin/bash

set -e

echo "Starting Label Studio..."

export LABEL_STUDIO_DISABLE_SIGNUP=true

export LABEL_STUDIO_HOST=0.0.0.0

export LABEL_STUDIO_PORT=${DATABRICKS_APP_PORT}

export LABEL_STUDIO_BASE_DATA_DIR=/tmp/label-studio

mkdir -p /tmp/label-studio

label-studio start \
    --host 0.0.0.0 \
    --port ${DATABRICKS_APP_PORT} \
    --no-browser