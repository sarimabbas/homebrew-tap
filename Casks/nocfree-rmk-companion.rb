cask "nocfree-rmk-companion" do
  version "0.1.2"
  sha256 "26f0f5decc4926a1768724cbe5de23242dae6124ce7e73433cba06500740f304"

  url "https://github.com/sarimabbas/nocfree-and-rmk/releases/download/v#{version}/nocfree-rmk-companion-#{version}-macos-arm64.zip"
  name "NocFree RMK Companion"
  desc "Set up and restore NocFree keyboards"
  homepage "https://github.com/sarimabbas/nocfree-and-rmk"

  livecheck do
    skip "Early release; versions are reviewed before updating this cask"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "NocFree RMK Companion.app"

  # Keep factory backups when the app is removed.
  zap trash: "~/Library/Logs/NocFree RMK Companion"
end
