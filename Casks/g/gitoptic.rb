cask "gitoptic" do
  version "0.4.0"
  sha256 "e8a7f1e7ef120b2545be3b11b4053328c7d28e13b0bc11cbe7c07c6e511e96ef"

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
