#!/bin/bash

aws s3 sync s3://oculo-services-buildkite-secrets/root-mini-ca/ /certificates/
