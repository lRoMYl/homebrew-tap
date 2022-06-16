class SwiftGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/swift-graphql-codegen"
  url "https://github.com/lRoMYl/swift-graphql-codegen/archive/alpha-0.9.0.tar.gz"
  sha256 "01a89fb95166d88ef4de3a15c4ac911596cf325e9a42eda5b6aa3966a6264ad1"
  head "https://github.com/lRoMYl/swift-graphql-codegen.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
