cask "gifted" do
  version "0.3.0"
  sha256 "5132061775053d204f89b508536e5fd212cae6dffeea8b5457a8ae69b571af45"

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
