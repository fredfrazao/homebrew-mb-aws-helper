# support instances

Run support bundle collection via SSM.

## Command

```bash
mb-aws-helper support instances --help
```

## Help output

```text
usage: mb-aws-helper support instances [-h] [--asg ASG_MATCH] [--no-dry-run]
                                       env ticket_id since

positional arguments:
  env              prod | sandbox | int
  ticket_id        Numeric ticket ID
  since            Time window like 6h, 24h, 7d

options:
  -h, --help       show this help message and exit
  --asg ASG_MATCH  Filter target ASGs
  --no-dry-run     Run without --dry-run
```
