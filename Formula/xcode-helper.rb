class XcodeHelper < Formula
  desc "Helper tools for Xcode project management"
  homepage "https://github.com/lRoMYl/xcode-helper"
  url "https://github.com/lRoMYl/xcode-helper/archive/refs/tags/0.0.3.tar.gz"
  sha256 "b13a5982bbc5df012cfbf10ae6f810b497475c94cc125f88a1e838d625acacac"
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
