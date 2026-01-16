class Dhbootlegtoolkit < Formula
  desc "macOS application for managing translation keys and S3 feature configuration"
  homepage "https://github.com/lRoMYl/DHBootlegToolkit"
  url "https://github.com/lRoMYl/DHBootlegToolkit/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c1314ed64759f354bbb2d1d9d24dc6122d2c946a3a29ca41c5725cb92f244c66"
  head "https://github.com/lRoMYl/DHBootlegToolkit.git", branch: "main"

  depends_on xcode: ["16.0", :build]
  depends_on "xcodegen" => :build
  depends_on macos: :sequoia

  def install
    # Generate Xcode project using XcodeGen
    system "xcodegen", "generate"

    # Build the application
    xcodebuild "-scheme", "DHBootlegToolkit",
               "-configuration", "Release",
               "-derivedDataPath", "#{buildpath}/build",
               "SYMROOT=#{buildpath}/build",
               "CONFIGURATION_BUILD_DIR=#{buildpath}/build/Release",
               "build"

    # Install the .app bundle to prefix
    prefix.install "build/Release/DHBootlegToolkit.app"

    # Create a wrapper script to launch the app
    (bin/"dhbootlegtoolkit").write <<~EOS
      #!/bin/bash
      open "#{prefix}/DHBootlegToolkit.app" "$@"
    EOS
  end

  def caveats
    <<~EOS
      DHBootlegToolkit has been installed to:
        #{prefix}/DHBootlegToolkit.app

      To launch the application, run:
        dhbootlegtoolkit

      Or open it from:
        open #{prefix}/DHBootlegToolkit.app

      Note: This is a GUI application. You may also want to symlink it to /Applications:
        ln -s #{prefix}/DHBootlegToolkit.app /Applications/DHBootlegToolkit.app
    EOS
  end

  test do
    assert_path_exists prefix/"DHBootlegToolkit.app"
  end
end
