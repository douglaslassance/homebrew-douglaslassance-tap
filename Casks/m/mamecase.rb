cask "mamecase" do
  version "0.5.0"
  sha256 "f04783e468d70ea40126509048a3b8175a2424fbd79aa2aff34b163ee8912585"

  url "https://api.douglaslassance.me/v1/mamecase/download/#{version}/aarch64-apple-darwin"
  name "Mamecase"
  desc "MAME front-end"
  homepage "https://douglaslassance.me/mamecase"

  livecheck do
    url "https://api.douglaslassance.me/v1/mamecase"
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
