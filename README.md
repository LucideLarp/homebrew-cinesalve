# Cinesalve tap

Recovers video from recordings a camera never finished writing: a flat battery, a
pulled card, a crash. The footage is on the card, only the index is missing, and
this rebuilds it.

```sh
brew install --cask --no-quarantine lucidelarp/cinesalve/cinesalve
```

`--no-quarantine` is there because the app is not yet signed with an Apple
Developer ID. Without it, macOS blocks the first launch and you have to allow it
in System Settings > Privacy & Security.

Free to run and to watch the recovered footage. A licence is only needed to save
the repaired file.

- Source of truth and downloads: <https://github.com/LucideLarp/cinesalve>
- What it is: <https://cinesalve.honorboxx.workers.dev>

## Why a tap and not homebrew/cask

Homebrew's cask rules require that an app not need Gatekeeper bypassed, which an
unsigned app does by definition. That is a fair rule, so this lives in its own
tap until the app is signed.
