cask "gifted" do
  version "0.2.0"
  sha256 "43905d740ebbbecb274c2d4abef936bdf592ddb5d7b7eb3ebeaad9a2ba6a08ed"

  url "https://api.douglaslassance.me/gifted/download/#{version}/aarch64-apple-darwin"
  name "Gifted"
  desc "GIF-based infinite music videos reacting to live audio"
  homepage "https://douglaslassance.me/gifted"

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
