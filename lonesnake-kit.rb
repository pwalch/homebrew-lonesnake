# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LonesnakeKit < Formula
  desc "configure development environments faster for lonesnake"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.28.1.tar.gz"
  sha256 "fc887e013becbc9d48eb8ae92979afe09607d1aa6b65426f53846f11f97b0ad5"
  license "GPL-3.0-only"

  depends_on "pwalch/lonesnake/lonesnake"

  def install
    bin.install "lonesnake-kit"
  end
end
