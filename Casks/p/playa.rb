cask "playa" do
  version "1.3.2"
  sha256 "644de16f3963f5ecfd9e97351fccb8ec93e7b8a5f4f93b2b95c8a17758865566"

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
