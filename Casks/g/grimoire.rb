cask "grimoire" do
  version "0.2.0"
  sha256 "0539b04017ccf9a69909c20606d8bd1848456fd7aabb5e6a170f5e0fed13058b"

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
