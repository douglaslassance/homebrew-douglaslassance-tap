cask "rollpaper" do
  version "1.0.0"
  sha256 "dae333ce132571eae129c0a1f14c9cc888c45e9757c9ff79d2b48148c73a8b75"

  url "https://api.douglaslassance.me/rollpaper/download/#{version}/aarch64-apple-darwin"
  name "Rollpaper"
  desc "Menu-bar wallpaper rotator"
  homepage "https://github.com/douglaslassance/rollpaper"

  livecheck do
    url "https://api.douglaslassance.me/rollpaper"
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
