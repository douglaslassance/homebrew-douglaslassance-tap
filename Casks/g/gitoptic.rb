cask "gitoptic" do
  version "0.2.0"
  sha256 "fabfab4682af000fe14f652d27614706f824384055ede7d4e5d684f59bc354c4"

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
