cask "trotter" do
  version "0.2.0"
  sha256 "ae1c4db518f66bd6af25c45e937ea45a001d0df72c9571c56299df468bb73b20"

  url "https://api.douglaslassance.me/trotter/download/#{version}/aarch64-apple-darwin"
  name "Trotter"
  desc "Trip mapping"
  homepage "https://douglaslassance.me/trotter"

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
