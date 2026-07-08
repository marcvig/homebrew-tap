cask "caffeine-timer" do
  version "1.6.0"
  sha256 "7436758a4b3ec8139d932816bfd0cd6a5f5f044940cb3796d59daf418fa6c9c6"

  url "https://github.com/marcvig/caffeine-timer/releases/download/v#{version}/CaffeineTimer-#{version}.dmg"
  name "Caffeine Timer"
  desc "Menu-bar timer that keeps the screen awake for a set duration"
  homepage "https://github.com/marcvig/caffeine-timer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "CaffeineTimer.app"

  zap trash: [
    "~/Library/Caches/com.vigod.caffeinetimer",
    "~/Library/HTTPStorages/com.vigod.caffeinetimer",
    "~/Library/Preferences/com.vigod.caffeinetimer.plist",
  ]
end
