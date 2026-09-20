cask "rollpaper" do
  version "1.1.0"
  sha256 "071d8ce3890d2026449bf6017ade7071bba5a8f9bfd742ce9cd75ab74ff58013"

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
