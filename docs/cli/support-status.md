# support status

Check SSM support bundle command status.

## Command

```bash
mb-aws-helper support status --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper support status [-h] [--json] [--watch]
                                    [--interval INTERVAL]
                                    env command_id

positional arguments:
  env                  prod | sandbox | int
  command_id           SSM CommandId

options:
  -h, --help           show this help message and exit
  --json               Output JSON
  --watch              Watch until finished
  --interval INTERVAL  Polling interval in seconds
```
