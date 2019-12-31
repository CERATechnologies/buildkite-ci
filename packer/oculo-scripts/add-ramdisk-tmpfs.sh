#!/usr/bin/env bash

set -euxo pipefail

echo 'none /var/lib/docker tmpfs size=8G' | sudo tee -a /etc/fstab >/dev/null
echo 'none /var/lib/buildkite-agent/builds tmpfs size=8G' | sudo tee -a /etc/fstab >/dev/null
