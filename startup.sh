#!/bin/bash

set -e

export LABEL_STUDIO_PORT="${DATABRICKS_APP_PORT}"
export LABEL_STUDIO_HOST="${DATABRICKS_APP_URL}"
export LABEL_STUDIO_BASE_DATA_DIR="/tmp/label-studio"

mkdir -p "${LABEL_STUDIO_BASE_DATA_DIR}"

label-studio start \
    --host 0.0.0.0 \
    --port "${DATABRICKS_APP_PORT}" \
    --no-browser