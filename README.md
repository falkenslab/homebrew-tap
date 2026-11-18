<div align="center">

# 🍺 Falken's Lab Homebrew tap

**Falken's Lab's apps for macOS, installed and updated with Homebrew.**

</div>

## 🚀 Install

```bash
brew install --cask falkenslab/tap/miyagi
```

Homebrew adds this tap on the first install. Update with `brew upgrade --cask miyagi`, uninstall with `brew uninstall --cask miyagi`.

## 📦 Casks

| Cask | What it is |
| --- | --- |
| [`miyagi`](Casks/miyagi.rb) | [miyagi](https://falkenslab.github.io/miyagi/), the AI teaching assistant, as a desktop app for Apple Silicon and Intel Macs |

## ⚠️ Unsigned apps

These apps aren't signed with an Apple Developer ID yet. Each cask removes the download quarantine after installing, so macOS opens the app instead of reporting it as damaged. Your data is never touched: miyagi keeps your subjects in `~/.miyagi`, and uninstalling, even with `--zap`, leaves them there.

## 🔄 How the casks are updated

Each cask points at its app's GitHub release, and gets the new version and checksums with each release.

Made with 💖 by Falken's Lab Team
