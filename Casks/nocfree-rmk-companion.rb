cask "nocfree-rmk-companion" do
  version "1.0.1"
  sha256 "86eea374977f391bac3b6ac56d60f44cd9705142161b4c04174fa41c2c8cf1c3"

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
