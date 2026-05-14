cask "nightcap" do
  version "0.1.0"
  sha256 "630587ff41fbb2f98ee55b9c8a6139a717218ce6eb7c41af3928941c8bbb420c"

  url "https://github.com/Abdo-codes/Nightcap/releases/download/v#{version}/Nightcap-#{version}.zip"
  name "Nightcap"
  desc "Keep your Mac awake while specific apps are running"
  homepage "https://github.com/Abdo-codes/Nightcap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Nightcap.app"

  uninstall quit: "com.abdocodes.nightcap"

  zap trash: [
    "~/Library/Containers/com.abdocodes.nightcap",
    "~/Library/Preferences/com.abdocodes.nightcap.plist",
  ]
end
