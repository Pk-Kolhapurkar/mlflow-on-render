#!/bin/bash
export BACKEND_STORE_URI=<Your PostgreSQL URL>   # Replace with your Render database URL
export ARTIFACT_STORE_URI=<Your S3/GCS URI>      # Replace with your S3/GCS bucket URI

# Start MLflow server
mlflow server \
    --backend-store-uri $BACKEND_STORE_URI \
    --default-artifact-root $ARTIFACT_STORE_URI \
    --host 0.0.0.0 \
    --port 5000

