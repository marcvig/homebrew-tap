cask "jellybar" do
  version "0.2.0"
  sha256 "264df3ffc7741301191cda3db00533825cdc182f5b10dc0c0595ef7bc9b91d52"

  url "https://github.com/marcvig/jellybar-releases/releases/download/v#{version}/JellyBar-#{version}.dmg"
  name "JellyBar"
  desc "Reliable menu bar icon manager for macOS"
  homepage "https://jellybar.app"

  livecheck do
    url "https://github.com/marcvig/jellybar-releases"
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "JellyBar.app"

  zap trash: [
    "~/Library/Application Support/JellyBar",
    "~/Library/Logs/JellyBar",
    "~/Library/Preferences/com.vigod.JellyBar.plist",
  ]
end
