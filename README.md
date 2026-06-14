# marcvig Homebrew Tap

Homebrew casks for apps by Marc Vigod.

## Install

Homebrew 6+ requires you to trust third-party taps before installing. Run this once:

```sh
brew trust --cask marcvig/tap/orbit-launcher
```

Then install:

```sh
brew install --cask marcvig/tap/orbit-launcher
```

Or tap first, then install:

```sh
brew tap marcvig/tap
brew trust --cask marcvig/tap/orbit-launcher
brew install --cask orbit-launcher
```

## Apps

| Cask | App | Description |
|------|-----|-------------|
| `orbit-launcher` | [Orbit Launcher](https://orbitlauncher.app) | Radial app-launcher ring summoned at your cursor with a global hotkey |
| `caffeine-timer` | [CaffeineTimer](https://github.com/marcvig/caffeine-timer) | Menu-bar timer that keeps your Mac awake for a set duration |

Orbit Launcher updates itself (Sparkle); CaffeineTimer updates via `brew upgrade --cask`.
