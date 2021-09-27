class DhGraphqlCodegenIos < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/dh-graphql-codegen-ios"
  url "https://github.com/lRoMYl/dh-graphql-codegen-ios/archive/0.2.4.tar.gz"
  sha256 "2245cda99ce669e266e52da5f797ffa6aaf3c41a288045743fca732f9ae2ff4c"
  head "https://github.com/lRoMYl/dh-graphql-codegen-ios.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
