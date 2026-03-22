# config

Local configuration helpers.

## Command

```bash
mb-aws-helper config --help
```

## Help output

```text
usage: mb-aws-helper config [-h] {path,show,init,profiles,resolve-profile} ...

positional arguments:
  {path,show,init,profiles,resolve-profile}
    path                Show the local config file path
    show                Show the effective merged configuration
    init                Create the local config file if it does not exist
    profiles            Show configured AWS profile patterns
    resolve-profile     Resolve the final AWS profile for environment and
                        service

options:
  -h, --help            show this help message and exit
```
