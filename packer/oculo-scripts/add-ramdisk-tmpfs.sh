#!/usr/bin/env bash

set -euxo pipefail

echo 'none /var/lib/docker tmpfs size=10G' | sudo tee -a /etc/fstab > /dev/null
