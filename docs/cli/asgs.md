# asgs

Auto Scaling Group discovery.

## Command

```bash
mb-aws-helper asgs --help
```

## Help output

```text
usage: mb-aws-helper asgs [-h] [--service {artifactory,gitlab}]
                          [--asg ASG_MATCH] [--json]
                          env

positional arguments:
  env                   prod | sandbox | int

options:
  -h, --help            show this help message and exit
  --service {artifactory,gitlab}
  --asg ASG_MATCH       Case-insensitive substring filter for ASG name
  --json                Output JSON
```
