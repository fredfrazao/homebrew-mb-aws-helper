# deploy-node list

List GitLab deploy nodes.

## Command

```bash
mb-aws-helper deploy-node list --help
```

## Help output

```text
usage: mb-aws-helper deploy-node list [-h] [--match MATCH] [--asg ASG_MATCH]
                                      [--sort {asc,desc}] [--json]
                                      env

positional arguments:
  env                prod | sandbox | int

options:
  -h, --help         show this help message and exit
  --match MATCH      Case-insensitive substring filter for ASG name or
                     instance ID
  --asg ASG_MATCH    Case-insensitive substring filter for ASG name
  --sort {asc,desc}
  --json             Output JSON
```
