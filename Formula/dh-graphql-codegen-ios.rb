class DhGraphqlCodegenIos < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/dh-graphql-codegen-ios"
  url "https://github.com/lRoMYl/dh-graphql-codegen-ios/archive/0.1.14.tar.gz"
  sha256 "a0960be6bd767056be3c9f0b6b0c85a386169b1c4eb2aa111c2775df1ebb3800"
  head "https://github.com/lRoMYl/dh-graphql-codegen-ios.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
