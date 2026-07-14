cask "peel" do
  version "1.2.0"
  sha256 "80c252b551748aba9cc189f8b209d7410a7f1888d51d65a02d701529a4b642e6"

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
