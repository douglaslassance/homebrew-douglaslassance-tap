cask "mamecase" do
  version "0.2.0"
  sha256 "ccb78ef2cfa2cd1723034ffc064343014f45ec07d6680e22fea6a32b51bd46ee"

  url "https://api.douglaslassance.me/mamecase/download/#{version}/aarch64-apple-darwin"
  name "Mamecase"
  desc "MAME front-end"
  homepage "https://mamecase.douglaslassance.me/"

  livecheck do
    url "https://api.douglaslassance.me/mamecase"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Mamecase.app"

  zap trash: [
    "~/Library/Application Support/Mamecase",
    "~/Library/Caches/Mamecase",
    "~/Library/Preferences/me.douglaslassance.mamecase.plist",
  ]
end
