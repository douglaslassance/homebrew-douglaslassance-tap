cask "peel" do
  version "1.1.3"
  sha256 "539097aa742d85197119c7e754bd28156c21b8c5aba5a5da1e9d1f2bb6e3ef4a"

  url "https://api.douglaslassance.me/peel/download/#{version}/aarch64-apple-darwin"
  name "Peel"
  desc "Browse different"
  homepage "https://peel.douglaslassance.me/"

  livecheck do
    url "https://api.douglaslassance.me/peel"
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
