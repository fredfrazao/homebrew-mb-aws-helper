# deploy-node exec

Run a configured GitLab deploy-node command via SSM.

## Command

```bash
mb-aws-helper deploy-node exec --help
```

## Help output

```text
usage: mb-aws-helper deploy-node exec [-h] [--watch] [--json]
                                      env
                                      {gitlab_deploy_hot_reload,gitlab_update_repo,gitlab_deploy_instance_refresh}

positional arguments:
  env                   prod | sandbox | int
  {gitlab_deploy_hot_reload,gitlab_update_repo,gitlab_deploy_instance_refresh}
                        Configured deploy-node action name

options:
  -h, --help            show this help message and exit
  --watch               Watch SSM command execution until it finishes
  --json                Output JSON
```
