#!/bin/bash

set -e

echo "Starting Label Studio..."

export CSRF_TRUSTED_ORIGINS="https://label-studio-7474659221881655.aws.databricksapps.com"

export LABEL_STUDIO_HOST="https://label-studio-7474659221881655.aws.databricksapps.com"

export LABEL_STUDIO_PORT="${DATABRICKS_APP_PORT}"

export LABEL_STUDIO_BASE_DATA_DIR="/tmp/label-studio"

mkdir -p "${LABEL_STUDIO_BASE_DATA_DIR}"

echo "CSRF Trusted Origins: ${CSRF_TRUSTED_ORIGINS}"
echo "Label Studio Host: ${LABEL_STUDIO_HOST}"
echo "Port: ${LABEL_STUDIO_PORT}"

label-studio start \
    --host 0.0.0.0 \
    --port "${DATABRICKS_APP_PORT}" \
    --no-browser