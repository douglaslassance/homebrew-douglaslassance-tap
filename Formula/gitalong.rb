class Gitalong < Formula
  desc "Keep your team in sync on what's being worked on across Git clones"
  homepage "https://github.com/douglaslassance/gitalong"
  # Top-level URL is the Apple Silicon binary — the default and the URL
  # brew readall uses on every platform context (satisfying its
  # "formula requires a URL" check). depends_on :macos prevents actual
  # installation on Linux. on_macos > on_intel overrides for Intel macOS.
  url "https://github.com/douglaslassance/gitalong/releases/download/1.1.0/gitalong-1.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "5a914b29de353d62cfe338252f6866a02535e876a2f7e52f14247f8545817aa0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  # macOS-only on Homebrew. Linux users `cargo install gitalong` instead.
  depends_on :macos

  on_macos do
    on_intel do
      url "https://github.com/douglaslassance/gitalong/releases/download/1.1.0/gitalong-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f525ae6fac6b8cadcf6c4d3236d01ef8d6b16d5a4b653adc640faf2d8c35de4a"
    end
  end

  def install
    bin.install "gitalong"
  end

  test do
    assert_match "gitalong version", shell_output("#{bin}/gitalong version")
  end
end
