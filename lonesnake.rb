class Lonesnake < Formula
  desc "self-contained Python environments with a single command"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.40.0.tar.gz"
  sha256 "6cdbdc2c4e184331b7cc7604efa7d9b084f532d274f555da432531bf9bb7a519"
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
