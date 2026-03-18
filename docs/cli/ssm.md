# ssm

Interactive SSM session helpers.

## Command

```bash
mb-aws-helper ssm --help
```

## Help output

```text
usage: mb-aws-helper ssm [-h] [--service {artifactory,gitlab}]
                         [--instance-id INSTANCE_ID] [--match MATCH]
                         [--asg ASG_MATCH] [--sort {asc,desc}]
                         env

positional arguments:
  env                   prod | sandbox | int

options:
  -h, --help            show this help message and exit
  --service {artifactory,gitlab}
  --instance-id INSTANCE_ID
                        Open SSM directly to this instance ID
  --match MATCH         Case-insensitive substring filter for ASG name or
                        instance ID
  --asg ASG_MATCH       Case-insensitive substring filter for ASG name
  --sort {asc,desc}
```
