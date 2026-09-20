cask "rollpaper" do
  version "1.1.1"
  sha256 "bd6cb93b7a7e21f1290549431519159c28b0eb2823d9120563395e2a1f7b650e"

  url "https://api.douglaslassance.me/v1/rollpaper/download/#{version}/aarch64-apple-darwin"
  name "Rollpaper"
  desc "Menu-bar wallpaper rotator"
  homepage "https://douglaslassance.me/rollpaper"

  livecheck do
    url "https://api.douglaslassance.me/v1/rollpaper"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Rollpaper.app"

  zap trash: [
    "~/Library/Application Support/Rollpaper",
    "~/Library/Caches/me.douglaslassance.rollpaper",
    "~/Library/Preferences/me.douglaslassance.rollpaper.plist",
  ]
end
