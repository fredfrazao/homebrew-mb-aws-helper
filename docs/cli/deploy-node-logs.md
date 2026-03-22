# deploy-node logs

Query or tail deploy-node logs.

## Command

```bash
mb-aws-helper deploy-node logs --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper deploy-node logs [-h] [--since SINCE] [--limit LIMIT]
                                      [--json] [--tail] [--interval INTERVAL]
                                      env

positional arguments:
  env                  prod | sandbox | int

options:
  -h, --help           show this help message and exit
  --since SINCE        Time window like 30m, 6h, 24h, 7d (default: 24h)
  --limit LIMIT        Maximum number of log events to return in query mode
                       (default: 200)
  --json               Output JSON (query mode only)
  --tail               Tail the deploy hot reload log stream continuously
  --interval INTERVAL  Tail polling interval in seconds (default: 2)
```
