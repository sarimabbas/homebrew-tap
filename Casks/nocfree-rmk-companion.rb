cask "nocfree-rmk-companion" do
  version "1.0.3"
  sha256 "81876e0f2b5d5bbeabfb7228b78435e14dce80dab454dad73735fa92863bcc37"

  url "https://github.com/sarimabbas/nocfree-and-rmk/releases/download/v#{version}/nocfree-rmk-companion-#{version}-macos-arm64.zip"
  name "NocFree RMK Companion"
  desc "Set up and restore NocFree keyboards"
  homepage "https://github.com/sarimabbas/nocfree-and-rmk"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "NocFree RMK Companion.app"

  # Keep factory backups when the app is removed.
  zap trash: "~/Library/Logs/NocFree RMK Companion"
end
