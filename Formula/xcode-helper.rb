class XcodeHelper < Formula
  desc "Helper tools for Xcode project management"
  homepage "https://github.com/lRoMYl/xcode-helper"
  url "https://github.com/lRoMYl/xcode-helper/archive/refs/tags/0.0.2.tar.gz"
  sha256 "e58f39aa751e7eae31426f9edad82d2e8d27f4c215280b6e4eee2fb6f71d3af6"
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
