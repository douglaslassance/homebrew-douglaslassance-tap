cask "ramble" do
  version "1.1.0"
  sha256 "c76fc262098e146c690b072472492981262a63e6fed11ce83fab664991e3c1a0"

  url "https://api.douglaslassance.me/v1/ramble/download/#{version}/aarch64-apple-darwin"
  name "Ramble"
  desc "Cross-post with ease"
  homepage "https://douglaslassance.me/ramble"

  livecheck do
    url "https://api.douglaslassance.me/v1/ramble"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Ramble.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.ramble",
    "~/Library/Caches/me.douglaslassance.ramble",
    "~/Library/Preferences/me.douglaslassance.ramble.plist",
  ]
end
