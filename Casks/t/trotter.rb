cask "trotter" do
  version "0.4.0"
  sha256 "e0013a0a1ebdb6e6f027d105ae4bb49ccdfe088382799bc420b018ad43fdd2a7"

  url "https://api.douglaslassance.me/v1/trotter/download/#{version}/aarch64-apple-darwin"
  name "Trotter"
  desc "Trip mapping"
  homepage "https://douglaslassance.me/trotter"

  livecheck do
    url "https://api.douglaslassance.me/v1/trotter"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Trotter.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.trotter",
    "~/Library/Containers/me.douglaslassance.trotter",
  ]
end
