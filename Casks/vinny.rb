cask "vinny" do
  version "0.1.0"
  sha256 "874999a14c6dc1c38efab2d37e424cf5ca55f5b5f33f633a9836df076a255f6c"

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
