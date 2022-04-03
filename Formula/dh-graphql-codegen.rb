require_relative "../lib/private_strategy"

class DhGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/dh-graphql-codegen-ios"
  url "https://github.com/lRoMYl/dh-graphql-codegen-ios/archive/0.6.0.tar.gz", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "d8d66406cd1adf72924aa04749c57237ee56f0ef63d04d4dda00ae1a03a4cb42"
  head "https://github.com/lRoMYl/dh-graphql-codegen-ios.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
