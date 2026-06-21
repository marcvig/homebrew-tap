cask "jellybar" do
  version "0.3.1"
  sha256 "94aa1e647d76f689565c28fd7842035b1950d3b24d46c9c46eeb5b1466dff445"

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
