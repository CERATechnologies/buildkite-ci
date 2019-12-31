#!/usr/bin/env bash

set -euxo pipefail

echo 'none /var/lib/docker tmpfs size=12G' | sudo tee -a /etc/fstab >/dev/null
echo 'none /var/lib/buildkite-agent/builds tmpfs size=12G' | sudo tee -a /etc/fstab >/dev/null
echo 'export DISK_MIN_AVAILABLE=976563' | sudo tee -a /var/lib/buildkite-agent/.bashrc >/dev/null
