cask "mamecase" do
  version "0.4.0"
  sha256 "820e52a99342597dacbf42fc43b5b461099abad1922c4d749fc118f0e3a847d7"

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
