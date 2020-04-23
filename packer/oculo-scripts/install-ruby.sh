#!/usr/bin/env bash

set -euxo pipefail

sudo amazon-linux-extras install ruby2.6
sudo gem install bundler aws-sdk-kms aws-sdk-ecs
