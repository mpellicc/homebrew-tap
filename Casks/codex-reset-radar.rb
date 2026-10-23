cask "codex-reset-radar" do
  version "0.10.2"
  sha256 "2f1a082e1b28b2f4277a1fda49605443d9bfb301bfae3dd89eaec1498ef1a384"

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
