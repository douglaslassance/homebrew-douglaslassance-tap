cask "ramble" do
  version "1.0.1"
  sha256 "8f440ecd78f039d3008d6a60525ab30faed42c20786d1a41c9dff3193a8344f2"

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
