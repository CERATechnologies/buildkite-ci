#!/usr/bin/env bash

set -euxo pipefail

sudo mkdir -p /var/lib/buildkite-agent/builds
sudo chown buildkite-agent:buildkite-agent /var/lib/buildkite-agent/builds
echo 'none /var/lib/buildkite-agent/builds tmpfs size=12G' | sudo tee -a /etc/fstab >/dev/null
echo 'none /var/lib/docker tmpfs size=12G' | sudo tee -a /etc/fstab >/dev/null
