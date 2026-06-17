cask "caffeine-timer" do
  version "1.1.0"
  sha256 "642bfe691ab1c44a90622d6f36772bd315be6050af183dc41a1e9e6676cce638"

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
