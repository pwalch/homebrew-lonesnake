# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LonesnakeKit < Formula
  desc "configure development environments faster for lonesnake"
  homepage "https://github.com/pwalch/lonesnake"
  url "https://github.com/pwalch/lonesnake/archive/refs/tags/0.27.0.tar.gz"
  sha256 "98017d9860fb17b44e2240730b23970891d805b569ffe12b940daf3c86c04e6b"
  license "GPL-3.0-only"

  depends_on "pwalch/lonesnake/lonesnake"

  def install
    bin.install "lonesnake-kit"
  end
end
