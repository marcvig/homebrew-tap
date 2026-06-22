cask "jellybar" do
  version "0.4.1"
  sha256 "7a278caa2e8f133d5fdab2c957c15184cac7f036fea75b937157877b273b66fe"

  url "https://github.com/marcvig/jellybar-releases/releases/download/v#{version}/JellyBar-#{version}.dmg",
      verified: "github.com/marcvig/jellybar-releases/"
  name "JellyBar"
  desc "Reliable menu bar icon manager"
  homepage "https://jellybar.app/"

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
