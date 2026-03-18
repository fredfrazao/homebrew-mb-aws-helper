# deploy-node logs

Query or tail deploy-node logs.

## Command

```bash
mb-aws-helper deploy-node logs --help
```

## Help output

```text
usage: mb-aws-helper deploy-node logs [-h] [--since SINCE] [--limit LIMIT]
                                      [--tail] [--json]
                                      env

positional arguments:
  env            prod | sandbox | int

options:
  -h, --help     show this help message and exit
  --since SINCE  Time window like 30m, 6h, 24h, 7d (default: 24h)
  --limit LIMIT  Maximum number of log lines to return (default: 100)
  --tail         Continuously poll CloudWatch logs like tail -f
  --json         Output JSON
```
