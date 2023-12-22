# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LonesnakeKit < Formula
  desc "configure development environments faster for lonesnake"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.28.2.tar.gz"
  sha256 "481e849758051e5faf452803a76433e85969a727d379b0492fa20a146823e95f"
  license "GPL-3.0-only"

  depends_on "pwalch/lonesnake/lonesnake"

  def install
    bin.install "lonesnake-kit"
  end
end
