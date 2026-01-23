cask "dhbootlegtoolkit" do
  version "0.0.8"
  sha256 "dd2e8610d46b80edb5c35f057e678c130d583135fc893e563e76154e7dbdaad2"

  url "https://github.com/lRoMYl/DHBootlegToolkit/releases/download/#{version}/DHBootlegToolkit-#{version}.zip"
  name "DHBootlegToolkit"
  desc "Manage translation keys and S3 feature configuration"
  homepage "https://github.com/lRoMYl/DHBootlegToolkit"

  # Declare that app has built-in update mechanism via Sparkle
  auto_updates true

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
