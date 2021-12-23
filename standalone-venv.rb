# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class StandaloneVenv < Formula
  desc "tool to easily set up a self-contained Python environment with an interpreter and a venv in a '.standalone-venv' directory"
  homepage "https://github.com/pwalch/standalone-venv"
  url "https://github.com/pwalch/standalone-venv/archive/refs/tags/0.2.0.tar.gz"
  sha256 "7302dc68a8fad32f952b39de4d615f8a564e346e4e0074755c275d99e883a487"
  license "GPL-3.0-only"

  depends_on "openssl@3"
  depends_on "readline"
  depends_on "sqlite"
  depends_on "xz"
  depends_on "zlib"

  def install
    bin.install "standalone-venv"
  end
end
