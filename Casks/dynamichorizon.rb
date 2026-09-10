cask "dynamichorizon" do
  version "2.2.3"
  sha256 "fbb7eda3c7881ebd4d422bb6232f63e61e200a23359074d327f79a2577327c27"

  url "https://dynamic-horizon-app-updates.s3.us-east-2.amazonaws.com/DynamicHorizon-#{version}.zip"
  name "DynamicHorizon"
  desc "Interactive system activity and controls around the camera notch"
  homepage "https://www.dynamichorizon.app/"

  livecheck do
    url "https://dynamic-horizon-app-updates.s3.us-east-2.amazonaws.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DynamicHorizon.app"

  zap trash: [
    "~/Library/Application Support/SuperEvilCorp.DynamicHorizon",
    "~/Library/Caches/SuperEvilCorp.DynamicHorizon",
    "~/Library/Preferences/SuperEvilCorp.DynamicHorizon.plist",
    "~/Library/Saved Application State/SuperEvilCorp.DynamicHorizon.savedState",
  ]
end
