# deploy-node open

Open a deploy node session.

## Command

```bash
mb-aws-helper deploy-node open --help
```

## Help output

```text
usage: mb-aws-helper deploy-node open [-h] [--instance-id INSTANCE_ID]
                                      [--match MATCH] [--asg ASG_MATCH]
                                      [--sort {asc,desc}]
                                      env {new,recover}

positional arguments:
  env                   prod | sandbox | int
  {new,recover}         Use 'new' to create screen session or 'recover' to
                        reattach

options:
  -h, --help            show this help message and exit
  --instance-id INSTANCE_ID
                        Open directly to this instance ID
  --match MATCH         Case-insensitive substring filter for ASG name or
                        instance ID
  --asg ASG_MATCH       Case-insensitive substring filter for ASG name
  --sort {asc,desc}
```
