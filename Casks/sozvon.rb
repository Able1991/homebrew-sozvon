cask "sozvon" do
  version :latest
  sha256 :no_check

  url "https://github.com/Able1991/sozvon/releases/latest/download/Sozvon.dmg",
      verified: "github.com/Able1991/sozvon/"
  name "Sozvon"
  desc "Record calls and transcribe them locally"
  homepage "https://able1991.github.io/sozvon/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Sozvon.app"

  zap trash: [
    "~/Library/Caches/io.github.able1991.sozvon",
    "~/Library/Logs/Sozvon",
    "~/Library/Preferences/io.github.able1991.sozvon.plist",
  ]
end
