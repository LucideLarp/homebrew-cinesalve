# Cinesalve tap

Recovers video from recordings a camera never finished writing: a flat battery, a
pulled card, a crash. The footage is on the card, only the index is missing, and
this rebuilds it.

```sh
brew install --cask lucidelarp/cinesalve/cinesalve
xattr -dr com.apple.quarantine /Applications/Cinesalve.app
```

The second line is needed because the app is not yet signed with an Apple
Developer ID and Homebrew quarantines what it installs, so macOS kills the first
launch. Current Homebrew has no `--no-quarantine` option. If you would rather not
run it, open the app, let macOS refuse it, then allow it in
System Settings > Privacy & Security > Open Anyway.

The tap is still worth it for upgrades: `brew upgrade` keeps you current.

$69 once, for every Mac you own. Before buying, the free checker at
<https://cinesalve.honorboxx.workers.dev/check> reads your damaged file in the
browser and reports exactly how many frames are recoverable, so nobody pays to
find out whether their footage survived.

- Source of truth and downloads: <https://github.com/LucideLarp/cinesalve>
- What it is: <https://cinesalve.honorboxx.workers.dev>

## Why a tap and not homebrew/cask

Homebrew's cask rules require that an app not need Gatekeeper bypassed, which an
unsigned app does by definition. That is a fair rule, so this lives in its own
tap until the app is signed.
