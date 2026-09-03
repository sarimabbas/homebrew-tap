# Homebrew Tap

Homebrew packages maintained by [Sarim Abbas](https://github.com/sarimabbas).

## Vinny

Homebrew 6 and newer require explicit trust for third-party taps:

```sh
brew tap sarimabbas/tap
brew trust --cask sarimabbas/tap/vinny
brew install --cask vinny
```

On older Homebrew versions, the qualified install command is sufficient:

```sh
brew install --cask sarimabbas/tap/vinny
```
