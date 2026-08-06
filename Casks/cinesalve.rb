cask "cinesalve" do
  version "1.5"
  sha256 "7cb54b1f24cac89285856694691324e39acbc5938a87ab53d7c3202b115f8b31"

  url "https://github.com/LucideLarp/cinesalve/releases/download/v#{version}/Cinesalve-#{version}.zip"
  name "Cinesalve"
  desc "Rebuilds the index of a truncated MP4 or MOV so the footage plays again"
  homepage "https://cinesalve.honorboxx.workers.dev"

  depends_on macos: ">= :ventura"

  app "Cinesalve.app"

  caveats <<~EOS
    Cinesalve is not yet signed with an Apple Developer ID, so macOS quarantines
    it. Install with --no-quarantine to skip the Privacy & Security step:

      brew install --cask --no-quarantine lucidelarp/cinesalve/cinesalve

    If you already installed it without that flag, either allow it once in
    System Settings > Privacy & Security > Open Anyway, or run:

      xattr -dr com.apple.quarantine /Applications/Cinesalve.app
  EOS

  zap trash: "~/Library/Preferences/com.cinesalve.app.plist"
end
