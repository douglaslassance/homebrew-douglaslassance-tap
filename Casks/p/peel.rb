cask "peel" do
  version "1.1.2"
  sha256 "ec1e12f43ca80f41b4263c762e62d8c6da7f58ae6911ce288ae9509c6fdd7376"

  url "https://api.douglaslassance.me/peel/download/#{version}"
  name "Peel"
  desc "Browse different"
  homepage "https://peel.douglaslassance.me/"

  livecheck do
    url "https://api.douglaslassance.me/peel"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: ">= :ventura"

  app "Peel.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.peel",
    "~/Library/Containers/me.douglaslassance.peel",
  ]
end
