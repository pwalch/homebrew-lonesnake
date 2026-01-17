class Lonesnake < Formula
  desc "self-contained Python environments with a single command"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/1.2.0.tar.gz"
  sha256 "fe77181f92ba296c7bd15b564476c2be90954bf98590d1026742bbc43a6dfd56"
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
