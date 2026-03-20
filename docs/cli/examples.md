# Examples

Full CLI usage examples.

## Command

```bash
mb-aws-helper --examples
```

## Help output

```text
mb-aws-helper usage examples

Environment
-----------
Print AWS exports for GitLab INT:
  mb-aws-helper env int --service gitlab

Print AWS exports for Artifactory INT:
  mb-aws-helper env int

Export values directly into your current shell:
  eval "$(mb-aws-helper env int --service gitlab)"

Infrastructure
--------------
List Auto Scaling Groups for GitLab INT:
  mb-aws-helper asgs int --service gitlab

List EC2 instances for GitLab INT:
  mb-aws-helper instances int --service gitlab

List only running GitLab INT instances:
  mb-aws-helper instances int --service gitlab --state running

Filter instances by ASG substring:
  mb-aws-helper instances int --service gitlab --asg rails

Filter instances by generic match:
  mb-aws-helper instances int --service gitlab --match sidekiq

Show a quick summary:
  mb-aws-helper summary int --service gitlab

Output JSON:
  mb-aws-helper summary int --service gitlab --json

SSM
---
Open an interactive SSM session:
  mb-aws-helper ssm int --service gitlab

Open SSM directly to a known instance:
  mb-aws-helper ssm int --service gitlab --instance-id i-0123456789abcdef0

GitLab helpers
--------------
List deploy nodes:
  mb-aws-helper deploy-node list int

Open deploy node with a new screen session:
  mb-aws-helper deploy-node open int new

Recover an existing screen session on deploy node:
  mb-aws-helper deploy-node open int recover

Open shell on the first rails-worker instance:
  mb-aws-helper rails-worker-shell int

Query deploy-node hot reload logs for the last 24 hours:
  mb-aws-helper deploy-node logs int --since 24h

Tail deploy-node hot reload logs from the last 5 minutes:
  mb-aws-helper deploy-node logs int --tail --since 5m

Return only 200 lines in JSON:
  mb-aws-helper deploy-node logs int --since 24h --limit 200 --json

Artifactory helpers
-------------------
Run support bundle collection:
  mb-aws-helper support instances int 123456 24h

Run support bundle collection for matching ASGs only:
  mb-aws-helper support instances int 123456 24h --asg worker

Check SSM command status:
  mb-aws-helper support status int 12345678-1234-1234-1234-1234567890ab

Watch support command status until completion:
  mb-aws-helper support status int 12345678-1234-1234-1234-1234567890ab --watch

Notes
-----
- Default service is 'artifactory' for: env, asgs, instances, summary, ssm
- Valid environments include: prod, sandbox, int
- Aliases also accepted: dev -> sandbox, integration -> int
```
