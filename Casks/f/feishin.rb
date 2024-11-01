cask "feishin" do
  version "0.11.1"

  arch arm: "arm", intel: "x86"

  sha256 arm:   "330d1ff73da10423c3b458a2a525b270375a8349a2cd9346ec90ed729dce4b06",
          intel: "5e1a5f2e6c48e771443e2a0a5c8c34c641b8643244ce9c678d5d08016645755b"

  url "https://github.com/jeffvli/feishin/releases/download/v#{version}/Feishin-#{version}-mac-#{arch}.dmg",
      verified: "github.com/jeffvli/feishin/"
  name "Feishin"
  desc "A modern self-hosted music player"
  homepage "https://feishin.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # depends_on macos: ">= :catalina"

  app "Feishin.app"

  zap trash: [
    "~/Library/Application Support/feishin",
    "~/Library/Logs/feishin",
    "~/Library/Preferences/org.jeffvli.feishin.plist",
    "~/Library/Saved Application State/org.jeffvli.feishin.savedState",
  ]
end