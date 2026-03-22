# instances

EC2 instance discovery.

## Command

```bash
mb-aws-helper instances --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper instances [-h] [--service {artifactory,gitlab}]
                               [--match MATCH] [--asg ASG_MATCH]
                               [--state STATE] [--sort {asc,desc}] [--json]
                               env

positional arguments:
  env                   prod | sandbox | int

options:
  -h, --help            show this help message and exit
  --service {artifactory,gitlab}
  --match MATCH         Case-insensitive substring filter for ASG name or
                        instance ID
  --asg ASG_MATCH       Case-insensitive substring filter for ASG name
  --state STATE         Filter by instance state, e.g. running
  --sort {asc,desc}
  --json                Output JSON
```
