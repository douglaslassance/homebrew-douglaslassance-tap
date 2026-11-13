class GitAlong < Formula
  desc "Keep your team in sync on what's being worked on across Git clones"
  homepage "https://github.com/douglaslassance/git-along"
  # Top-level URL is the Apple Silicon binary — the default and the URL
  # brew readall uses on every platform context (satisfying its
  # "formula requires a URL" check). depends_on :macos prevents actual
  # installation on Linux. on_macos > on_intel overrides for Intel macOS.
  url "https://github.com/douglaslassance/git-along/releases/download/1.0.0/git-along-1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "8d0bba2f1523845a791aa34be6131a2e3cedb10ed82f4c567b54e0afc32b8634"
  license "MIT"
  # Restarted at 1.0.0 when Gitalong became Git Along, so gitalong 1.1.0 still upgrades.
  version_scheme 1

  livecheck do
    url :stable
    strategy :github_latest
  end

  # macOS-only on Homebrew. Linux users install with `cargo install --git`.
  depends_on :macos

  on_macos do
    on_intel do
      url "https://github.com/douglaslassance/git-along/releases/download/1.0.0/git-along-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "47f008aadb76171aaf1d530c85a5e6a6ddb88570212b8d5724b0c57a009de81b"
    end
  end

  def install
    bin.install "git-along"
  end

  test do
    assert_match "git-along version", shell_output("#{bin}/git-along version")
  end
end
