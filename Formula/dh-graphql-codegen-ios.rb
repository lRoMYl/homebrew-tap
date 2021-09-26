class DhGraphqlCodegenIos < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/dh-graphql-codegen-ios"
  url "https://github.com/lRoMYl/dh-graphql-codegen-ios/archive/0.2.00.tar.gz"
  sha256 "614d0d474448b20240e202ee39d0dbde28af01e15be6699587db800036e925d9"
  head "https://github.com/lRoMYl/dh-graphql-codegen-ios.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
