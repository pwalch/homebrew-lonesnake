# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LonesnakeKit < Formula
  desc "configure development environments faster for lonesnake"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.28.0.tar.gz"
  sha256 "1e6fd8b22b2d02ffe3c28c065c0ba329df8c1242c18565cb65aae80f6e791849"
  license "GPL-3.0-only"

  depends_on "pwalch/lonesnake/lonesnake"

  def install
    bin.install "lonesnake-kit"
  end
end
