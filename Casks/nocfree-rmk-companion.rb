cask "nocfree-rmk-companion" do
  version "1.0.2"
  sha256 "d72f58a26d987cbbebef04646efa9086899b92ce24101ff2ead4be88616f6d66"

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
