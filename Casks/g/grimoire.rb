cask "grimoire" do
  version "0.1.0"
  sha256 "353d0f6c291d84305b3ba4b8bb18fafa33fdefb97a829f74110950380533d3c6"

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
