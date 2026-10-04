cask "gamecase" do
  version "1.0.0"
  sha256 "5bfb03654e43fc179ea226e9aa82e77b336c9a24ec750a8e41787adb190db467"

  url "https://api.douglaslassance.me/v1/gamecase/download/#{version}/aarch64-apple-darwin"
  name "Gamecase"
  desc "MAME front-end"
  homepage "https://playsthetic.com/"

  livecheck do
    url "https://api.douglaslassance.me/v1/gamecase"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Gamecase.app"

  zap trash: [
    "~/Library/Application Support/Gamecase",
    "~/Library/Caches/Gamecase",
    "~/Library/Preferences/me.douglaslassance.mamecase.plist",
  ]
end
