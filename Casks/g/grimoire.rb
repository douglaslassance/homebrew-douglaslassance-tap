cask "grimoire" do
  version "0.3.0"
  sha256 "2549a9b67acc3caba341b9f04a859d81e334b0ff30bf5aaef47e41f363c01b78"

  url "https://api.douglaslassance.me/v1/grimoire/download/#{version}/aarch64-apple-darwin"
  name "Grimoire"
  desc "Read the comics you already own"
  homepage "https://douglaslassance.me/grimoire"

  livecheck do
    url "https://api.douglaslassance.me/v1/grimoire"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :tahoe

  app "Grimoire.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.grimoire",
    "~/Library/Containers/me.douglaslassance.grimoire",
  ]
end
