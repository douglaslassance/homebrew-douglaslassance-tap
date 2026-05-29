cask "mamecase" do
  version "0.1.0"
  sha256 "cd552ee66d447ff94e895c171bed63d759586c405987158fb7746a91c6c50950"

  url "https://api.douglaslassance.me/mamecase/download/#{version}/aarch64-apple-darwin"
  name "Mamecase"
  desc "MAME front-end"
  homepage "https://mamecase.douglaslassance.me/"

  livecheck do
    url "https://api.douglaslassance.me/mamecase"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :sonoma

  app "Mamecase.app"

  zap trash: [
    "~/Library/Application Support/Mamecase",
    "~/Library/Caches/Mamecase",
    "~/Library/Preferences/me.douglaslassance.mamecase.plist",
  ]
end
