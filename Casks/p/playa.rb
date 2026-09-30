cask "playa" do
  version "1.5.0"
  sha256 "4044eefaa9715b4639de151cce9c142b6f777fb6198da4138a33a1621ece1795"

  url "https://api.douglaslassance.me/v1/playa/download/#{version}/aarch64-apple-darwin"
  name "Playa"
  desc "Play your own music"
  homepage "https://douglaslassance.me/playa"

  livecheck do
    url "https://api.douglaslassance.me/v1/playa"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :tahoe

  app "Playa.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.playa",
    "~/Library/Containers/me.douglaslassance.playa",
  ]
end
