cask "playa" do
  version "1.3.1"
  sha256 "bd5dbdfcfa583ca77ea3da85c992616bcb4337450e388b37ba615b90c358ea26"

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
