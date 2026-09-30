cask "rollpaper" do
  version "1.4.0"
  sha256 "046c9f8be314b0c6d708fd095b198ee5447f9bb38c22bda64e9f3d6ba760d531"

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
