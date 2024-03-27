# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LonesnakeKit < Formula
  desc "configure development environments faster for lonesnake"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.30.0.tar.gz"
  sha256 "bbdb9211b37ad0faa6e153532524703a35aab2ccfde0af3f6feecaff9fbfcf50"
  license "GPL-3.0-only"

  depends_on "pwalch/lonesnake/lonesnake"

  def install
    bin.install "lonesnake-kit"
  end
end
