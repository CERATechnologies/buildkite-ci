#!/bin/bash

set -eo pipefail

: "${1:?"Need to pass in the Buildkite pipeline slug"}"
SLUG=$1
CERTIFICATE_BUCKET="oculo-services-buildkite-secrets/${SLUG}/certs"
