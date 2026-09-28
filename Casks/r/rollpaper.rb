cask "rollpaper" do
  version "1.3.0"
  sha256 "909ec424baf4f6af0d77ad756432d5d7e23bb40ed9ac3d6f94ab8dbb9b573100"

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
