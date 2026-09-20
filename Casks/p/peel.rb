cask "peel" do
  version "1.3.1"
  sha256 "4f8a720e20fe6e205a10bdef374babf2b982e569da04be8d511e811cb0fadf2e"

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
