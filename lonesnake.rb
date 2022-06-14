# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lonesnake < Formula
  desc "create self-contained Python environments with interpreter and venv in a single directory"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.11.0.tar.gz"
  sha256 "18c353ca972afb9e236001b04bc014800cad38464b0ee9cc9a3194a895d1c916"
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
