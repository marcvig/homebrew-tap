cask "jellybar" do
  version "0.3.0"
  sha256 "1b037a9f30d6502bc2384b4e6560cee2b57b3324f0f93679ed2a13eb8ce7c506"

  url "https://github.com/marcvig/jellybar-releases/releases/download/v#{version}/JellyBar-#{version}.dmg",
      verified: "github.com/marcvig/jellybar-releases/"
  name "JellyBar"
  desc "Reliable menu bar icon manager for macOS"
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
