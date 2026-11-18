<div align="center">

# 🍺 Falken's Lab Homebrew tap

**Falken's Lab's apps for macOS, installed and updated with Homebrew.**

</div>

## 🚀 Install

```bash
brew tap falkenslab/tap
brew trust falkenslab/tap
brew install --cask falkenslab/tap/miyagi
```

Recent Homebrew only loads casks from taps you trust, hence `brew trust` (an older Homebrew has no such command: skip it). Update with `brew upgrade --cask miyagi`, uninstall with `brew uninstall --cask miyagi`.

## 📦 Casks

| Cask | What it is |
| --- | --- |
| [`miyagi`](Casks/miyagi.rb) | [miyagi](https://falkenslab.github.io/miyagi/), the AI teaching assistant, as a desktop app for Apple Silicon and Intel Macs |

## ⚠️ Unsigned apps

These apps aren't signed with an Apple Developer ID yet. If macOS won't open one, or says it is damaged, remove the download quarantine once, as `brew install` reminds you:

```bash
xattr -dr com.apple.quarantine /Applications/miyagi.app
```
 Your data is never touched: miyagi keeps your subjects in `~/.miyagi`, and uninstalling, even with `--zap`, leaves them there.

## 🔄 How the casks are updated

Each cask points at its app's GitHub release, and gets the new version and checksums with each release.

Made with 💖 by Falken's Lab Team
