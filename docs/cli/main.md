# Main CLI

Top-level command reference.

## Command

```bash
mb-aws-helper --help
```

## Help output

```text
usage: mb-aws-helper [-h] [--region REGION] [--verbose] [--debug] [-V]
                     [--examples]
                     {env,asgs,instances,summary,support,ssm,deploy-node,rails-worker-shell} ...

AWS helper for Artifactory and GitLab operations

positional arguments:
  {env,asgs,instances,summary,support,ssm,deploy-node,rails-worker-shell}
    env                 Print AWS_PROFILE/AWS_REGION exports
    asgs                List Auto Scaling Groups
    instances           List EC2 instances in ASGs
    summary             Show a quick environment summary
    support             Artifactory support bundle helpers
    ssm                 Open SSM session to an instance
    deploy-node         GitLab deploy-node helpers
    rails-worker-shell  Open SSM shell on the first GitLab rails-worker
                        instance

options:
  -h, --help            show this help message and exit
  --region REGION       AWS region
  --verbose             Enable informational logging
  --debug               Enable debug logging
  -V, --version         show program's version number and exit
  --examples            Show usage examples and exit

Examples:
  mb-aws-helper env prod --service gitlab
  mb-aws-helper instances prod --service gitlab
  mb-aws-helper summary prod --service gitlab
  mb-aws-helper ssm prod --service gitlab
  mb-aws-helper deploy-node list prod

Run 'mb-aws-helper --examples' for a full list.
```
