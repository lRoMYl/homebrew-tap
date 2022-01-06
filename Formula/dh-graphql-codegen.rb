require "formula"
require_relative "../lib/private_strategy"

class DhGraphqlCodegen < Formula
  desc "Swift GraphQL Code Generator"
  homepage "https://github.com/lRoMYl/dh-graphql-codegen-ios"
  url "https://github.com/lRoMYl/dh-graphql-codegen-ios/archive/0.5.3.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c2037f4f06f5d0af6142ae9389a158d68655fea0baa4cb074566051ed574bd43"
  head "https://github.com/lRoMYl/dh-graphql-codegen-ios.git"

  depends_on :xcode => :build
  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
