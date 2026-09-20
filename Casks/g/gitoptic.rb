cask "gitoptic" do
  version "0.3.0"
  sha256 "06ee66d37f59b5050b3f6fb24dca901fe4d12f7e15dee514c3339c6ee8d867ef"

  url "https://api.douglaslassance.me/v1/gitoptic/download/#{version}/aarch64-apple-darwin"
  name "Gitoptic"
  desc "Visual diffs for binary files in Git"
  homepage "https://douglaslassance.me/gitoptic"

  livecheck do
    url "https://api.douglaslassance.me/v1/gitoptic"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Gitoptic.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.gitoptic",
    "~/Library/Caches/me.douglaslassance.gitoptic",
    "~/Library/Preferences/me.douglaslassance.gitoptic.plist",
  ]
end
