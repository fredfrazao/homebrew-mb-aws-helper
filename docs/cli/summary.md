# summary

Environment and resource summary.

## Command

```bash
mb-aws-helper summary --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper summary [-h] [--service {artifactory,gitlab}]
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
