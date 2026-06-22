cask "jellybar" do
  version "0.4.0"
  sha256 "27342c74512c92cf86741e8d872ed57c0a7937f0b73ff90f6901a6dbaea7d8b4"

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
