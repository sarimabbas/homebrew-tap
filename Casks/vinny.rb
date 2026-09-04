cask "vinny" do
  version "0.2.1"
  sha256 "bb96204599d24de1c3855955cd54442a8f3938a7fb0dbac31d9dc4d43e1c177b"

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
