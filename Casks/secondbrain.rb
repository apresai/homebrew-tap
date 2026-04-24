cask "secondbrain" do
  version "0.4.0"
  sha256 "49da1d5c6e867a1be30a9f201c2674a09e5765f7681f2aa4ae21ef7b3b1766ea"

  url "https://github.com/apresai/2ndbrain/releases/download/v#{version}/SecondBrain-#{version}-arm64.zip"
  name "SecondBrain"
  desc "AI-native markdown knowledge base editor"
  homepage "https://github.com/apresai/2ndbrain"

  depends_on formula: "apresai/tap/twonb"

  app "SecondBrain.app"

  caveats <<~EOS
    On first launch, macOS will block the app because it is not notarized.
    Right-click SecondBrain.app and choose "Open" to bypass the warning.
  EOS
end
