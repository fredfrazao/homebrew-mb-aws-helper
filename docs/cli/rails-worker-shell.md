# rails-worker-shell

Open a shell on the first GitLab rails-worker instance.

## Command

```bash
mb-aws-helper rails-worker-shell --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper rails-worker-shell [-h] [--match MATCH] [--asg ASG_MATCH]
                                        [--sort {asc,desc}]
                                        env

positional arguments:
  env                prod | sandbox | int

options:
  -h, --help         show this help message and exit
  --match MATCH      Case-insensitive substring filter for ASG name or
                     instance ID
  --asg ASG_MATCH    Case-insensitive substring filter for ASG name
  --sort {asc,desc}
```
