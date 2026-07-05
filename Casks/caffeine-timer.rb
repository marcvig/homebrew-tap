cask "caffeine-timer" do
  version "1.5.0"
  sha256 "1326605ee33c9cb99a04ee240711520dbe3adcb4335bd4f717879d4793188b10"

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
