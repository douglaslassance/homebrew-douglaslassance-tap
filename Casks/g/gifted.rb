cask "gifted" do
  version "0.4.0"
  sha256 "c2764a27b48b1019fa08cb2dab29db21512b1af69ffc38e8147c159be6f39bb5"

  url "https://api.douglaslassance.me/v1/gifted/download/#{version}/aarch64-apple-darwin"
  name "Gifted"
  desc "GIF-based infinite music videos reacting to live audio"
  homepage "https://douglaslassance.me/gifted"

  livecheck do
    url "https://api.douglaslassance.me/v1/gifted"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Gifted.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.gifted",
    "~/Library/Caches/me.douglaslassance.gifted",
    "~/Library/Preferences/me.douglaslassance.gifted.plist",
  ]
end
