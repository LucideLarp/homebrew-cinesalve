cask "cinesalve" do
  version "1.13"
  sha256 "8c3ee93b4b9d789b6b77884b54e4f1a1d2a5c086528d682e52703b56ffc95fc3"

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
