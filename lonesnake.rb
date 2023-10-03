# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lonesnake < Formula
  desc "self-contained Python environments with a single command"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.24.0.tar.gz"
  sha256 "7d9901eefd37d27c9f99b8533a1f8803de3be0b1bae91b9fd26fb4b80856b5f9"
  license "GPL-3.0-only"

  depends_on "openssl@3"
  depends_on "readline"
  depends_on "sqlite"
  depends_on "xz"
  depends_on "zlib"

  def install
    bin.install "lonesnake"
  end
end
