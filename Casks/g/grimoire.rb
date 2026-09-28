cask "grimoire" do
  version "0.4.0"
  sha256 "e7bcce3212db2a68785d42e226724c70516c5278005cf2ff730b8f17b2389a17"

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
