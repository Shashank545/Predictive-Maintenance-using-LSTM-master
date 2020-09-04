#!/bin/bash

# Exit when any command fails
set -euo pipefail

# Build the ingestion
docker -v build -t nesssimplifai.azurecr.io/predictive_lstm  -f Dockerfile .
docker push nesssimplifai.azurecr.io/predictive_lstm

