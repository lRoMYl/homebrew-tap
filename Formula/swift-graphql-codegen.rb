class SwiftGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/swift-graphql-codegen"
  url "https://github.com/lRoMYl/swift-graphql-codegen/archive/alpha-0.10.2.tar.gz"
  sha256 "70c4fe4dccd0d5a4df8222621367b9f375a9ec84acbfdd1110cc96868ff0060d"
  head "https://github.com/lRoMYl/swift-graphql-codegen.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
