cask "caffeine-timer" do
  version "1.3.2"
  sha256 "2f7d31098dda72fd87db4422d1061344c7c06ffdde4698a25e2919aefe0912f4"

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
