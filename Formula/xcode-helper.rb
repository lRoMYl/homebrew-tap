class XcodeHelper < Formula
  desc "Helper tools for Xcode project management"
  homepage "https://github.com/lRoMYl/xcode-helper"
  url "https://github.com/lRoMYl/xcode-helper/archive/refs/tags/0.0.1.tar.gz"
  sha256 "19120a6d6f6d64a1ab80f0d04ee023a86cf9c3ae652096fb54aced97c70de343"
  head "https://github.com/lRoMYl/xcode-helper.git", branch: "main"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "USAGE: xcode-helper", shell_output("#{bin}/xcode-helper --help")
  end
end
