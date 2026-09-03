cask "vinny" do
  version "0.2.0"
  sha256 "a750e5a0b0be47a20a97b2080e3bf0b4d7446be31449a448b6cb0b2aa02f5b79"

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
