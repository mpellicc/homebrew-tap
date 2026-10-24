cask "codex-reset-radar" do
  version "0.11.0"
  sha256 "fd034535e224f2d572caf725a24b4af5c49d24571c53e41df81bad42d891abfc"

  url "https://github.com/mpellicc/codex-reset-radar/releases/download/v#{version}/CodexResetRadar.zip"
  name "Codex Reset Radar"
  desc "Menu bar app that notifies you when a Codex usage reset is announced"
  homepage "https://github.com/mpellicc/codex-reset-radar"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app in place from 0.8.0 on, so brew upgrade leaves it alone.
  auto_updates true
  depends_on macos: :ventura

  app "Codex Reset Radar.app"

  uninstall quit: "dev.mpellicc.CodexResetRadar"

  zap trash: [
    "~/Library/Caches/dev.mpellicc.CodexResetRadar",
    "~/Library/HTTPStorages/dev.mpellicc.CodexResetRadar",
    "~/Library/Preferences/dev.mpellicc.CodexResetRadar.plist",
  ]
end
