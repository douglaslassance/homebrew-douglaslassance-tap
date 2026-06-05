cask "trotter" do
  version "0.1.0"
  sha256 "df67f48c59fcd8952892910b0bd8ddc34d7a8973e7e666434e5f1fcdb715bd72"

  url "https://api.douglaslassance.me/trotter/download/#{version}/aarch64-apple-darwin",
      verified: "api.douglaslassance.me/trotter/"
  name "Trotter"
  desc "Trip mapping"
  homepage "https://github.com/douglaslassance/trotter"

  livecheck do
    url "https://api.douglaslassance.me/trotter"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Trotter.app"

  zap trash: [
    "~/Library/Application Scripts/com.douglaslassance.trotter",
    "~/Library/Containers/com.douglaslassance.trotter",
  ]
end
