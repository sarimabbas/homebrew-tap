cask "vinny" do
  version "0.2.4"
  sha256 "c01ac8feb74e88c726dce5dd044efb5d60e89b95a6f5c16fdab0ba0d6f4d6478"

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
