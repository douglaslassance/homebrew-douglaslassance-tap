cask "gifted" do
  version "0.1.0"
  sha256 "069a0fc612622147a81fd3f0a46934423ada7c506dbc68863e7fb2b9ccc4441a"

  url "https://api.douglaslassance.me/gifted/download/#{version}/aarch64-apple-darwin",
      verified: "api.douglaslassance.me/gifted/"
  name "Gifted"
  desc "GIF-based infinite music videos reacting to live audio"
  homepage "https://github.com/douglaslassance/gifted"

  livecheck do
    url "https://api.douglaslassance.me/gifted"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Gifted.app"

  zap trash: [
    "~/Library/Application Support/com.douglaslassance.gifted",
    "~/Library/Caches/com.douglaslassance.gifted",
    "~/Library/Preferences/com.douglaslassance.gifted.plist",
  ]
end
