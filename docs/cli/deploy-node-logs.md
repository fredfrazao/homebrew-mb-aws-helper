# deploy-node logs

Query or tail deploy-node logs.

## Command

```bash
mb-aws-helper deploy-node logs --help
```

## Help output

```text
usage: mb-aws-helper deploy-node logs [-h] [--since SINCE] [--limit LIMIT]
                                      [--json] [--tail] [--interval INTERVAL]
                                      env

positional arguments:
  env                  prod | sandbox | int

options:
  -h, --help           show this help message and exit
  --since SINCE        Time window like 30m, 6h, 24h, 7d (default: 24h)
  --limit LIMIT        Maximum number of log lines to return (default: 200)
  --json               Output JSON rows
  --tail               Continuously poll and print new log events from the hot
                       reload stream
  --interval INTERVAL  Polling interval in seconds when using --tail (default:
                       2)
```
