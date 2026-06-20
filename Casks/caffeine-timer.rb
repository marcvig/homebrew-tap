cask "caffeine-timer" do
  version "1.2.0"
  sha256 "535f567e0c31d6231ad723ade9db887b434a3858010715f4b9e53178df9ed60f"

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
