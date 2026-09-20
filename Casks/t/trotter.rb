cask "trotter" do
  version "0.3.0"
  sha256 "1a7924a1e490dc717a8b9f9e466902be62abada90f3ed4526c0121b8e6375d63"

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
