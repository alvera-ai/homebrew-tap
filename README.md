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

## Binaries

The CLI binaries are published as **GitHub Releases on this tap repo**, and
the formula points at them with verified sha256 checksums. Hosting them here
(a public repo) is what lets `brew install` fetch them while the CLI's source
stays private.

## License

The `alvera` CLI is **proprietary** — Alvera CLI License Agreement, all
rights reserved. You may install and run it to use the Alvera platform; you
may not modify, reverse engineer, or redistribute it.

## Platforms

darwin-arm64, darwin-x64, linux-x64, linux-arm64.
