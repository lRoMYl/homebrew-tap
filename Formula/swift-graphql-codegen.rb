class SwiftGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/swift-graphql-codegen"
  url "https://github.com/lRoMYl/swift-graphql-codegen/archive/alpha-0.11.0.tar.gz"
  sha256 "5ef34c38abcf1c8f8e8adf27ab0b0f5de1a1ce914b64590a86a19b77b3602ef5"
  head "https://github.com/lRoMYl/swift-graphql-codegen.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
