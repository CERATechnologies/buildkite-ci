#!/bin/bash

set -eo pipefail

echo "First, we need some details from you:"
echo

read -p "Buildkite project slug for your app: " slug
CERTIFICATE_BUCKET="oculo-services-buildkite-secrets/${slug}/certs"

read -p "Application Name: (e.g. doc-renderer) " app_name

read -p "Application Environment (e.g. uk-production) " app_env

read -p "ECS cluster you are deploying to (e.g.) uk-prod01: " ecs_cluster

DOMAIN="${app_name}-${app_env}.${ecs_cluster}-private-service-discovery"

minica -ca-cert /root-certificate/minica.pem -ca-key /root-certificate/minica-key.pem -domains "${DOMAIN}"
