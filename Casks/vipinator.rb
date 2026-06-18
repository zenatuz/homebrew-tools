cask "vipinator" do
  version "1.5"
  sha256 "1874cd6b6b3379ec126bec1117785265206f5d4045ae8d9f88098492e16f27bf"

  url "https://github.com/vpukhanov/vipinator/releases/download/v#{version}/Vipinator-#{version}.dmg"
  name "Vipinator"
  desc "VPN management from your menu bar"
  homepage "https://github.com/vpukhanov/vipinator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Vipinator.app"

  uninstall quit: "ru.pukhanov.Vipinator"
end
