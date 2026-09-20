cask "ramble" do
  version "1.0.0"
  sha256 "0de15dca41f2a3f5d10ae539a78ffa42702c8a8b2d2db2f180f0e427c36658eb"

  url "https://api.douglaslassance.me/v1/ramble/download/#{version}/aarch64-apple-darwin"
  name "Ramble"
  desc "Cross-post with ease"
  homepage "https://douglaslassance.me/ramble"

  livecheck do
    url "https://api.douglaslassance.me/v1/ramble"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Ramble.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.ramble",
    "~/Library/Caches/me.douglaslassance.ramble",
    "~/Library/Preferences/me.douglaslassance.ramble.plist",
  ]
end
