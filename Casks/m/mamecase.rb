cask "mamecase" do
  version "0.3.0"
  sha256 "f7d3806b78f9fee8a84c685b48254b3693264301451f76201e9ea3061ba9bdd9"

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
