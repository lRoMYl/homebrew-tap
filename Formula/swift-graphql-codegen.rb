class SwiftGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/swift-graphql-codegen"
  url "https://github.com/lRoMYl/swift-graphql-codegen/archive/0.8.3.tar.gz"
  sha256 "d02db93342b82aff32a8bf03b2ad638ee0fc7d6e73a2084ee339ddd10065aa33"
  head "https://github.com/lRoMYl/swift-graphql-codegen.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
