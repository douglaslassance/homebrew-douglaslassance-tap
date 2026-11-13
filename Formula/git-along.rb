class GitAlong < Formula
  desc "Keep your team in sync on what's being worked on across Git clones"
  homepage "https://github.com/douglaslassance/git-along"
  # Top-level URL is the Apple Silicon binary — the default and the URL
  # brew readall uses on every platform context (satisfying its
  # "formula requires a URL" check). depends_on :macos prevents actual
  # installation on Linux. on_macos > on_intel overrides for Intel macOS.
  url "https://github.com/douglaslassance/git-along/releases/download/1.0.0/git-along-1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "c602e4ae42bfb2e20a88c5ada2d86a3400453f6141e67a245444f98c5a0a25f9"
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
      sha256 "c5c0102e318712f9e334692d344d6d66692a78f7fc188ede2b29ff5fc2f264d7"
    end
  end

  def install
    bin.install "git-along"
  end

  test do
    assert_match "git-along version", shell_output("#{bin}/git-along version")
  end
end
