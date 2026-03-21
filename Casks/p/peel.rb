cask "peel" do
  version "1.1.0"
  sha256 "a1a4e3d09118f99a399351506ad8292402fa11365eb6c4bf5b9d2870798c3c23"

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
