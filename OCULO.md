# Getting Started

1. `git clone`
1. `./scripts/buildkite init --` (and paste the result into your .bashrc / .zshrc and reload your shell)
1. `buildkite build`

## Useful commands

* `buildkite help new-ssh-key` - Used for rapidly provisioning SSH Deployment keys for CI builds

# Setting up a new region

## Regional Secret Bucket

You require a secrets bucket for each region you want to deploy in. This gets deployed to the shared services account only

*  Add the following configuration to buildkite-ci/sceptre/.buildkite/pipeline.yml for each desired region:

```yaml
- label: ":aws: Regional - <region>"
    plugins:
      - ecr#v1.2.0:
          login: true
          account_ids: "644358627301"
      - thedyrt/change-directory#v0.1.1:
          cd: ./sceptre
      - cultureamp/aws-assume-role#v0.1.0:
          role: "arn:aws:iam::644358627301:role/role-sts-oculo-continuous-integration"
      - docker-compose#v3.0.0:
          run: infrastructure_tools
          shell: false
          command: ["sh", "-c", "merge-cfn-templates --cfn_templates_directory /sceptre/templates/regional && \
            sceptre --var aws_region=<region> launch regional --yes"]

```

* Once done, run the [https://buildkite.com/oculo-1/aws-buildkite-regional] build to apply changes

