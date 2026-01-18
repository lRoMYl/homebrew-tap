cask "dhbootlegtoolkit" do
  version "0.0.6"
  sha256 "7820ce570b67cf4b079d9f3afd0bf5fe3d537c702e371d54aad0610ef0211532"

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
