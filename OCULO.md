# Getting Started

1. `git clone`
1. `./scripts/buildkite init --` (and paste the result into your .bashrc / .zshrc and reload your shell)
1. `buildkite build`

## Useful commands

* `buildkite help new-ssh-key` - Used for rapidly provisioning SSH Deployment keys for CI builds

# Setting up a new region

## Regional Secret Bucket

You require a secrets bucket for each region you want to deploy in. This gets deployed to the shared services account only

For each region:

* Duplicate a region entry from [sceptre/.buildkite/pipeline.yml](sceptre/.buildkite/pipeline.yml) and change
  * the label
  * the `aws_region=` argument in the command 
* Once done, run the https://buildkite.com/oculo-1/aws-buildkite-regional \[↗\] build to apply changes

# Updating Buildkite plugins

```bash 
git submodule update --init --recursive 
git submodule status
```
