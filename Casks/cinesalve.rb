cask "cinesalve" do
  version "1.12"
  sha256 "7586476294e96e06a7a17d316ad44d4de73d10705efc3cbcb9203e57773c15cf"

  url "https://github.com/LucideLarp/cinesalve/releases/download/v#{version}/Cinesalve-#{version}.zip"
  name "Cinesalve"
  desc "Rebuilds the index of a truncated MP4 or MOV so the footage plays again"
  homepage "https://cinesalve.honorboxx.workers.dev"

  depends_on macos: ">= :ventura"

  app "Cinesalve.app"

  caveats <<~EOS
    Cinesalve is not yet signed with an Apple Developer ID, and Homebrew
    quarantines what it installs, so macOS will refuse the first launch. Clear it
    once with:

      xattr -dr com.apple.quarantine /Applications/Cinesalve.app

    Or open it, let it be refused, then allow it in
    System Settings > Privacy & Security > Open Anyway.

    (Verified on macOS 26: current Homebrew has no --no-quarantine option, and
    without clearing the attribute the app is killed on launch.)
  EOS

  zap trash: "~/Library/Preferences/com.cinesalve.app.plist"
end
