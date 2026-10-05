cask "nocfree-rmk-companion" do
  version "0.1.3"
  sha256 "c18007e5b70484d2bb393741b27c25eaaad468689bd6cfc45fd2b427581b6f87"

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
