# homebrew-mb-aws-helper

Homebrew tap for [`mb-aws-helper`]

This repository provides the Homebrew formula for installing `mb-aws-helper` and also mirrors selected release assets and documentation from the source repository

## What this repository contains

- `Formula/mb-aws-helper.rb` — Homebrew formula
- `CHANGELOG.md` — copied from the source repository during release updates
- `docs/` — mirrored documentation from the source repository

## Install

```bash
brew tap fredfrazao/mb-aws-helper
brew install mb-aws-helper
```

## Upgrade

```bash
brew update
brew upgrade mb-aws-helper
```

## Reinstall

```bash
brew reinstall mb-aws-helper
```

## Verify installation

```bash
mb-aws-helper --help
mb-aws-helper --examples
```

## Documentation

The `docs/` directory in this repository is copied automatically from the source repository release tag.

You can browse the mirrored documentation directly in this repository:

- [`docs/`](./docs/)
- [`CHANGELOG.md`](./CHANGELOG.md)

## Release flow

When a new version of `mb-aws-helper` is released in the source repository:

1. the source release workflow builds and publishes the release artifact
2. the source workflow triggers this repository through `repository_dispatch`
3. this repository:
   - updates the Homebrew formula URL and SHA256
   - copies `CHANGELOG.md`
   - copies `docs/`
   - commits the changes
   - creates a matching tag and GitHub release

## Notes

This repository is intended to be a lightweight distribution and release mirror for Homebrew users

Development happens in the source repository
