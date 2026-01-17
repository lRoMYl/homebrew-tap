cask "dhbootlegtoolkit" do
  version "0.0.3-testing-9"
  sha256 "0975b6f571275ddcdab4aa5105a2fa31af83e99b810cf01b2424e80bd4aba451"

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
