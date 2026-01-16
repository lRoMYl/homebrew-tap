cask "dhbootlegtoolkit" do
  version "0.0.2"
  sha256 "87d6c8633068bb8df4be39eb1e2ad93a8a78e16c6820bb8f55664e66b202e4f5"

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
