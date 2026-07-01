cask "orbit-launcher" do
  version "0.3.9,233"
  sha256 "590d9df49d367dc88c7d591d687b0780427dff1d00b9f083b83724e221a9ada1"

  url "https://get.orbitlauncher.app/Orbit%20Launcher-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Orbit Launcher"
  desc "Radial app-launcher ring summoned at your cursor with a global hotkey"
  homepage "https://orbitlauncher.app/"

  livecheck do
    url "https://orbitlauncher.app/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Orbit Launcher.app"

  zap trash: [
    "~/Library/Application Support/OrbitLauncher",
    "~/Library/Caches/com.marcvigod.OrbitLauncher",
    "~/Library/HTTPStorages/com.marcvigod.OrbitLauncher",
    "~/Library/Preferences/com.marcvigod.OrbitLauncher.plist",
  ]
end
