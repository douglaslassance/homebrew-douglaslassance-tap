cask "peel" do
  version "1.4.0"
  sha256 "bc33dd58398b8ebf34ac7c658322c96ba3e03f9a29150037e9c4efe7dfae0832"

  url "https://api.douglaslassance.me/v1/peel/download/#{version}/aarch64-apple-darwin"
  name "Peel"
  desc "Leverageable tagging"
  homepage "https://douglaslassance.me/peel"

  livecheck do
    url "https://api.douglaslassance.me/v1/peel"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Peel.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.peel",
    "~/Library/Containers/me.douglaslassance.peel",
  ]
end
