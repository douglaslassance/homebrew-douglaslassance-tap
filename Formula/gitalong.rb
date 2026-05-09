class Gitalong < Formula
  desc "Keep your team in sync on what's being worked on across Git clones"
  homepage "https://github.com/douglaslassance/gitalong"
  # Top-level URL is the Apple Silicon binary — the default and the URL
  # brew readall uses on every platform context (satisfying its
  # "formula requires a URL" check). depends_on :macos prevents actual
  # installation on Linux. on_macos > on_intel overrides for Intel macOS.
  url "https://github.com/douglaslassance/gitalong/releases/download/1.0.0/gitalong-1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "4535b171a8d10aeedac404d840114188eb8dd5883d96ad3d730aa23822b51fc4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  # macOS-only on Homebrew. Linux users `cargo install gitalong` instead.
  depends_on :macos

  on_macos do
    on_intel do
      url "https://github.com/douglaslassance/gitalong/releases/download/1.0.0/gitalong-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8f586491f0537e9fa8369a61111eaf72d5fe333c16e966d1d381df60f75cf4c"
    end
  end

  def install
    bin.install "gitalong"
  end

  test do
    assert_match "gitalong version", shell_output("#{bin}/gitalong version")
  end
end
