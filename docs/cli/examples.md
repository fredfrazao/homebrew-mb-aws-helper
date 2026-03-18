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
Print AWS exports for GitLab PROD:
  mb-aws-helper env prod --service gitlab

Print AWS exports for Artifactory PROD:
  mb-aws-helper env prod

Export values directly into your current shell:
  eval "$(mb-aws-helper env prod --service gitlab)"

Infrastructure
--------------
List Auto Scaling Groups for GitLab PROD:
  mb-aws-helper asgs prod --service gitlab

List EC2 instances for GitLab PROD:
  mb-aws-helper instances prod --service gitlab

List only running GitLab PROD instances:
  mb-aws-helper instances prod --service gitlab --state running

Filter instances by ASG substring:
  mb-aws-helper instances prod --service gitlab --asg rails

Filter instances by generic match:
  mb-aws-helper instances prod --service gitlab --match sidekiq

Show a quick summary:
  mb-aws-helper summary prod --service gitlab

Output JSON:
  mb-aws-helper summary prod --service gitlab --json

SSM
---
Open an interactive SSM session:
  mb-aws-helper ssm prod --service gitlab

Open SSM directly to a known instance:
  mb-aws-helper ssm prod --service gitlab --instance-id i-0123456789abcdef0

GitLab helpers
--------------
List deploy nodes:
  mb-aws-helper deploy-node list prod

Open deploy node with a new screen session:
  mb-aws-helper deploy-node open prod new

Recover an existing screen session on deploy node:
  mb-aws-helper deploy-node open prod recover

Open shell on the first rails-worker instance:
  mb-aws-helper rails-worker-shell prod

Query deploy-node hot reload logs for the last 24 hours:
  mb-aws-helper deploy-node logs prod --since 24h

Tail deploy-node hot reload logs from the last 5 minutes:
  mb-aws-helper deploy-node logs prod --tail --since 5m

Return only 200 lines in JSON:
  mb-aws-helper deploy-node logs prod --since 24h --limit 200 --json

Artifactory helpers
-------------------
Run support bundle collection:
  mb-aws-helper support instances prod 123456 24h

Run support bundle collection for matching ASGs only:
  mb-aws-helper support instances prod 123456 24h --asg worker

Check SSM command status:
  mb-aws-helper support status prod 12345678-1234-1234-1234-1234567890ab

Watch support command status until completion:
  mb-aws-helper support status prod 12345678-1234-1234-1234-1234567890ab --watch

Notes
-----
- Default service is 'artifactory' for: env, asgs, instances, summary, ssm
- Valid environments include: prod, sandbox, int
- Aliases also accepted: dev -> sandbox, integration -> int
```
