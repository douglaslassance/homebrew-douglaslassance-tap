cask "playa" do
  version "0.2.0"
  sha256 "3af394137c1eab6c8341c9269c237ebea99b9be0b67f44b5abd2828bc8b5bbd3"

  url "https://api.douglaslassance.me/playa/download/#{version}/aarch64-apple-darwin"
  name "Playa"
  desc "Play your own music"
  homepage "https://douglaslassance.me/playa"

  livecheck do
    url "https://api.douglaslassance.me/playa"
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
