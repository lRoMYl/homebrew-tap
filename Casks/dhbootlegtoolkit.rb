cask "dhbootlegtoolkit" do
  version "0.0.1"
  sha256 "d6f37cf823edea9ab04d655ada72ff6a2b9698429e694d7b01fed488ca49f227"

  url "https://github.com/lRoMYl/DHBootlegToolkit/releases/download/#{version}/DHBootlegToolkit-#{version}.zip"
  name "DHBootlegToolkit"
  desc "Manage translation keys and S3 feature configuration"
  homepage "https://github.com/lRoMYl/DHBootlegToolkit"

  depends_on macos: ">= :sequoia"

  app "DHBootlegToolkit.app"

  zap trash: [
    "~/Library/Application Support/DHBootlegToolkit",
    "~/Library/Caches/com.dhbootlegtoolkit.app",
    "~/Library/Preferences/com.dhbootlegtoolkit.app.plist",
  ]
end
