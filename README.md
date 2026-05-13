# Alvera Homebrew Tap

Homebrew formulas for the Alvera platform toolchain.

## Install

```bash
brew install alvera-ai/tap/alvera
```

Or, in two steps:

```bash
brew tap alvera-ai/tap
brew install alvera
```

## Formulas

| Formula | Description |
|---------|-------------|
| `alvera` | Platform CLI — manifest-driven provisioning + spec conduit |

## Upgrades

```bash
brew update
brew upgrade alvera
```

## Source

The CLI itself is built from [`alvera-ai/platform-sdk`](https://github.com/alvera-ai/platform-sdk).
Release binaries are attached to GitHub releases on that repo. This tap
just points at them with verified sha256 checksums.

## Platforms

Currently darwin-arm64 only. Multi-arch (darwin-x64, linux-x64,
linux-arm64) ships alongside the `release-cli.yml` workflow.
