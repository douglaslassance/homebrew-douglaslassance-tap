cask "peel" do
  version "1.3.0"
  sha256 "ae5c58418dce2bdf6a510351d8a2e0ed4d042b9d7836c4a4df4715bd08fefa7f"

  url "https://api.douglaslassance.me/v1/peel/download/#{version}/aarch64-apple-darwin"
  name "Peel"
  desc "Browse different"
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
