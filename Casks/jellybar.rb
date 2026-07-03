cask "jellybar" do
  version "0.4.2"
  sha256 "2a78576db9a9e11417a247b58d396f30105e2265d5f6443806de5aa6ed83c3de"

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
