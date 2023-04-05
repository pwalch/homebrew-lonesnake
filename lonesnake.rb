# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lonesnake < Formula
  desc "create self-contained Python environments with interpreter and venv in a single directory"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.19.0.tar.gz"
  sha256 "5e522db0c73442ad3679c6f19f705d6b53511ef0aeecc66e6e4cab0b6730d262"
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
