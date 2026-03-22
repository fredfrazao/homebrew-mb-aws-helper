# deploy-node

GitLab deploy-node helpers.

## Command

```bash
mb-aws-helper deploy-node --help
```

## Help output

```text
🩺 mb doctor (v1.9.0-dev)

usage: mb-aws-helper deploy-node [-h] {list,open,exec,logs} ...

positional arguments:
  {list,open,exec,logs}
    list                List GitLab deploy nodes
    open                Open shell on a GitLab deploy node
    exec                Run a configured GitLab deploy-node command in
                        background via SSM
    logs                Query or tail GitLab deploy-node hot reload logs

options:
  -h, --help            show this help message and exit
```
