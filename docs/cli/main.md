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
                     {env,asgs,instances,summary,config,support,ssm,deploy-node,rails-worker-shell,doctor}
                     ...

AWS helper for Artifactory and GitLab operations

positional arguments:
  {env,asgs,instances,summary,config,support,ssm,deploy-node,rails-worker-shell,doctor}
    env                 Print AWS_PROFILE/AWS_REGION exports
    asgs                List Auto Scaling Groups
    instances           List EC2 instances from ASGs
    summary             Show a quick environment summary
    config              Manage local configuration
    support             Artifactory support bundle helpers
    ssm                 Open SSM session to an instance
    deploy-node         GitLab deploy-node helpers
    rails-worker-shell  Open shell on the first rails-worker instance
    doctor              Run local environment and hygiene checks

options:
  -h, --help            show this help message and exit
  --region REGION       AWS region
  --verbose             Enable informational logging
  --debug               Enable debug logging
  -V, --version         show program's version number and exit
  --examples            Show usage examples and exit

Examples:
  mb-aws-helper env int --service gitlab
  mb-aws-helper deploy-node list int
  mb-aws-helper config profiles
  mb-aws-helper config resolve-profile prod gitlab
  mb-aws-helper summary int --service gitlab
  mb-aws-helper doctor

Run 'mb-aws-helper --examples' for a full list.
```
