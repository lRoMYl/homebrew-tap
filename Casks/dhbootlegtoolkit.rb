cask "dhbootlegtoolkit" do
  version "0.0.4"
  sha256 "6473ee0c1f3d5b2c318d0bfdd212f5c14c642f8e48079e6d3ea1a91422b19c6a"

  url "https://github.com/lRoMYl/DHBootlegToolkit/releases/download/#{version}/DHBootlegToolkit-#{version}.zip"
  name "DHBootlegToolkit"
  desc "Manage translation keys and S3 feature configuration"
  homepage "https://github.com/lRoMYl/DHBootlegToolkit"

  depends_on macos: ">= :sequoia"

  app "DHBootlegToolkit.app"

  # Remove quarantine attribute to allow unsigned app to run
  postflight do
    system "/usr/bin/xattr", "-dr", "com.apple.quarantine", "#{appdir}/DHBootlegToolkit.app"
  end

  zap trash: [
    "~/Library/Application Support/DHBootlegToolkit",
    "~/Library/Caches/com.dhbootlegtoolkit.app",
    "~/Library/Preferences/com.dhbootlegtoolkit.app.plist",
  ]
end
