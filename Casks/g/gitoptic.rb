cask "gitoptic" do
  version "0.1.0"
  sha256 "d64f424516affcda1e7af00fbbcfe5f56aef8a44ad37d1009586e32ec70af1da"

  url "https://api.douglaslassance.me/gitoptic/download/#{version}/aarch64-apple-darwin",
      verified: "api.douglaslassance.me/gitoptic/"
  name "Gitoptic"
  desc "Visual diffs for binary files in Git"
  homepage "https://github.com/douglaslassance/gitoptic"

  livecheck do
    url "https://api.douglaslassance.me/gitoptic"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Gitoptic.app"

  zap trash: [
    "~/Library/Application Support/dev.gitoptic.app",
    "~/Library/Caches/dev.gitoptic.app",
    "~/Library/Preferences/dev.gitoptic.app.plist",
  ]
end
