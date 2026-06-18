cask "orbit-launcher" do
  version "0.3.4,203"
  sha256 "6a6613f40f4679984518ac6a392f8c5bfee3247a1ce47a90feb43a13d0fcac61"

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
