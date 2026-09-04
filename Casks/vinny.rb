cask "vinny" do
  version "0.2.3"
  sha256 "3307c3f94d7c1a91e20bc29d06d2823d4c281721b76ffe0ebd07f120441cc8f6"

  url "https://github.com/sarimabbas/vinny/releases/download/v#{version}/vinny-#{version}-macos-arm64.zip"
  name "Vinny"
  desc "Native VNC server"
  homepage "https://github.com/sarimabbas/vinny"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Vinny.app"

  zap trash: "~/Library/Preferences/run.lil.vinny.plist"
end
