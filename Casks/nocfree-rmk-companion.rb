cask "nocfree-rmk-companion" do
  version "0.1.4"
  sha256 "791f763568740a2ab98ec4c77d5b73ba79efdb5d7dcb15f8f2e502eb053dfb7a"

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
