cask "rollpaper" do
  version "1.2.0"
  sha256 "d6e8b8f78bdb7d55dd295228d5d99371f434dc9f003b90bdeee02ea1481714c7"

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
