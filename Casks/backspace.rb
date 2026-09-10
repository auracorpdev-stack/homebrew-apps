cask "backspace" do
  version "1.1.4"
  sha256 "3385834c937af4c3b5f8e5ddf235466282196d8eb92f9ccb8698b80df8903a72"

  url "https://dynamic-horizon-app-updates.s3.us-east-2.amazonaws.com/Backspace-#{version}.zip"
  name "Backspace"
  desc "Cinematic live wallpapers for the Desktop and Lock Screen"
  homepage "https://www.backspacemac.app/"

  livecheck do
    url "https://dynamic-horizon-app-updates.s3.us-east-2.amazonaws.com/wallpapers-appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Backspace.app"

  zap trash: [
    "~/Library/Application Support/com.backspaceapp",
    "~/Library/Caches/com.backspaceapp",
    "~/Library/Preferences/com.backspaceapp.plist",
    "~/Library/Saved Application State/com.backspaceapp.savedState",
  ]
end
