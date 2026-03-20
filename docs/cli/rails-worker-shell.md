# rails-worker-shell

Open a shell on the first GitLab rails-worker instance.

## Command

```bash
mb-aws-helper rails-worker-shell --help
```

## Help output

```text
usage: mb-aws-helper rails-worker-shell [-h] [--asg ASG_MATCH] [--match MATCH]
                                        [--sort {asc,desc}]
                                        env

positional arguments:
  env                prod | sandbox | int

options:
  -h, --help         show this help message and exit
  --asg ASG_MATCH    Case-insensitive substring filter for ASG name
  --match MATCH      Case-insensitive substring filter for ASG name or
                     instance ID
  --sort {asc,desc}
```
